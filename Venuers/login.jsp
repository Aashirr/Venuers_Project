
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="assets/css/styles.css" rel="stylesheet" />
    <style>
        .paina {
      text-align: center;
      background-color: black;
      color: white;
    }

    .center {
	  margin: 0% 30%;
	  /*margin-top: 30px;
	  width: 60%; */
	  border: 3px solid #73AD21;
	  padding: 10px;
	  top: 50%;

	}
	
	body{
        background-image: linear-gradient(140deg, #EADEDB 0%, #BC70A4 50%, rgb(202 206 235) 100%);
        background-size: cover;
        background-attachment: fixed;
        background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <div class="paina" id="paina">
        FREE SHIPPING ALL OVER INDIA | EARN LOYALTY POINTS WITH EVERY ORDER
    </div>
    <jsp:include page="headernav.jsp"></jsp:include>  


            <%
                 String credential = (String) session.getAttribute("credential");
                 if (credential != null) {
                     session.removeAttribute("credential");
             %>
             <div class="alert alert-danger" id="danger" style="width: 680px;">You have enter wrong credentials.</div>
             <%
                 }
             %>
        <br><br><br>
        <div class="center">
        <form action="CustomerLogin" method="post">
            <div class="mb-3" >
              <!-- <label for="exampleInputEmail1" class="form-label">Email address</label> -->
              <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email address"  >
              
            </div>
            <div class="mb-3">
              <!-- <label for="exampleInputPassword1" class="form-label">Password</label> -->
              <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password"  >
            </div>
            
            <button type="submit" class="btn btn-outline-primary" onclick="location.href='final.html'"  >Login</button>
          </form>
          </div>

    
</body>
</html>