  @extends('Banhang.admin_layout')
  @section('admin_content')
  <div class="row">
      <div class="col-lg-12">
          <section class="panel">
              <header class="panel-heading">
                  Thêm Thương hiệu sản phẩm
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
                      <form role="form" action="{{URL::to('save-brand-product')}}" method="post">
                          {{ csrf_field()}}
                          <div class="form-group">
                              <label for="exampleInputEmail1">Tên Thương hiệu</label>
                              <input type="text" name="brand_product_name" class="form-control" id="exampleInputEmail1"
                                  placeholder="Enter email">
                          </div>
                          <div class="form-group">
                              <label for="exampleInputPassword1">Mô tả Thương hiệu</label>
                              <textarea style="resize: none" rows="5" class="form-control" name="brand_product_desc"
                                  id="exampleInputPassword1" placeholder="Mô tả sản phẩm"></textarea>
                          </div>
                          <div class="form-group">
                              <label for="exampleInputPassword1">Hiện thị</label>
                              <select name="brand_product_status" class="form-control input-sm m-bot15">
                                  <option value="0">hiện </option>
                                  <option value="1">ẩn</option>
                              </select>
                          </div>

                          <button type="submit" name="add_category_product" class="btn btn-info">Thêm Thương
                              hiệu</button>
                      </form>
                  </div>

              </div>
          </section>

      </div>
      @endsection