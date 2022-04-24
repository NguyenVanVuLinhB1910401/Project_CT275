<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Edit loại</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <?php
        if(isset($_SESSION['edit']))
        {
            echo $_SESSION['edit'];
            unset($_SESSION['edit']);
        }
    ?>
    <h1 class="text-center offset-sm-2 my-4">Edit loại</h1>
    
    <form action="<?= $router->generate('admin.editcategory') ?>" method="POST" enctype="multipart/form-data" class="m-3 p-2">
        <div class="mb-3 row justify-content-center">
            <label for="inputTen" class="col-sm-2 col-form-label">Tên loại:</label>
            <div class="col-sm-6">
                <input type="text" name="title" value="<?php echo $category->title;?>" class="form-control" id="inputTen">
            </div>
        </div>

        <div class="mb-3 row justify-content-center">
            <label for="inputAnh" class="col-sm-2 col-form-label">Ảnh</label>
            <div class="col-sm-6">
                <?php
                if($category->image_name != "")
                {
                //Display the Image
                ?>
                <img src="/images/category/<?php echo $category->image_name; ?>" width="150px" height="150px">
                <?php
                }
                else
                {
                //Display Message
                echo "<div class='error'>Ảnh chưa được thêm.</div>";
                }
                ?>
            </div>
        </div>
        <div class="mb-3 row justify-content-center">
            <label for="inputAnhnew" class="col-sm-2 col-form-label">Ảnh mới</label>
            <div class="col-sm-6">
                <input type="file" class="form-control" name="image">
            </div>
        </div>
        <div class="mb-3 row justify-content-center">
            <label for="inputAnhnew" class="col-sm-2 col-form-label">Nổi bật: </label>
            <div class="col-sm-6 form-check form-check-inline">
                <div class="form-check form-check-inline">
                    <input <?php if( $category->featured =="Yes"){echo "checked";}?> name="featured"class="form-check-input" type="radio" id="inlineCheckbox1" value="Yes">
                    <label class="form-check-label" for="inlineCheckbox1">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input  <?php if( $category->featured =="No"){echo "checked";}?> name="featured" class="form-check-input" type="radio" id="inlineCheckbox2" value="No">
                    <label class="form-check-label" for="inlineCheckbox2">No</label>
                </div>
            </div>
        </div>
        <div class="mb-3 row justify-content-center">
            <label for="inputAnhnew" class="col-sm-2 col-form-label">Hoạt động: </label>
            <div class="col-sm-6 form-check form-check-inline">
                <div class="form-check form-check-inline">
                    <input <?php if( $category->active =="Yes"){echo "checked";}?> name="active"class="form-check-input" type="radio" id="inlineCheckbox1" value="Yes">
                    <label class="form-check-label" for="inlineCheckbox1">Yes</label>
                </div>
                <div class="form-check form-check-inline">
                    <input  <?php if($category->active=="No"){echo "checked";}?> name="active" class="form-check-input" type="radio" id="inlineCheckbox2" value="No">
                    <label class="form-check-label" for="inlineCheckbox2">No</label>
                </div>
            </div>
        </div>


        <div class="mb-3 row justify-content-center">
            <div class="offset-sm-2 col-sm-6">
                <input type="hidden" name="current_image" value="<?php echo $category->image_name; ?>">
                <input type="hidden" name="id" value="<?php echo $category->id;?>">
                <input type="submit" name="submit" value="Cập nhật" class="btn-secondary bg-primary form-control">
            </div>
        </div>
    </form>

    
	
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</html>