<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequest;
use Illuminate\Support\Facades\Hash;

class AdminAdminController extends Controller
{
    //
    public function __construct()
    {
        view()->share([
            'roles' => Admin::ROLES
        ]);

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $admins = Admin::orderByDesc('id')->paginate(10);
        return view('admin.admin.index', compact('admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdminRequest $request)
    {
        
        //
        \DB::beginTransaction();
        try {
            $data = $request->except('_token','avatar', 'password', 'submit');

            if ($request->avatar) {
                $image = upload_image('avatar');
                if ($image['code'] == 1)
                    $data['avatar'] = $image['name'];
            }
            if ($request->password) {
                $data['password'] = Hash::make($request->password);
            }
            Admin::insert($data);
           \DB::commit();
            return redirect()->route('admin.index')->with('success', 'Thêm mới thành công');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $admin = Admin::find($id);
        return view('admin.admin.update', compact('admin'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdminRequest $request, $id)
    {
        //
        \DB::beginTransaction();
        try {
            $admin = Admin::find($id);
            $data = $request->except('_token','avatar', 'password', 'submit');
            if ($request->avatar) {
                $image = upload_image('avatar');
                if ($image['code'] == 1)
                    $data['avatar'] = $image['name'];
            }
            if ($request->password) {
                $data['password'] = Hash::make($request->password);
            }
            $admin->update($data);
            \DB::commit();
            return redirect()->route('admin.index')->with('success', 'Cập nhật thành công ');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu dữ liệu');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        //
        $admin = Admin::find($id);
        if (!$admin) {
            return redirect()->back()->with('error', 'Đã xảy ra lỗi khi xóa dữ liệu');
        }
        $admin->delete();
        return redirect()->route('admin.index')->with('success', 'Xóa thành công');
    }

}
