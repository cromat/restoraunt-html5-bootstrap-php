<?php

    include 'datalogin.php';
    if($result=mysqli_query($conn, "SELECT name, description, image FROM chief"))
    {   

        while($data = mysqli_fetch_row($result))
        {   
            echo '
            <div class="col-md-6">
                <div class="papers text-center">
                    <img src="'.$data[2].'" alt=""><br/>
                    <h4 class="notopmarg nobotmarg">'.$data[0].'</h4>
                    <p>'.$data[1].'</p>
                </div>
            </div>';
        }
    }

    $conn->close();
?>