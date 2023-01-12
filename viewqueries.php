<?php
include("adformheader.php");
include("dbconnection.php");
?>

<div class="container-fluid">
  <div class="block-header">
    <h2 class="text-center">View Queries</h2>

  </div>

<div class="card">

  <section class="container">
    <table class="table table-bordered table-striped table-hover js-basic-example dataTable">

      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Department</th>
          <th>Message</th>
        </tr>
        </thead>
         <tbody>
          <?php
		$sql ="SELECT * FROM queries";
        $qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql))
        {
             echo "<tr>
          <td>&nbsp;$rs[name]<br>&nbsp;
          $rs[email]</td>		 
		    <td>&nbsp;$rs[email]</td>
			   <td>&nbsp;$rs[phone]</td>
			    <td>&nbsp;$rs[department]</td>
                <td>&nbsp;$rs[message]</td>
                </tr>";    
        }
        ?>
      </tbody>
    </table>
</section>
</div>
</div>
<?php
include("adformfooter.php");
?>