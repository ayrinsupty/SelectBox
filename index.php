<!DOCTYPE html>
<html lang = "en-US">
    <head>
        <title>Dynamic Dependent Select Box using PHP and MySQL</title>
        <meta charset="utf-8">
        <!-- Custom Style -->
        <Style>
            .container{
                padding: 20px;
            }
            select{
                font-size: 16px;
                padding: 4px 8px;
                color: #666;
                margin-right: 20px;
            }
            select:last-child{
                margin-right: 0;
            }
        </Style>

        <!-- jQuery Library -->
        <script src="js\jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                $('#country').on('change', function(){
                    var countryID = $(this).val();
                    if(countryID){
                        $.ajax({
                            type: 'POST',
                            url: 'ajaxData.php',
                            data:'country_id='+countryID,
                            success:function(html){
                                $('#state').html(html);
                            }
                        });
                    }else{
                        $('#state').html('<option value="">Select Country First</option>');
                        $('#city').html('<option value="">Select State First</option>');
                    }
                });


                $('#state').on('change', function(){
                    var stateID = $(this).val();
                    if(stateID){
                        $.ajax({
                            type: 'POST',
                            url: 'ajaxData.php',
                            data:'state_id='+stateID,
                            success:function(html){
                                $('#city').html(html);
                            }
                        });
                    }else{
                        $('#city').html('<option value="">Select State First</option>');
                    }
                });
            });
  
        </script>
    </head>
    <body>
        <div class="container">
            <?php
            //Include Database Config File
            include_once 'dbConfig.php';

            //Fetch all the country data
            $query = "SELECT * FROM countries WHERE status = 1 ORDER BY country_name ASC";
            $result = $db->query($query);
            ?>

            <!-- Country Drop-Down -->
            <select id="country">
                <option value="">Select Country</option>
                <?php
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()){
                        echo '<option value="'.$row['country_id'].'">'.$row['country_name'].'</option>';
                    }
                }else{
                    echo '<option value="">Country Not Available</option>';
                }
                    
                ?>
            </select>

            <!-- State Drop-Down -->
            <select id="state">
                <option value="">Select Country First</option>
            </select>

            <!-- City Drop-Down -->
            <select id="city">
                <option value="">Select State First</option>
            </select>
            
        </div>
    </body>
</html>