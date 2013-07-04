


<div id="register_form"  class="modal hide fade">
	<form class="form-horizontal register">
		<div class="modal-header" style="text-align: center;cursor: move;">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>注册</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label">username</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class=" icon-user"></i></span>
						<input type="text" id="register_username" placeholder="用户名"  class="span3">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"  for="inputPassword">密码</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" id="register_password1" placeholder="密码"  class="span3">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"  for="inputPassword">确认密码</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" id="register_password2" placeholder="确认密码" class="span3">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">真实姓名</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class=" icon-user"></i></span>
						<input type="text" id="register_realname" placeholder="真实姓名"  class="span3">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"  for="inputEmail">邮箱</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-envelope"></i></span>
						<input class="span2" id="register_email" type="text" placeholder="邮箱">
					</div>
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="button" class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
				<button type="submit" class="btn btn-primary">确认</button>
			</div>
		</div>
	</form>
</div>

<div id="login_form"  class="modal hide fade">
	<form class="form-horizontal login">
		<div class="modal-header" style="text-align: center;cursor: move;">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>登陆</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label">username</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class=" icon-user"></i></span>
						<input type="text" id="login_username" placeholder="用户名"  class="span3">
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"  for="inputPassword">密码</label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" id="login_password" placeholder="密码"  class="span3">
					</div>
					
				</div>
			</div>
		</div>
		<div class="control-group">
			<div class="controls">
				<button type="button" class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
				<button type="submit" class="btn btn-primary">确认</button>
			</div>
		</div>
  </form>
</div>

<div id="message" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="messageModalLabel">注意</h3>
  </div>
  <div class="modal-body">
    <p></p>
  </div>
  <div class="modal-footer">
    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">确定</button>
  </div>
</div>
<script  charset="utf-8"  src="js/footer.js"></script>
</body>
</html>