<?phpif (isset($_GET['c_id'])){    include("../partials/connect.php");    $category_id = $_GET['c_id'];    $sql = "DELETE FROM `categories` WHERE id =$category_id";    $delete_category = mysqli_query($connection, $sql);    if ($delete_category){    header("Location:categories.php");    }else{        echo "DELETE FAILED!";    }}