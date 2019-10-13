<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Student Friendly College Network</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
        <link rel="stylesheet" href="fontawesome/css/all.css">
        <link rel="icon" href="image/LogoSite.png" type="image/png" sizes="16x16">
        <link rel="stylesheet" href="my.css">
      
      
    </head>
    <body>
        
        
     <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
     <a class="navbar-brand" href="#" style="font-family: 'Dancing Script', cursive; font-size: 28px;"><img src="image/LogoSite.png"> College Network for Banasthali Vidypith</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-label="Toggle navigation">
     </button>
  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
     <ul class= "nav navbar-nav navbar-right" style="margin-left: 530px">
            <li class="nav-item active">
              <a class="nav-link"  data-toggle="collapse" href="image/newmember.jpg" target="_blank"></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#" data-toggle="tooltip" data-placement="left" title="This website helps you to explore Banasthali and provides interaction among the students.">About Us</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#sec0" onclick="showDiv()">Contact Us</a>
            </li><li class="nav-item active">
              <a class="nav-link"  data-toggle="collapse" href="MainPage.html">Log Out</a>
            </li>
    </ul>
  </div>
</nav>
        <section id=sec0>
            <ul id=ul2>
                
                <li><a href="#sec1">Lost</a></li>
                <li><a href="#sec3">Found</a></li>
                <li><a href="#sec2">Sell</a></li>
                <li><a href="#sec4">Magazine</a></li>
                <li><a href="#sec5">Booked Buses</a></li>
                <li><a href="#sec6">Take Quiz</a></li>
                <li><a href="#sec7">Question/Answer</a></li>
            </ul>
            <div id=front>
                <span id="capt">WELCOME <span id=capt1>TO THE COLLE</span>GE NETWORK</span>
            </div>
            
            <div style="margin-left: 1000px; margin-top: 300px; color: white ;display:none" id=welcomeDiv1>
            <span>Rakhi Singh: singhrakhi93@gmail.com<br></span>
            <span>Ranu Rajput: r.rajput1198@gmail.com<br><span>
            <span>Rashi Agrawal: agrawal.rashi98@gmail.com</span>
            </div>
        </section>
                <section id=sec1>
                    <br><br>
                <div id=main-div>
                <input type="button" name="add_lost" value="ADD ITEMS" class="btn btn-info" onclick="location.href='lost_add.html'">
                <br><br><br><br><br>
                <span style="font-family: 'Dancing Script', cursive; font-size: 28px; color: white">
                The Lost section will let you post the items you have lost.
                <br>
                You may fill up the details in the <b> ADD </b> section and let the people know of you lost stuff.
                <br>
                Giving your contact detail will help people to contact you if the find it.
                <br>
                To see the details of lost items you may click the <b>VIEW LOST ITEM.</b></span>
              
                <br><br><br><br><br><br>
                <input type="button" name="view_lost" value="VIEW LOST ITEMS" class="btn btn-info" onclick="location.href='lost_detail_display.jsp'">
            </div>
           
        </section>
        
        <section id=sec2>
            <br><br>
            <div id=main-div>
                <input type="button" name="add_sell" value="ADD ITEMS" class="btn btn-info" onclick="location.href='sell_add.html'" >
                <br><br><br><br>
                <span style="font-family: 'Dancing Script', cursive; font-size: 28px; color: white">
                    
                  The Sell section will let you post the items are on sale.
                <br>
                You may fill up the details in the <b> ADD </b> section and let the people know about the items you want to sell.
                <br>
                Giving your contact detail will help people to contact you if they want to buy your items.
                <br>
                To see the details of items on sale you may click the <b>VIEW ITEMS ON SALE.</b></span>
              
                <br><br><br><br>
                <input type="button" name="view_sell" value="VIEW ITEMS ON SALE" class="btn btn-info" onclick="location.href='sell_detail_display.jsp'">  
                
            </div>
        </section>
        
        
        <section id="sec3">
            <br><br>
            <div id=main-div>
                <input type="button" name="add_found" value="ADD ITEMS" class="btn btn-info" onclick="location.href='found_add.html'">
                <br><br><br>
                <span style="font-family: 'Dancing Script', cursive; font-size: 28px; color: white">
                    
                 The Found section will let you post the items that are lost by someone and you have found it.
                <br>
                You may fill up the details in the <b> ADD </b> section and let the people know about the items you have found.
                <br><
                Giving your contact detail will help people to contact you if the item you found belongs to that particular person.
                <br>
                To see the details of items found you may click the <b>VIEW FOUND ITEMS.</b></span>
              
                <br><br><br>
                <input type="button" name="view_found" value="VIEW FOUND ITEMS" class="btn btn-info" onclick="location.href='found_detail_display.jsp'">
            </div>
        </section>
        
        
        <section id=sec4>
            <br><br>
            <div id=main-div>
                <input type="button" name="view_magazine" value="VIEW MAGAZINE" class="btn btn-info" onclick="location.href='Magazine.html'">
                <br> <br><br><br> <br>
                 <span style="font-family: 'Dancing Script', cursive; font-size: 28px; color: black">
                Click the <b>VIEW MAGAZINE</b> button to have a ride of an interesting magazine of your University.<br>
                The magazine brings you the latest vibes in the atmosphere.
                <br>
                 </span>
                
            </div>
        </section>
         <section id=sec5>
             <br><br>
             
             <form name="f1" action="busDisplay.jsp">    
            <div id="main-div">

                <input type="submit" name="book_bus" value="ADD ITEMS" class="btn btn-info" onclick="window.location.href='bus_add.html'">
                <br>
                <p>From:</p>
               <!-- <p style="font-weight:bold;font-family:cursive;font-size: 18px">BANASTHALI</p><br>-->
               <input type="text" value="BANASTHALI" name="banasthali" readonly><br><br>
                <p >To:</p>
                <select name="major" class="form-control">
                            <option value="" disabled selected>
                                TO
                            </option>
                            <option >
                                Delhi
                            </option>
                             <option >
                                Faridabad
                            </option>
                             <option >
                                Meerut
                            </option>
                             <option>
                                Haldwani
                            </option>
                            <option >
                                Jaipur
                            </option>
                            <option >
                                Agra
                            </option>
                </select><br><br>
                <input type=date name="date1" title="Please provide the valid date !" required><br><br>
                <center> <input type="submit" name="btn_bus" value="SEARCH BUSES" class="btn btn-info">
                </center>
            </div>
             </form>
             <!-- session.setAttribute("btn_bus", btn_bus);-->
           
        </section>
         <section id=sec6>
             <br>
            <div id=main-div>
                <button class="button" onclick="location.href='quanti_quiz.jsp'" data-toggle="tooltip" data-placement="left" title="In this section, you can find numerous aptitude questions.The quantitative aptitude section covers various categories and extremely helpful for competitive exams.">Quantitative</button><br>
                <button class="button" onclick="location.href='apti_display.jsp'" data-toggle="tooltip" data-placement="left" title="A standardized test designed to predict an individual's ability to learn certain skills">Aptitude</button><br>
                <button class="button" onclick="location.href='verbal_display.jsp'" data-toggle="tooltip" data-placement="left" title="Verbal Aptitude is the ability to use the written language and to understand concepts presented through words. Verbal aptitude tests can be many different things: They can assess a person's ability to spell words correctly, use correct grammar, understand word meanings, understand word relationships, and/or interpret detailed written information.">Verbal</button>
            </div>
        </section>
        
        
        <section id=sec7>
             <br>
            <div id=main-div>        
        <input type="Submit" class="button" name="Submit" value="ASK QUESTION" onclick="location.href='ques_add.html'"><br><
        <input type="Submit" class="button" name="Submit" value=" ADD ANSWER" onclick="location.href='quesdisp.jsp'"><br>
        <input type="Submit" class="button" name="Submit" value="VIEW Q/A" onclick="location.href='view_ques_ans.jsp'"><br>
        
           
         <br><br>
         
            </div>
        </section>
        
        
        <footer style="background-color:#303030;
                           padding-top: 30px;
                           padding-bottom:10px;
                           padding-left:790px; 
                           font-size: 20px;
                           color:white;
                          font-family: 'Dancing Script', cursive;">
                <p> Copyright &copy; Rakhi Singh, Ranu Rajput, Rashi Agrawal</p>
            </footer>
    </body>
</html>
