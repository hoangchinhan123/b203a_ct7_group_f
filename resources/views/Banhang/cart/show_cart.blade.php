@extends("Banhang.master")
@section("content")
<section id="cart_items">
    <div class="table-responsive cart_info">
        <?php
        $content = Cart::content();

        ?>
        @foreach($content as $v_content)
        <div>
            <div class='row' style="width: 100%;margin: 0;padding:10px;">
                <div class="col-md-2">
                    <a href=""><img src="{{URL::to('uploads/product/'.$v_content->options->image)}}" width="50" alt=""></a>
                </div>
                <div class="col-md-10" style="display: flex;justify-content: space-between;">
                    <div>
                        <h4 style="color: #111111;"><a href="">{{$v_content->name}}</a></h4>
                        <div class="cart_quantity_button">
                            <form action="{{URL::to('update-cart-quantity')}}" method="post">
                                {{ csrf_field()}}
                                <input class="cart_quantity_input" type="text" name="cart_quantity" value="{{$v_content->qty}}" autocomplete="off" size="2">
                                <input type="hidden" value="{{$v_content->rowId}}" name="rowId_cart" class="form-control">
                                <input type="submit" value="Cập nhật" name="update_qty" class="btn btn-default btn-sm">
                            </form>
                        </div>
                    </div>
                    <div>
                        <p class="cart_total_price" style="color: #111111;">
                            <?php
                            $subtotal  = $v_content->price * $v_content->qty;
                            echo number_format($subtotal) . '' . 'vnđ';
                            ?>
                        </p>

                        <a class="cart_quantity_delete" href="{{URL::to('delete-to-cart/'.$v_content->rowId)}}"><i class="fa fa-times"></i> Remove</a>
                    </div>
                </div>
            </div>
            <!--/#cart_items-->

            <section id="do_action">
                <div class="">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="total_area" style="background: #e6e4df;">
                                <ul>
                                    <li style="color: #111111;font-size: 18px;font-weight: 500;">Tổng tiền <span>{{Cart::total().''.' vnđ'}}</span></li>
                                </ul>
                                {{-- <a class="btn btn-default update" href="">Update</a> --}}
                                <?php
                                $customer_id = Session::get('customer_id');
                                if ($customer_id != NULL) {
                                ?>

                                    <a class="btn btn-default check_out" href="{{URL::to('checkout')}}" style="background: black;color: white;">Mua hàng</a>
                                <?php
                                } else {
                                ?>

                                    <a class="btn btn-default check_out" href="{{URL::to('login-checkout')}}" style="background: black;color: white;">Mua hàng</a>
                                <?php
                                }
                                ?>

                            </div>
                        </div>
                    </div>
            </section>
        </div>
        @endforeach
    </div>
    </div>
</section>
@endsection
