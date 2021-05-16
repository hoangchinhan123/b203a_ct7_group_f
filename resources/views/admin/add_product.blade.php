  @extends('Banhang.admin_layout')
  @section('admin_content')
  <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm sản phẩm
                        </header>
                            <?php
                                    $message = Session::get('message');
                                        if($message)
                                                {
                                        echo '<span class="text-alert ">',$message,'</span>';
                                        Session::put('message',null);
                                        }
                                        ?>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form" action="{{URL::to('save-product')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field()}}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                                    <input type="text" name="product_name" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Giá sản phẩm</label>
                                    <input type="text" name="product_price" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Hình ảnh sản phẩm</label>
                                    <input type="file" name="product_image" class="form-control" id="exampleInputEmail1" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                                    <textarea style="resize: none" rows="5" class="form-control" name="product_desc" id="exampleInputPassword1" placeholder="Mô tả sản phẩm"></textarea>
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputPassword1">Nội dung sản phẩm</label>
                                    <textarea style="resize: none" rows="5" class="form-control" name="product_content" id="exampleInputPassword1" placeholder="Nội dung sản phẩm"></textarea>
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Danh mục sản phẩm</label>
                                    <select  name="product_cate" class="form-control input-sm m-bot15">
                                         @foreach($cate_product as $key => $cate)
                                            <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1">Thương hiệu sản phẩm</label>
                                    <select  name="product_brand" class="form-control input-sm m-bot15">
                                      @foreach($brand_product as $key => $brand)
                                            <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Hiện thị</label>
                                    <select  name="product_status" class="form-control input-sm m-bot15">
                                        <option value="0">hiện </option>
                                    <option value="1">ẩn</option>
                                    </select>
                                </div>
                                
                                <button type="submit" name="add_product"  class="btn btn-info">Thêm sản phẩm</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
            @endsection