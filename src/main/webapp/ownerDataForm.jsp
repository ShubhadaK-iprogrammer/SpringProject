<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Owner Form</title>
  </head>
  <body>
  

  <div class="content">
     
    <section class="h-100 bg-dark">
        <div class="container py-5 ">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
              <div class="card card-registration my-4">
                <div class="row g-0">
                  <div class="col-xl-6 d-none d-xl-block">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                      alt="Sample photo" class="img-fluid"
                      style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                  </div>
                  <div class="col-xl-6">
                    <div class="card-body p-md-5 text-black">
                        <form class="" name="contactForm" action="createBid"
                        method="post">

                      <h3 class="mb-5 text-uppercase">Bidding Details</h3>
      
                      <div class="row">
              
                        <div class="col-md-6 form-group mb-5 mt-5">
                            <label for="" class="col-form-label">Create Date *</label>
                            <input type="date" class="form-control" name="createdDate" id="createdDate" placeholder="Create Date">
                          </div>
                          
                           <div class="col-md-6 form-group mb-5 mt-5">
                            <label for="" class="col-form-label">Closing Date *</label>
                            <input type="date" class="form-control" name="closeDate" id="closeDate" placeholder="Closing Date">
                          </div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="" class="col-form-label">Bid Cost *</label> <input
                                type="number" class="form-control" name="bidCost"
                                placeholder="Biding Cost" >
                        </div>                    
                      <div class="row">-
                        <div class="row">
                            <div class="col-md-12 form-group mb-5">
                                <label for="message" class="col-form-label">Description
                                    *</label>
                                <textarea class="form-control" name="description" id="message"
                                    cols="30" rows="4" placeholder="Write your Description"></textarea>
                            </div>
                        </div>
                  </div>
      
                  <div class="row">
                    <div class="col-md-12 form-group">
                        <input type="submit" value="Create BID"
                            class="btn btn-primary rounded-0 py-2 px-4">


                    </div>
                </div>
</form>
      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>

  </body>
</html>