<?php

    include 'datalogin.php';
    if($result=mysqli_query($conn, "SELECT name, description, date_event, image FROM event"))
    {   
        echo '
        <section class="grid-wrap">
				<ul class="grid">
					<li class="grid-sizer"></li>';

        while($data = mysqli_fetch_row($result))
        {   
            echo '
                <li>
                    <figure>
                        <img src="'.$data[3].'" alt="" />
                        <figcaption>
                            <h3>'.$data[0].'</h3>
                            <p>'.$data[1].'</p>
                        </figcaption>
                    </figure>
                </li>';
        }

        echo '
        </ul>
			</section>';
    }

    if($result=mysqli_query($conn, "SELECT name, description, date_event, image FROM event"))
    {   
        echo '
        <section class="slideshow">
				<ul>';

        while($data = mysqli_fetch_row($result))
        {   
            echo '
                <li>
                    <figure>
                        <img src="'.$data[3].'" alt="" />
                        <figcaption>
                            <h3>'.$data[0].'</h3>
                            <p>'.$data[1].'</p>
                        </figcaption>
                    </figure>
                </li>';
        }

        echo '
        </ul>
				<nav>
					<span class="icon nav-prev"></span>
					<span class="icon nav-next"></span>
					<span class="icon nav-close"></span>
				</nav>
				<div class="info-keys icon">Navigate with arrow keys</div>
			</section>';
    }


    $conn->close();
?>