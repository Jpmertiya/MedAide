
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body{
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;

            }
            section{
                background: url("images/background.jpg");
                background-position: center;
                background-size: cover;
                height: 100vh;
                width: 100vw;
                padding: 0px;
                overflow-x: hidden;
            }
            .container{
                position: relative;
                /*max-width: 1200px;*/
                width: 100%;
                border-radius: 16px;
                padding: 0px;
                margin: 0 15px;
                background: transparent;
                border-radius: 22px;
                box-shadow: 5px 5px 10px 4px goldenrod;
                

            }
            .heading{
                top: 10%;
                position: relative;
                font-size: 20px;
                font-weight: 600;
                color: blue;
                /*background-color: goldenrod;*/
                width: 49%;
                margin-bottom: 20px;
                justify-content: center;
                align-items: center;
                display: flex;

            }
            .heading h2{
                color: black;
                justify-content: center;
                align-items: center;
            }
            .container form{
                position: relative;
                padding: 10px 20px;
                margin-top: 16px;
                min-height: 490px;
                /*background-color: #fff;*/
                background: transparent;
                color: black;
                box-shadow: 3px 3px 15px 0 white;
                /*overflow-y: scroll;*/
            }
            .container form .form{
                position: absolute;
                background-color: #fff;
                transition: 0.3s ease;
            }

            .container form .title{
                display: block;
                margin-bottom: 8px;
                font-size: 16px;
                font-weight: 500;
                margin: 6px 0;
                color: black;
            }
            .container form .fields{
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-wrap: wrap;

            }
            form .fields .input-field{
                display: flex;
                width: calc(100% / 3 - 15px);
                flex-direction: column;
                margin: 4px 0;
            }
            .input-field label{
                font-size: 12px;
                font-weight: 500;
                color: black;
                ;
            }
            .input-field input, select{
                outline: none;
                font-size: 14px;
                font-weight: 400;
                color: #333;
                border-radius: 5px;
                border: 1px solid #aaa;
                padding: 0 15px;
                height: 42px;
                margin: 8px 0;
            }
            .input-field input :focus,
            .input-field select:focus{
                box-shadow: 0 3px 6px rgba(0,0,0,0.13);
            }
            .input-field select,
            .input-field input[type="date"]{
                color: #707070;
            }
            .input-field input[type="date"]:valid{
                color: #333;
            }
            .container form button{
                display: flex;
                align-items: center;
                justify-content: center;
                height: 45px;
                max-width: 200px;
                width: 100%;
                border: none;
                outline: none;
                color: #fff;
                border-radius: 5px;
                margin: 25px 0;
                background-color: #4070f4;
                transition: all 0.3s linear;
                cursor: pointer;
                text-transform: uppercase;
            }
            .container form .btnText{
                font-size: 14px;
                font-weight: 400;
            }
            form button:hover{
                background-color: #265df2;
            }
            form button i
            {
                margin: 0 6px;
            }

            form .buttons{
                display: flex;
                align-items: center;
            }
            form .buttons button {
                margin-right: 14px;
            }

            @media (max-width: 750px) {
                .container form{
                    overflow-y: scroll;
                }
                .container form::-webkit-scrollbar{
                    display: none;
                }
                form .fields .input-field{
                    width: calc(100% / 2 - 15px);
                }
            }

            @media (max-width: 550px) {
                form .fields .input-field{
                    width: 100%;
                }
            }
        </style>

    </head>
    <body>
        <%@include file="login-navbar.jsp" %>
        <section>
            <div class="container">
                <!--<header>Registration</header>-->

                <form id="reg-form" action="service_taker_servlet" method="POST">
                    <div class="heading">
                        <h2>User Registration form</h2>
                    </div>

                    <div class="first">
                        <div class="details personal">
                            <span class="title">Personal Details</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Full Name</label>
                                    <input type="text" name="user-name" placeholder="Enter your name" required>
                                </div>

                                <div class="input-field">
                                    <label>Date of Birth</label>
                                    <input type="date" name="DOB" placeholder="Enter birth date" required>
                                </div>

                                <div class="input-field">
                                    <label>Email</label>
                                    <input type="text" name="email" placeholder="Enter your email" required>
                                </div>

                                <div class="input-field">
                                    <label>Mobile Number</label>
                                    <input type="number" name="number" placeholder="Enter mobile number" required>
                                </div>

                                <div class="input-field">
                                    <label>Gender</label>
                                    <select required name="gender">
                                        <option disabled selected>Select gender</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Others</option>
                                    </select>
                                </div>

                                <div class="input-field">
                                    <label>Occupation</label>
                                    <input type="text" name="occupation" placeholder="Enter your ccupation" required>
                                </div>
                            </div>
                        </div>

                        <div class="details family">
                            <span class="title">Family Details</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Father Name</label>
                                    <input type="text" name="fname" placeholder="Enter father name" required>
                                </div>

                                <div class="input-field">
                                    <label>Mother Name</label>
                                    <input type="text" name="mname" placeholder="Enter mother name" required>
                                </div>

                                <div class="input-field">
                                    <label>Guardian Name</label>
                                    <input type="text" name="spouse_name" placeholder="Enter spouse name" required>
                                </div>
                            </div>
                        </div> 

                        <div class="details ID">
                            <span class="title">Identity Details</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>ID TYPE</label>
                                    <select required name="ID_type">
                                        <option disabled selected>Select ID</option>
                                        <option>AADHAR CARD</option>
                                        <option>DRIVING LICENSE</option>
                                        <option>VOTER ID</option>
                                    </select>
                                </div>

                                <div class="input-field">
                                    <label>ID Number</label>
                                    <input type="number" name="ID_number" placeholder="Enter ID number" required>
                                </div>

                                <div class="input-field">
                                    <label>authority</label>
                                    <select required name="ID_authority">
                                        <option disabled selected>Select authority</option>
                                        <option>Center</option>
                                        <option>State</option>
                                    </select>
                                </div>

                            </div> 
                            <div class="details address">
                                <span class="title">Address Details</span>

                                <div class="fields">
                                    <div class="input-field">
                                        <label>Address Type</label>
                                        <select required name="address_type">
                                            <option disabled selected>Select type</option>
                                            <option>Permanent</option>
                                            <option>Temporary</option>
                                        </select>
                                    </div>
                                    <div class="input-field">
                                        <label>District</label>
                                        <input type="text" name="district" placeholder="Enter your district" required>
                                    </div>

                                    <div class="input-field">
                                        <label>PINCODE</label>
                                        <input type="number" name="block_number" placeholder="Enter block number" required>
                                    </div>
                                    <div class="input-field">
                                        <label>State</label>
                                        <input type="text" name="state" placeholder="Enter your state" required>
                                    </div>
                                    <div class="input-field">
                                        <label>Nationality</label>
                                        <input type="text" name="nationality" placeholder="Enter nationality" required>
                                    </div>
                                    <div class="input-field">
                                        <label>Landmark</label>
                                        <input type="text" name="landmark" placeholder="Enter landmark" required>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <button type="submit" id="submit-button">submit</button>
                </form>
            </div>
        </section>





        <!--js from bootstrap-->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" 
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>


        <!--alert cdn-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">

        </script>


        <script>
            $(document).ready(function () {

                console.log("loading...");

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);

                        console.log("inside service taker ajex");
//                   send register sevlet
                    $.ajax({
                        url: "service_taker_servlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {

                            $("#submit-button").show();
                            $("#loader").hide();
                            if (data.trim() === 'Done.') {
                                swal("Good job!", "Account created successfully!", "success")
                                        .then((value) => {
                                            window.location = "index.jsp";
                                        });
                                ;
                            } else {
                                swal("Error!", "Invalid data. Might be email is or some of entry is not filled not unique", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            swal("Fail!", "problem occured!", "error")
                        },
                        processData: false,
                        contentType: false

                    });
                });

            });
        </script>
    </body>
</html>
