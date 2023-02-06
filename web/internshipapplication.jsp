<!doctype html>
<html lang="en">
    
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Working Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  
<style>
div{
background-color:#01B075;
font-family:Helvetica;
font-size:15px;
color: rgb(247, 250, 252);}
</style>
  <body style="font-size: 15px;">
    <!-- form -->
    <form action="#" >
      <div class="main-form" style=" height:700px; align-content: center; width: 740px; margin-left:auto; margin-right: auto; margin-top: 10px;padding-left: 76px; padding-right: 76px; padding-top: 28px; padding-bottom: 37px; ">
        <!-- mandy -->
        <div style="text-align:right; font-size:15px  ;">Mandatory Fields(*)</div>

        <!-- personal detail -->
        <div style="font-size:26px ; text-align: left;"><b>PERSONAL DETAILS </b></div>
         <br>
        <!-- tabele for form -->
        <table style="margin-left:auto;margin-right:auto" >
          <!-- name -->
          <tr>
            <td>
              <label for="fn">First Name*</label><br>
              <input type="text" id="fn" style="width:280px;margin-right:41px;">
            </td>
            <td>
              <label for="ln">Last Name*</label><br>
              <input type="text" id="ln" style="width:280px;margin-right:41px;">
            </td>
          </tr>

          <!-- phone no -->
          <tr>
            <td>
              <label for="Pn">Phone No.*</label><br>
              <input type="number" id="Pn" style="width:280px;margin-right:41px;">
            </td>
            <td>
              <label for="APn">Alternate Phone No.</label><br>
              <input type="number" id="APn" style="width:280px;margin-right:41px;">
            </td>
          </tr>
          
          <!-- email id -->
          <tr>
            <td colspan="2">
              <label for="email">E-Mail Id*</label><br>
             <input type="email" id="email" style="width:600px ;" >
            </td>
          </tr>

        <!--Resume-->
        <tr>
       <td colspan="2">
       <label for="resume"> Resume* </label><br>
       <input type="file" id="file" placeholder="upload from drive" style="width:600px;">
       </td>
       </tr>
      
  
</table>
  <!--Education Details-->
<br>
<table style="margin-left:auto;margin-right:auto">


<!-- Educational detail -->
<div style="font-size:26px ;"><b>EDUCATIONAL DETAILS</b></div>




          <!-- college name -->
          <tr>
            <td colspan="2">
              <label for="CN">College Name*</label><br>
             
             <select name="CN" id="CN" style="width:600px ;height: 30px;">
              <option value="blank"></option>
              <option value="option1"></option>
              <option value="option2"></option>
              <option value="option3"></option>
           
             </select>
            </td>
          </tr>

<!-- degree and percent -->
<tr>
    <td>
      <label for="Deg">Degree*</label><br>
     
      <select name="Deg" id="Deg" style="width:280px ;margin-right:41px;height: 30px;">
        <option value="blank"></option>
        <option value="option1"></option>
        <option value="option2"></option>
        <option value="option3"></option>
        <option value="option4"></option>
       </select>
    </td>
    <td>
      <label for="per">Percentage*</label><br>
      <input type="text" id="per" style="width:280px ;margin-right:41px;">
    </td>
  </tr>

</table>

<br>
<table style="margin-left:auto;margin-right:auto">



<div style="font-size:26px ;"><b>INTERNSHIP DETAILS</b></div>

<!--Internship Details-->


 <!-- Previous working domain -->
          <tr>
            <td>
              <label for="Prwd">Previous Working Domain (if any)</label><br>
              <input type="text" id="prwd" style="width:280px ;margin-right:41px;">


            </td>
            <td>
              <label for="Prsn">Previous Stipend</label><br>
              <input type="number" id="prsn" style="width:280px;margin-right:41px;">
            </td>
          </tr>
<!--company name-->
  <tr>
            <td colspan="2">
              <label for="cn">Company Name</label><br>
             <input type="text" id="cn" style="width:600px" >
            </td>
          </tr>












        </table>
    </div>
    <input type="submit" class="btn btn-primary" value="Apply" style="margin-left:926px  ; margin-top:12px; font-family:sans-serif;  font-size: 16px; width: 90px;border-radius: 2px ;">
</form>


      

    <!-- script -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>