<?php 

include('connection.php');
// $dob = date('Y-m-d',strtotime($_REQUEST['dateofbirth'])); 
$date  = date('Y-m-d');
	
	$name = $_POST['name']; 
	$age = $_POST['age'];
	$gender= $_POST['gender']; 
	$fhname = $_POST['fhname'];    
	$nominename = $_POST['nominename']; 
	$nominenumber = $_POST['nominenumber'];
	$address = $_POST['address']; 
	$mobile = $_POST['mobile'];
	$alternatenum = $_POST['alternatenum']; 
	$email = $_POST['email'];  
	$amount = $_POST['amount']; 
	$amountwords = $_POST['amountwords'];  
	$idproof = $_POST['idproof']; 
	$pannum = $_POST['pannum'];  
	$adharnum = $_POST['adharnum']; 
	$bankname = $_POST['bankname']; 
	$branch = $_POST['branch'];  
	$accnum = $_POST['accnum'];  
	$ifsccode = $_POST['ifsccode']; 
	$referalid = $_POST['referalid'];  
	$referalname = $_POST['referalname'];
	//$leg = $_POST['leg']; 
	

	
	
	if(isset($_REQUEST['id']) && !empty($_REQUEST['id']))
	{
		$id = $_REQUEST['id'];
		
		$sql = "UPDATE user SET name='$name',dateofbirth='$dob',age='$age',gender='$gender',fhname='$fhname',
		nominename='$nominename',nominenumber='$nominenumber',address='$address',mobile='$mobile',email='$email',alternatenum='$alternatenum',amount='$amount',amountwords='$amountwords',idproof='$idproof',pannum='$pannum',adharnum='$adharnum',bankname='$IFSC Code',branch='$branch',accnum='$accnum',ifsccode='$ifsccode',referalid='$referalid',referalname='referalname'  WHERE id='$id' ";
		$result = mysqli_query($connection, $sql);
		
		header("location: viewuser.php"); 
		
	}
	else
	{
		
	
		if(isset($name) || ($gender) || ($fhname) || ($nominename)|| ($address)|| ($email) )
		{  
			
			if(isset($name) || ($gender) || ($fhname) || ($nominename)|| ($address)|| ($email))
			{    
		
				$refer = $_POST['referalid'];

			        $que="SELECT * FROM user WHERE userid ='$refer' ";
				$resul=mysqli_query($connection,$que);
				$Rows = mysqli_fetch_array($resul);
				$sponcer = $Rows['id'];
	 	
				$sql="SELECT * FROM userid ORDER BY id DESC LIMIT 1 ";
				$result=mysqli_query($connection,$sql);
				$row=mysqli_fetch_array($result); 
				
				$prefix =$row['prefix'];
				$value =$row['value'];
				
				$value= $value + 1;
				$usid = $prefix .$value; 
				
				$query="SELECT * FROM user WHERE referalid='$refer' ";
				$res=mysqli_query($connection,$query);
				mysqli_num_rows($res);
				
				if(mysqli_num_rows($res) < 2 )
				{
					
						$rows = mysqli_fetch_array($res);
						if(mysqli_num_rows($res) == 0) 
						{
							$position=0;
						}
						 
						else if(mysqli_num_rows($res) == 1)
						{
							$rows = mysqli_fetch_array($res);
							if($rows['position'] == 0)
							{
								$position= 1;
							}
							else
							{
								$position= 0;
							}
							
							
						}

						 function passGen($len,$set = "")

						 {   
							$gen = "";
							for($i=0;$i<$len;$i++)
							 {
								$set=str_shuffle($set);
								$gen.=$set[0];
							 }
							 return $gen;
						 }
						 $password = passGen(8,'abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&');
						 $password.'<br>';

						$sql="INSERT INTO user (name,age,gender,fhname,nominename,nominenumber,address,mobile,alternatenum , email, amount,amountwords, idproof,  pannum,adharnum,bankname,branch,accnum,ifsccode,referalid, referalname,userid, dateofbirth,paymentmode,password,position, status,sponserid,createddate, totalincome) 
						
						VALUES('$name','$age','$gender','$fhname','$nominename','$nominenumber','$address','$mobile','$alternatenum','$email','$amount','$amountwords','$idproof','$pannum','$adharnum','$bankname','$branch','$accnum',   '$ifsccode','$referalid','$referalname','$usid',0,0,'$password','$position',2,'$sponcer','$date',0)";
			 
						if($connection->query($sql)==TRUE)
						{    
							 $id = $row['id'];
							 $query= "UPDATE userid SET value='$value'  WHERE id='$id' ";
							 $result = mysqli_query($connection, $query);  
							header("location: thankyou.php");
						} 
						else
						{
							echo "error" .$sql."<br>".$connection->error;
						}
					 
				}
				else if(mysqli_num_rows($res) == 2)
				{
					echo 'Invalid Referl id. Kindly try some other id';
				}
				
				
			 
			  }
		} 
		
	}
	
	mysqli_close($connection);
	
	
?>