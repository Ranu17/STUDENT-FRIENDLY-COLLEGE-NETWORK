# STUDENT-FRIENDLY-COLLEGE-NETWORK
THIS IS A WEBSITE DEVELOPED USING JAVA, HTML AND CSS.

# INSTALLATION AND EXECUTION DOCUMENT

TITLE :  STUDENT FRIENDLY COLLEGE NETWORK

CONTENTS

•	Purpose and Scope
•	Software Interfaces
•	Required Softwares
•	Required files for the execution of project
•	Steps for installation
•	Steps for execution


1. Purpose and Scope
Purpose
The website helps in overcoming the lack of interaction among students. It keeps the    students updated about the recent activities of the college. It solves the queries of students and provides a platform for efficient information distribution and welfare of students.
Scope
The area of application for this website (i.e. Student Friendly College Network) is within Banasthali Vidyapith. The users of this website are Admin, Registered users (students), Person and Guest User.                                        

2. Software Interfaces
Client side requirements
	Operating system: Any GUI operating system
	Browser:  Any java compatible 
Developer side requirements
	Operating system: Any GUI Operating System
	Browser: Any java compatible 
	Frontend: CSS, HTML, JSP
	Backend: SQL Server, Java
	Design Tools: Net Beans 8.1

3. Required Softwares
	MySQL Server
	Netbeans 8.0.2
	MySQL-Connector-java-5.1.45

4. Required Files for the execution of project
	Activation JAR file

5. Steps for Installation
i.	Download Netbeans 8.0.2 fromhttps://netbeans.org/downloads/8.0.2/ and MySQL from https://www.mysql.com/downloads/and complete all installation procedures.
ii.	Create a new project with JSP files same as the number of pages in your project. Write the code correspondingly to each page and keep saving the changes.
iii.	The pages in this project are:
•	MainPage.html
•	My_Site.html
•	lost_add.html
•	lost_detail_display.jsp
•	lost_detail.jsp
•	found_add.html
•	found_detail_display.jsp
•	found_detail.jsp
•	sell_add.html
•	sell_detail_display.jsp
•	sell_detail.jsp
•	Magazine.html
•	bus_add.html
•	busDisplay.jsp
•	bus_detail.jsp
•	quanti_quiz.jsp
•	apti_display.jsp
•	verbal_display.jsp
•	ques_add.html
•	add_question.jsp
•	ques_disp.jsp
•	view_ques_ans.jsp
•	add_answer.jsp
•	admin_main_1.html
•	quantitative.html
•	quiz_1.jsp
•	aptitude.html
•	apti_quiz.jsp
•	verbal.html
•	verbal_quiz.jsp

iv.	Create a MySQL database with tables as follows:
•	student_detail  (smartcard_id, first_name, last_name, father_name, course, major, password, security_answer)
•	lost_items (item_id, name, lost_image, description, location, contact, date)
•	found_items (item_id, name, description, location, contact, date)
•	sell_items (item_id, name, sell_image, description, location, contact, date)
•	bus_information (bus_id, bus_to, bus_dep_time, bus_arr_time, contact, date)
•	apti_ques (id, ques, ans1, ans2, ans3, ans4, correct_ans)
•	verbal_ques (id, ques, ans1, ans2, ans3, ans4, correct_ans)
•	quanti_ques  (id, ques, ans1, ans2, ans3, ans4, correct_ans)
•	question_answer (ques_id, ans1, ans2, ans3, ans4, ans5)

v.	For linking MySQL to Netbeans, use MySQL Connector by firstly creating a Database in Netbeans to register the MySQL Server on it. As soon as it is created, connect the database to the connector by changing the path in the admin property of ‘connect’ field.
vi.	To the project, add jar files- activation.jar, mail.jar, smtp.jar for the successful working of the mail sending functionality of the project.
vii.	Now the project is ready for execution.


6. Steps for Execution
i.	Right click on the MainPage.html in Netbeans and open the browser(Google chrome) to view it. The main page is the login page as well as the sign up page. The registered users can login and the guest users can sign up on this page. If it is the person, then the person is directed to the found page.

ii.	There are two possibilities for login, if she is a student, then she reaches the student page, if she is the admin, then she reaches the admin page.


STUDENT ACTIVITIES

iii.	We have given space to columns like Lost and Found where students can give details of lost belongings and also information can be put if someone (students or person) has found some unknown belonging.

iv.	The Sell column will give facility to share information if someone wants to sell items. 

v.	The Banasthali Booked Buses column will help students know if any (from Banasthali to a particular destination) bus is made available from the campus and they can contact the undersigned person to book their seats.

vi.	The e-magazine column will have complete information about the various events and latest activities of the college and will also contain some other interesting blogs.

vii.	The Question/Answer column will provide students to put up queries and get answers to their questions by other students.

viii.	The Quiz is provided to students so that they can solve quantitative, verbal and non-verbal questions.


ADMIN ACTIVITIES


ix.	Admin can perform all the activities of a student.

x.	Apart from that Admin updates the questions for quiz as well as the e-magazine on a regular basis.



By following these steps, one can successfully install and execute Student Friendly College Network on their Desktop PC or their laptops.

