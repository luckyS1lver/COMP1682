<form class="form-horizontal" method="POST" enctype="multipart/form-data" action="">
    @csrf
    <div class="form-group">
        <label for="inputName" class="col-sm-2 control-label">Họ tên <sup class="text-danger">(*)</sup></label>
        <div class="col-sm-10">
            <input type="name" class="form-control" name="name" placeholder="Họ tên" value="{{ old('name', isset($admin->name) ? $admin->name : '') }}" required>
            @if ($errors->first('name'))
                <span class="text-danger">{{ $errors->first('name') }}</span>
            @endif
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail" class="col-sm-2 control-label">Email <sup class="text-danger">(*)</sup></label>
        <div class="col-sm-10">
            <input type="email" class="form-control" name="email"  placeholder="Email" value="{{ old('email', isset($admin->email) ? $admin->email : '') }}" required>
            @if ($errors->first('email'))
                <span class="text-danger">{{ $errors->first('email') }}</span>
            @endif
        </div>
    </div>
    <div class="form-group">
        <label for="inputName" class="col-sm-2 control-label">Phone <sup class="text-danger">(*)</sup></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="phone" placeholder="Phone" value="{{ old('phone', isset($admin->phone) ? $admin->phone : '') }}" required>
            @if ($errors->first('phone'))
                <span class="text-danger">{{ $errors->first('phone') }}</span>
            @endif
        </div>
    </div>
    <div class="form-group">
        <label for="inputName" class="col-sm-2 control-label">Địa chỉ</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="address" placeholder="Nhập địa chỉ cá nhân" value="{{ old('address', isset($admin->address) ? $admin->address : '') }}">
        </div>
    </div>
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label">Mật khẩu @if (!isset($admin)) <sup class="text-danger">(*)</sup> @else (Nhập mật khẩu để thực hiện update) @endif</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name="password" placeholder="Mật khẩu">
            @if ($errors->first('phone'))
                <span class="text-danger">{{ $errors->first('password') }}</span>
            @endif
        </div>
    </div>
    <!-- <div class="form-group {{ $errors->first('role') ? 'has-error' : '' }}">
        <label class="control-label col-sm-2">Chọn Vai Trò <sup class="text-danger">(*)</sup></label>
        <div class="col-sm-10">
            <select name="role" class="form-control ">
                @foreach($roles as $key => $role)
                    <option value="{{ $key }}" {{ (old('role', isset($admin->role) ? $admin->role : '') == $key) ? "selected='selected'" : "" }}>
                        {{  $role }}
                    </option>
                @endforeach
            </select>
            @if ($errors->first('role'))
                <span class="text-danger">{{ $errors->first('role') }}</span>
            @endif
        </div>
    </div> -->
    <div class="form-group">
        <label for="inputName" class="col-sm-2 control-label">Ảnh đại diện</label>
        <div class="col-sm-10">
            <input type="file" class="form-control" name="avatar" >
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" value="{{ isset($admin) ? 'update' : 'create' }}" name="submit" class="btn btn-danger">Lưu dữ liệu</button>
        </div>
    </div>
</form>