@foreach($users as $user)
<!-- <form action="http://localhost/aptech-php-14-vuma/PHP/2018-10-2/public/UserOne/{{$user->id}}" method="GET">
<p>This is{{$user->name}}

<button>Xem</button><p>
</form> -->

<!-- <form action="{{asset('/UserOne')}}/{{$user->id}}" method="GET"> -->
<form action="{{route('user.userOne',$user->id)}}" method="GET">
<p>This is{{$user->name}}

<button>Xem</button><p>
</form>
<br>
<form action="http://localhost/aptech-php-14-vuma/PHP/2018-10-2/public/Delete/{{$user->id}}" method="POST">
    <Input  type="hidden" name="_method" value="delete">
    {{csrf_field()}}

<button>Xoa</button><p>
</form>

<form action="{{route('users.edit',$user->id)}}" method="GET">
<button>sua</button>
</form>
</div>

@endforeach