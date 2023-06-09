@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Cập nhật mới menu</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.menu.index') }}"> Menu</a></li>
            <li class="active"> Update</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('mn_name') ? 'has-error' : '' }}">
                                <label for="name">Tên <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ $menu->mn_name }}" name="mn_name"  placeholder="Name ...">
                                @if ($errors->first('mn_name'))
                                    <span class="text-danger">{{ $errors->first('mn_name') }}</span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label for="name">Kiểu menu </label>
                                <select name="mn_type" class="form-control" id="">
                                    @foreach($types as $key => $type)
                                        <option value="{{ $key }}" {{ old('mn_type', isset($menu->mn_type) ? $menu->mn_type : '') == $key ? 'selected="selected"' : '' }}>
                                            {{ $type }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.menu.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Cập nhật <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop