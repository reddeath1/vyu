<?php  
    require_once 'Core/Init.php';
    $user = new User();
    //echo $user->data()->username;
    if ($user->isLoggedIn()) {
      # code...
      // echo 'logged In';
      // echo escape($user->data()->username);
?>


<?php include 'include/skeletonTop.php';?>
   <div id = 'Pagewraper'>
   <?php include 'include/pageProfileNavigation.php'; ?>
	
	
    <div id = 'side_two' >
		<!--/***********header after login*********/-->
		<?php include 'include/topheader.php'; ?>
		<div id='mainWraper'>
			<div class = 'section'>
				<?php include 'include/profileheader.php'; ?>
				
				 <?php
				
					if($user->hasPermission('moderator')){
                       echo "user are moderater";
					}


				?>
				
				
			
			</div>
		    <div class = 'infoSection'>
				<span class = 'membars'>MEMBARS</span>
				<div id ='info_list'>
					<div class = 'newst memba'>Newest</div>
					<div class = 'Active memba'>Active</div>
					<div class = 'Popular memba'>Popular</div >
				</div>
				<div id ='newst' class = 'info_memba'>
					<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p3.jpg' width='70px' height ='60px;'/></div>
					<div class = 'name'>Big Boss</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
					<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p3.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Barack</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
					<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p9.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Jery</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
					
						<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p9.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Jery</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
						<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p9.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Jery</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
						<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p9.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Jery</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
					<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p2.png' width='70px' height ='60px;'/></div>
						<div class = 'name'>Neema</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
					<div id = 'newstProfile'>
						<div id ='profilecycle'><img src = 'img/profiles/p7.jpg' width='70px' height ='60px;'/></div>
						<div class = 'name'>Enjoy</div>
						<div class = 'standardClass'>Collage</div>
						<div class = 'learn_from_him'>Learn From Him</div>
					</div>
					
				</div>
				<div id ='Active' class = 'info_memba'></div>
				<div id ='Popular' class = 'info_memba'></div>
				<div id='Ideas'>
					<h3>IQ INlARAGMENTS</h3>	
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<h2>How To Solve Quandrant Equestion</h2>
						<div class ='soln'>
							2x /  3x = 2f - 2f  find y <br/>
							how to solv this equestion helps please .....
							
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
					
					<div class = 'p_idea'>
						<div class = 'header'>
							<div class= 'h_img'><img src = 'img/profiles/life.jpg'/></div>
							<h2>JINSI YA KUPATA MTAJI WA KUFUGA KUKU</h2>
						    <h4>enterprenuar</h4>
						</div>
						
						<div class ='soln'>
							Smart phon n kfaa chenye pesa nying sana
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</div>
    </div>
    
</div>
<script type="text/javascript" src="jscript/jscript.js">
	
</script>
 <?php include 'include/positonAbsolute.php'; ?> 
</body>
</html>

<?php
   }else{
       echo '<p>You need <a href = "login.php">Login</a> or <a href = "registration.php">Register</a></p>';
    }
?>

<!--//materials sehem ya kuifadhi materials ya maomo yako kama vile summaries
-->