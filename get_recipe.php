<?php

    include 'datalogin.php';

    if($result=mysqli_query($conn, "SELECT name, description, image, type FROM recipe WHERE type = 0"))
    {   
        echo '
        	<div class="col-md-4">
				<div class="restmenuwrap" id="">
					<h3 class="maincat notopmarg text-center">APPETIZERS</h3>';


        while($data = mysqli_fetch_row($result))
        {   
            echo '
            <div class="restitem clearfix">
				<div class="rm-thumb" style="background-image: url('.$data[2].'); background-size:cover;">
                </div>
                <h5>'.$data[0].'</h5>
                <p>'.$data[1].'</p>
            </div>';
        }

        echo '</div></div>';
    }


    if($result=mysqli_query($conn, "SELECT name, description, image, type FROM recipe WHERE type = 1"))
    {   

        echo '
        	<div class="col-md-4">
				<div class="restmenuwrap" id="">
					<h3 class="maincat notopmarg text-center">MAIN</h3>';


        while($data = mysqli_fetch_row($result))
        {   
            echo '
            <div class="restitem clearfix">
				<div class="rm-thumb" style="background-image: url('.$data[2].'); background-size:cover;">
                </div>
                <h5>'.$data[0].'</h5>
                <p>'.$data[1].'</p>
            </div>';
        }

        echo '</div></div>';
    }

    if($result=mysqli_query($conn, "SELECT name, description, image, type FROM recipe WHERE type = 2"))
    {   

        echo '
        	<div class="col-md-4">
				<div class="restmenuwrap" id="">
					<h3 class="maincat notopmarg text-center">DESSERTS</h3>';


        while($data = mysqli_fetch_row($result))
        {   
            echo '
            <div class="restitem clearfix">
				<div class="rm-thumb" style="background-image: url('.$data[2].'); background-size:cover;">
                </div>
                <h5>'.$data[0].'</h5>
                <p>'.$data[1].'</p>
            </div>';
        }

        echo '</div></div>';
    }

    $conn->close();
?>