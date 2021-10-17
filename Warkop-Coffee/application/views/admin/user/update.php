<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-12">
                <div class="card mt-3">
                    <form action="" method="post">
                        <div class="card-header">
                            <h3 class="card-title">Update User</h3>
                        </div>
                        <div class="card-body">

                            <div class="form-group">
                                <label for="id_user">Id User</label>
                                <input type="hidden" name="id_user" class="form-control" value="<?= $user['username'] ?>">
                                <input type="text" disabled class="form-control" value="<?= $user['username'] ?>">
                            </div>
                            <div class="form-group">
                                <label for="user">User</label>
                                <input type="text" name="user" class="form-control" value="<?= $user['username'] ?>">
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