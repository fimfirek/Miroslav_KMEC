BLOB IMAGE

<?php 
require_once 'config.php';



if(isset($_SESSION['id']) && isset($_SESSION['name'])){
?>  
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="style.css">
            <title>My account</title>
        </head>
        <body>
        
            <div class="flex-head-box">
                <div class="head-ac-menu">
                <?php
                    $sql = "SELECT * FROM user WHERE id= ".$_SESSION['id'];
                    $result = mysqli_query($conn,$sql);
                    if(mysqli_num_rows($result) > 0) {
                        while($row = mysqli_fetch_assoc($result)) {
                            $id = $row['id'];
                            $sqlImg = "SELECT * FROM user WHERE id='$id'";
                            $resultImg = mysqli_query($conn, $sqlImg);
                            while($rowImg = mysqli_fetch_assoc($resultImg)) {
                                echo "<div>";
                                if ($rowImg['uimgstatus'] == 1) {
                                    echo "<img class='avatar-pic' src='uploads/profile".$id.".jpg'>";
                                } else {
                                    echo "<img class='avatar-pic' src='uploads/default-img.png'>";
                                }
                                echo "</div>";
                    }
                }
            }
            ?>
                    <div class="hi-text">Hello, <?php echo $_SESSION['name']; ?></div>
                    <button id="logout"><a href="logout.php">Log Out</a></button>
                </div>
            </div>
            <?php

            if(isset($_POST['upload_avatar'])){

                $sqlImgStatus = "UPDATE user SET uimgstatus = 1 WHERE id='$id'";
                $resultImg = mysqli_query($conn, $sqlImgStatus);
            }
            ?>
            <form id="pic-settings" action="" method="post" enctype="multipart/form-data">
                <div class="pic-text">Upload your <b>avatar</b></div>
                <input id="picture" type="file" name="avatar">
                <button id="submit" type="submit" name="upload_avatar">Upload Avatar</button>
            </form>
            
        </body>
        </html>
<?php
}
else{
    header("Location: index.php");
    exit();
}
?>
