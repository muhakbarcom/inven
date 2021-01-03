<!-- <h1><?php echo lang('login_heading'); ?></h1>
<p><?php echo lang('login_subheading'); ?></p> -->

<!-- <div id="infoMessage"><?php echo $message; ?></div>

<!-- <?php echo form_open("auth/login"); ?> -->

<!-- <p>
  <?php echo lang('login_identity_label', 'identity'); ?>
  <?php echo form_input($identity); ?>
</p>

<p>
  <?php echo lang('login_password_label', 'password'); ?>
  <?php echo form_input($password); ?>
</p>

<p>
  <?php echo lang('login_remember_label', 'remember'); ?>
  <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"'); ?>
</p>


<p><?php echo form_submit('submit', lang('login_submit_btn')); ?></p>

<?php echo form_close(); ?>

<p><a href="forgot_password"><?php echo lang('login_forgot_password'); ?></a></p> -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign in - Voler Admin Dashboard</title>
  <link rel="stylesheet" href="<?= base_url(); ?>/assets/css/bootstrap.css">

  <link rel="shortcut icon" href="<?= base_url(); ?>assets/images/favicon.svg" type="image/x-icon">
  <link rel="stylesheet" href="<?= base_url(); ?>/assets/css/app.css">
</head>

<body>
  <div id="auth">

    <div class="container">
      <div class="row">
        <div class="col-md-5 col-sm-12 mx-auto">
          <div class="card pt-4">
            <div class="card-body">
              <div class="text-center mb-5">
                <img src="<?= base_url(); ?>assets/images/favicon.svg" height="48" class='mb-4'>
                <h3>Sign In</h3>
                <p>Please sign in to continue to Voler.</p>
              </div>
              <?php echo $message; ?>
              <?php echo form_open("auth/login"); ?>
              <div class="form-group position-relative has-icon-left">
                <label for="identity">Username</label>
                <div class="position-relative">
                  <input type="text" class="form-control" id="identity" name="identity">
                  <div class="form-control-icon">
                    <i data-feather="user"></i>
                  </div>
                </div>
              </div>
              <div class="form-group position-relative has-icon-left">
                <div class="clearfix">
                  <label for="password">Password</label>
                  <a href="auth-forgot-password.html" class='float-right'>
                    <small>Forgot password?</small>
                  </a>
                </div>
                <div class="position-relative">
                  <input type="password" class="form-control" id="password" name="password">
                  <div class="form-control-icon">
                    <i data-feather="lock"></i>
                  </div>
                </div>
              </div>

              <div class='form-check clearfix my-4'>
                <div class="checkbox float-left">
                  <input type="checkbox" class='form-check-input' name="remember" id="remember">
                  <label for="checkbox1">Remember me</label>
                </div>
                <div class="float-right">
                  <a href="auth-register.html">Don't have an account?</a>
                </div>
              </div>
              <div class="clearfix">
                <button class="btn btn-primary float-right" type="submit">Submit</button>
              </div>
              <?php echo form_close(); ?>
              <div class="divider">
                <div class="divider-text">OR</div>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <button class="btn btn-block mb-2 btn-primary"><i data-feather="facebook"></i> Facebook</button>
                </div>
                <div class="col-sm-6">
                  <button class="btn btn-block mb-2 btn-secondary"><i data-feather="github"></i> Github</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <script src="<?= base_url(); ?>assets/js/feather-icons/feather.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/app.js"></script>

  <script src="<?= base_url(); ?>assets/js/main.js"></script>
</body>

</html>