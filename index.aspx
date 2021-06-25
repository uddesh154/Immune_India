<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication7.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style>
        .vaccinations-image {
            width: 40%;
        }
    </style>




    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <!--Javascript-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
       <section id="vaccinations">

            <div id="vaccinations-carousel" class="carousel " data-ride="carousel" data-pause="hover" data-interval="1000">

                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <img class="vaccinations-image" src="vaccination1.jpeg" alt="">

                    </div>
                    <div class="carousel-item">

                        <img class="vaccinations-image" src="vaccination2.jpeg" alt="">



                    </div>

                    <div class="carousel-item">
                        <img class="vaccinations-image" src="vaccination3.jpeg" alt="">
                    </div>

                    <div class="carousel-item">
                        <img class="vaccinations-image" src="vaccination4.jpeg" alt="">
                    </div>

                </div>


            </div>




        </section>
    </form>
</body>
</html>
