<?php 

if(isset($_POST['submit']))
{
  $sql ="select balance as spent from petty_balance where  property = 'church' ";
  $query = $dbh -> prepare($sql);
  $query->execute();
  $results=$query->fetchAll(PDO::FETCH_OBJ);
  if($query->rowCount() > 0)
  {
    foreach($results as $row)
    { 
      $originalaccount = ($row->spent); 
      $amount=$_POST['amount'];
      if($amount<=$originalaccount){
        $date=$_POST['date'];
        $reason=$_POST['reason'];
        $expense=$_POST['expense'];
        $description=$expense.": ".$reason;
        $amount=$_POST['amount'];
        $expensecategory=$_POST['expensecategory'];
        $sql="insert into expence(date,resoan,amount,category,expense)values(:date,:reason,:amount,:expensecategory,:expense) ";
        $query=$dbh->prepare($sql);
        $query->bindParam(':date',$date,PDO::PARAM_STR);
        $query->bindParam(':reason',$description,PDO::PARAM_STR);
        $query->bindParam(':amount',$amount,PDO::PARAM_STR);
        $query->bindParam(':expense',$expense,PDO::PARAM_STR);
        $query->bindParam(':expensecategory',$expensecategory,PDO::PARAM_STR);
        $query->execute();
        $LastInsertId=$dbh->lastInsertId();
        if ($LastInsertId>0) {
          $description='Petty cash';
          $amount=$_POST['amount'];
          $sql="insert into general_jaunal(description,debit)values(:reason,:amount) ";
          $query=$dbh->prepare($sql);
          $query->bindParam(':reason',$description,PDO::PARAM_STR);
          $query->bindParam(':amount',$amount,PDO::PARAM_STR);
          $query->execute();
          $reason=$_POST['reason'];
          $expense=$_POST['expense'];
          $description=$expense.": ".$reason;
          $amount=$_POST['amount'];
          $sql="insert into general_jaunal(description,credit)values(:reason,:amount) ";
          $query=$dbh->prepare($sql);
          $query->bindParam(':reason',$description,PDO::PARAM_STR);
          $query->bindParam(':amount',$amount,PDO::PARAM_STR);
          $query->execute();
          echo '<script>alert("successfuly has been added.")</script>';
          echo "<script>window.location.href ='add_expense.php'</script>";

          $amount=$_POST['amount'];
          $newaccount = ($originalaccount-$amount);
          // $sql="update  petty_cash set Account_Balance = '$newaccount' where property = 'church'";
          // $query=$dbh->prepare($sql);
          // $query->execute();
          // $LastInsertId=$dbh->lastInsertId();
          $sql="update  petty_balance set balance = '$newaccount' where property = 'church' ";
          $query=$dbh->prepare($sql);
          $query->execute();
          $LastInsertId=$dbh->lastInsertId();
          ?>
          <script>
            alert("Your petty cash balance has been affected ")
          </script>
          <?php
        }
        else
        {
          echo '<script>alert("Something Went Wrong. Please try again")</script>';
        }
      }else{
        echo '<script>alert("you dont have that amount on your account")</script>';
      }
    }
  }
}
?>
<form role="form" id=""  method="post" enctype="multipart/form-data" class="form-horizontal">
  <div class="card-body">
    <div class="row">
      <div class="form-group  col-md-4 col-xs-12">
        <label for="exampleInputPassword1">Date</label>
        <input type="date" name="date" class="form-control" id="exampleInputPassword1" required>
      </div>
      <div class="form-group col-md-4">
        <label for="expensecategory"> Expense category</label>
        <select  name="expensecategory" onChange="getSubcat(this.value);" class="form-control" required>
          <option value="">Select category</option>
          <?php
          $sql="SELECT * from  expensecategory";
          $query = $dbh -> prepare($sql);
          $query->execute();
          $results=$query->fetchAll(PDO::FETCH_OBJ);
          if($query->rowCount() > 0)
          {
            foreach($results as $row)
            {
              ?> 
              <option value="<?php  echo $row->id;?>"><?php  echo $row->categoryname;?></option>
              <?php 
            }
          } ?>
        </select>
      </div>

      <div class="form-group col-md-4">
        <label  for="basicinput">Expense name</label>
        <div class="controls">
          <select   name="expense"  id="subcategory" class="form-control" required>
           <option value="">Select expense name</option>
         </select>
       </div>
     </div>
   </div>
   <div class="row">
     <?php
     $sql ="select balance as spent from petty_balance where  property = 'church' ";
     $query = $dbh -> prepare($sql);
     $query->execute();
     $results=$query->fetchAll(PDO::FETCH_OBJ);
     if($query->rowCount() > 0)
     {
      foreach($results as $row)
      { 
        $originalaccount = ($row->spent);
        ?>
        <div class="form-group offset-md-4 col-md-4">
          <label for="exampleInputPassword1">Petty cash balance</label>
          <input type="text" name="" class="form-control" value="<?php echo htmlentities(number_format($originalaccount, 0, '.', ','));?>" readonly="" >
        </div>
        <div class="form-group col-md-4">
          <label for="exampleInputPassword1">Amount</label>
          <input type="text" name="amount" class="form-control" id="exampleInputPassword1" placeholder="Amount">
        </div>
        <?php
      }
    }?>
  </div>
  <div class="row">
   <div class="form-group col-md-12">
    <label for="feInputCity">Details</label>
    <textarea class="form-control" name="reason" rows="5" required></textarea>
  </div>
</div>
</div>
<!-- /.card-body -->
<div class="modal-footer text-right">
  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
  <button type="submit" name="submit" class="btn btn-primary">Submit</button>
</div>
</form>
