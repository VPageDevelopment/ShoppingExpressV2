<?php 

include('connection.php');

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          
            <form action="saveregister.php" method="POST" onsubmit="return checkall();">
              <h1>Registration Form</h1>
               
              <div>
                <input type="text" class="form-control" name="name" placeholder="Name" required="" />
              </div>
              
              <div>
                <input type="number" class="form-control" name="age" placeholder="Age" required="" />
              </div>
              <br>
              <div>
                <select type="text" class="form-control" name="gender" placeholder="Gender" required="" >
                
                	<option value="">Choose...</option>
                	<option value="Male">Male</option>
                	<option value="Female">Female</option>
                
                </select>
              </div>
              <br>
              <div>
                <input type="text" class="form-control" name="fhname" placeholder="Father Name" required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="nominename" placeholder="Nominee Name" required="" />
              </div>
              
              <div>
                <input type="number" class="form-control" name="nominenumber" placeholder="Nominee Contact Number" required="" />
              </div>
              <br>
              <div>
                <input type="text" class="form-control" name="address" placeholder="Address" required="" />
              </div>
              
               <div>
                <input type="number" class="form-control" name="mobile" placeholder="Mobile" required="" />
              </div>
              <br>
               <div>
                <input type="number" class="form-control" name="alternatenum" placeholder="Alternate Number" required="" />
              </div>
              <br>
               <div>
                <input type="text" class="form-control" name="email" placeholder="Email" required="" />
              </div>
              
              <div>
                <input type="number" class="form-control" name="amount" placeholder="Amount" required="" />
              </div>
              <br>
              <div>
                <input type="text" class="form-control" name="amountwords" placeholder="Amount in words" required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="idproof" placeholder="Address / ID Proof " required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="pannum" placeholder="Pan Number" required="" />
              </div>
              
              <div>
                <input type="number" class="form-control" name="adharnum" placeholder="Aadhar Number" required="" />
              </div>
              
              <br>
              
               <div>
                <input type="text" class="form-control" name="bankname" placeholder="Bank Name" required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="branch" placeholder="Branch" required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="accnum" placeholder="Account Number" required="" />
              </div>
              
              <div>
                <input type="text" class="form-control" name="ifsccode" placeholder="IFSC Code" required="" />
              </div>
              
               <div>
                <input type="text" class="form-control" id="referalid" onchange=" referal();"  name="referalid" placeholder="Referal ID"  required="" /> 
              </div>
			  
			 
			  
			  <script type="text/javascript" src="js/jquery.js"></script>
				<script type="text/javascript">

					function referal()
					{
					 var referalid=document.getElementById( "referalid" ).value;
						
					 if(referalid)
					 {
					  $.ajax({
					  type: 'post',
					  url: 'checkdata.php',
					  data: {
					   referalid:referalid,
					  },
					  success: function (response) {
					   $( '#name_status' ).html(response);
					   if(response=="OK")
					   {
						return true;
					   }
					   else
					   {
						return false;
					   }
					  }
					  });
					 }
					 else
					 {
					  $( '#name_status' ).html("");
					  return false;
					 }
					}
					
					
			</script>

			  
			   <?php $num='<span id="name_status"></span>' ;
					 $num = trim($num);
					
					echo $sql="SELECT * FROM user WHERE referalid='$num'";
					
					$result=mysqli_query($connection,$sql);
					$row=mysqli_fetch_array($result); 
 	
				?>	
				
				 <div > 
					<select type="text" class="form-control" name="gender" placeholder="Gender" required=""> 
						<option  value="">Choose...</option>
						
						<?php 
						
							if(mysqli_num_rows($res) == 0) 
							{
								echo '<option  value="0"> Left </option>
								<option  value="1"> Right  </option>';
							}
						?>
						
						
						<?php echo $num; if($num >= 2) {  echo '<option  value=""> Exterm  Left </option>';  } ?>
						<?php if($num >= 2) {  echo '<option  value=""> Exterm  Right </option>';  } ?>
						
						
					</select>
					   
				</div>
			  
			<br>
              
              <div>
                <input type="text" class="form-control" name="referalname"  placeholder="Referal Name" required="" />
              </div>
                  
               <br>
              
              <div>
                <button class="btn btn-default submit" name="submit"  type="submit">Register</button>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                

                <div class="clearfix"></div>
                <br />

              <div class="clearfix"></div>

            </form>
           
            
          </section>
        </div>
      </div>
    </div>
    
       
  </body>
</html>