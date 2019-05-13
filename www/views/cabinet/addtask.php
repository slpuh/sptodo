<div class="main">
    <div class="container">
        <div class="content">
            <div class="login-wrapper">
                <div class="auth-logo">
                    <div class="logo">Add New <span>Task</span></div>

                    <div class="message">
                        <?php if (isset($errors) && is_array($errors)) : ?>
                            <?php foreach ($errors as $error) : ?>
                                <p><?php echo $error; ?></p>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>

            </div>
            <div class="form-section">
                <form action="" method="post">
                    <div class="inputs-wrapp">
                        <div class="col-1">
                            <div class="input-item">
                                <label class="label">Title of task</label>
                                <input type="text" name="title" class="input">
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="input-item">
                                <label class="label">Expiration date</label>
                                <input type="text" name="finish" class="input" id="datetimepicker">
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="input-item">
                                <label class="label">Description of task</label>
                                <textarea name="text" cols="30" rows="10" class="textarea"></textarea>
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="button-wrapp">
                                <a href="/cabinet" class="btn btn-transparent">Back</a>
                                <input type="submit" class="btn btn-yellow" value="Save">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>