@extends("Banhang.master")
@section("content")
<section id="form" style="margin: 0;">
    <!--form-->
    <div class="row">
        <div class="col-sm-4 col-sm-offset-1">
            <div class="login-form">
                <!--login form-->
                <h2>Đăng nhập</h2>
                <form action="{{URL::to('/login-customer')}}" method="POST">
                    {{csrf_field()}}
                    <input type="text" name="email_account" placeholder="Tài khoản" />
                    <input type="password" name="password_account" placeholder="Password" />
                    <button type="submit" class="btn btn-default">Đăng nhập</button>
                </form>
            </div>
            <!--/login form-->
        </div>
        <div class="col-sm-1">
        </div>
        <div class="col-sm-4">
            <div class="signup-form">
                <!--sign up form-->
                <h2>Đăng ký</h2>
                <form action="{{URL::to('/add-customer')}}" method="POST">
                    {{ csrf_field() }}
                    <input type="text" name="customer_name" placeholder="Họ và tên" />
                    <input type="email" name="customer_email" placeholder="Địa chỉ email" />
                    <input type="password" name="customer_password" placeholder="Mật khẩu" />
                    <button type="submit" class="btn btn-default">Đăng ký</button>
                </form>
            </div>
            <!--/sign up form-->
        </div>
    </div>

</section>
<!- @endsection
