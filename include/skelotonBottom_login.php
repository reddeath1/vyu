<?php include 'include/positonAbsolute.php'; ?><script type="text/javascript" src="jscript/jquery.js"></script><script type="text/javascript" src="jscript/vyu_factory.js"></script><script type="text/javascript" src="jscript/sasha.js?version=<?php echo uniqid(); ?>"></script><script type="text/javascript" src="jscript/exile.js?version=<?php echo uniqid(); ?>"></script><script type="text/javascript" src="jscript/jscript.js?version=<?php echo uniqid(); ?>"></script><!-- <script type="text/javascript">  // Draw the chart and set the chart values      function drawChart() {        var data = google.visualization.arrayToDataTable([        ['Task', 'Hours per Day'],        ['Work', 8],        ['Eat', 2],        ['TV', 4],        ['Gym', 2],        ['Sleep', 8]      ]);        // Optional; add a title and set the width and height of the chart        var options = {'title':'My Average Day', 'width':550, 'height':400};        // Display the chart inside the <div> element with id="piechart"        var chart = new google.visualization.PieChart(document.getElementById('piechart'));        chart.draw(data, options);      }</script> --><!--   <script type="text/javascript" src="jscript/vykazi.js"></script>  <script type="text/javascript" src="jscript/exile.js"></script>   <script type="text/javascript" src="jscript/vyu.js"></script>--></body></html><?php  //  }else{  //      echo '<p>You need <a href = "login.php">Login</a> or <a href = "registration">Register</a></p>';  // }?>