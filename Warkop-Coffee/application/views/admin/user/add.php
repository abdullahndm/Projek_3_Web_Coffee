<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-12">
                <div class="card mt-3">
                <?php
                        if (validation_errors()) {
                            echo '<div class="alert alert-danger" role="alert">'.validation_errors().'</div>';
                        }
                    ?>
                    <?= form_open_multipart('admin/user/add') ?>
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="card-header">
                            <h3 class="card-title">Tambah User</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="User">Username</label>
                                <input type="text" name="user" class="form-control" placeholder="Enter User">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="User">Password</label>
                                <input type="text" name="user" class="form-control" placeholder="Enter Password">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="User">Email</label>
                                <input type="text" name="user" class="form-control" placeholder="Enter Email">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="User">Nama</label>
                                <input type="text" name="user" class="form-control" placeholder="Enter Nama">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="User">Level</label>
                                <input type="text" name="user" class="form-control" placeholder="Enter Admin/User">
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>