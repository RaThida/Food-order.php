<?php include('partials/menu.php') ?>

       <!-- Menu Content Section Starts -->
       <div class="Main-Content">
        <div class="wrapper">
            <h1 >DASHBOARD</h1>
            <br><br>
            <div class="col-4 text-center">
                <?php 
                    $sql = "SELECT * FROM tbl_category";
                    //Execute Query 
                    $res = mysqli_query($conn, $sql);
                    //Count Rows
                    $count = mysqli_num_rows($res);
                ?>


                <h1><?php echo $count; ?></h1>
                <td > <a href="http://192.168.40.30:8080/restauarant/admin/manage_category.php">Categoriey</a></td>
            </div>

            <div class="col-4 text-center">
                <?php 
                    $sql1 = "SELECT * FROM tbl_food";
                    //Execute Query 
                    $res1 = mysqli_query($conn, $sql1);
                    //Count Rows
                    $count1 = mysqli_num_rows($res1);
                ?>
                <h1><?php echo $count1; ?></h1>
                <td > <a href="http://192.168.40.30:8080/restauarant/admin/manage_food.php">Foods</a></td>
                
            </div>
            <div class="col-4 text-center">
                <?php 
                    $sql2 = "SELECT * FROM tbl_order";
                    //Execute Query 
                    $res2 = mysqli_query($conn, $sql2);
                    //Count Rows
                    $count2 = mysqli_num_rows($res2);
                ?>
               <h1><?php echo $count2; ?></h1>
               <td > <a href="http://192.168.40.30:8080/restauarant/admin/manage_order.php">Total Order</a></td>
                
            </div>

            <div class="col-4 text-center">
                <?php 

                    //creat sql Query to get revenue General
                    //Aggregate Function in SQL
                    $sql3 = "SELECT SUM(total) AS Total FROM tbl_order";

                    //Execute Query 
                    $res3 = mysqli_query($conn, $sql3);

                    //Get the value
                    $row3 = mysqli_fetch_assoc($res3);

                    //Get the total revenue
                    $total_revenue = $row3['Total'];
                   

                ?>
                <h1>$<?php echo $total_revenue;?></h1>
                Revenue Generated
            </div>

        
            <div class="clearfix"></div>
        </div>
        </div>
       <!-- Menu Content Section Ends -->
       <?php include('partials/footer.php') ?>