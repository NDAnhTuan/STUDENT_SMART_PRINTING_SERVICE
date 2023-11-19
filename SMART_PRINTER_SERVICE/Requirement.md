
1. Description of HCMUT\_SSPS System 
   1. Domain context of HCMUT\_SSPS at HCMUT 

The Ho Chi Minh City University of Technology (HCMUT) is currently working on establishing the Smart Printing Service for students (HCMUT-SSPS) as part of their efforts to improve academic services and convenience within the campus. HCMUT-SSPS is a convenient and dedicated printing system for students, with the goal of providing a convenient and efficient way for students to print documents for their academic and research needs. This system will integrate printers available on the university campus and allow students to experience fast and time-saving printing services. 

1\.2 Stakeholders in SPSS System 

1\.2.1. Direct users: Students are the primary group in this project, which also means they are the people who use the service the most frequently. In addition, instructors will also have access to this system. 

1\.2.2. HCMUT\_SSPS Administrator: This is the department responsible for managing the entire SSPS system directly. The SSPS Admin department can be structured into several sub-departments, and two important ones should be mentioned: 

• Regarding the project management department: This is the department in charge of finances, providing directions, and planning for the project. 

• The development and system installation department: This department receives guidance and directions from the management department and develops the project according to this plan (coding). This department is responsible for writing, managing, modifying, maintaining, and updating the system’s functions to align with the management department’s directions, ensuring security and more. 

1\.2.3. Student Printing Service Officers (SPSO): This is the department where staff members are responsible for managing and configuring settings, monitoring students’ printing tasks during the printing process, ensuring they align with the provided plan and standards set by the Admin. 

1\.2.4. Authentication for Printing Web: This is the department responsible for authenticating user accounts when logging into the SSPS system. 

1\.2.5. Onlinepayment system: "This is the department responsible for handling paymentrelated issues within the system." 

1\.3 Stakeholders’ needs and benefit of HCMUT\_SPSS 

1\.3.1. For direct users: 

• Communicating speed with SSPS fast, flexible, and with minimal steps to avoid confusion. 

• Available to print (with the ability to change the attributes of the pages to be printed), upload various file types, and support additional printing (if allocated pages run out) through extra payment. Assignment for Software Engineering - Academic year 2023 - 2024 Page 3/8 University of Technology, Ho Chi Minh City Faculty of Computer Science and Engineering

` `• Have a "user-friendly" interface, which has basic functions such as uploading files; selecting printers; printing tasks such as paper size, single or double-sided, number of copies, remaining pages, and adding credit to continue using SSPS (when additional pages are needed). 

• Since SSPS is built right on the campus, it provides convenience for users as they don’t need to search for external print shops, saving both time and effort. SSPS also simplifies and modernizes the printing process: users can upload files from anywhere using smart devices, saving time and reducing the hassle of searching for printers. They also have full control over their printing process, from uploading files to selecting printers and configuring printing properties. 

• Using SSPS ensures the security of users’ information and documents, as they are processed safely. The SSPS service aligns with the needs of modern education for seamless digital access, which is currently trending. 

1\.3.2. For the HCMUT\_SSPS Administrator: 

• This department is essentially the creative hub responsible for conceiving and developing ideas for HCMUT\_SSPS with the goal of improving intelligent learning services that provide convenience for students to enhance their learning experience. HCMUT\_SSPS will assist the SSPS Administrator in efficiently managing students’ print jobs, reducing reliance on manual printing processes, and ensuring compliance with university regulations. This simplifies their work and makes it more efficient. 

• Managing printing resources and paper consumption sustainably, while simultaneously improving educational services for students. It also contributes to raising awareness about environmental conservation. 3. For SPSO (Student Printing Service Officers): 

• Manage and configure setting of students’ printing tasks and ensuring that the printing pro0cess aligns with the provided plan from higher authorities, with the aim of enh0ancing modernization and simplification in the students’ learning process. HCMUT-SSPS is the system that will support SPSO in achieving this. 

1\.4. Authentication for Printing Web: 

• Ensure that all users are under the management of the university and act in the collective interest of the institution. 

• Create a trustworthy service environment, minimizing disruptions from external parties and reducing risks to the system. 

• Easily manage financial resources and impose penalties for any acts of sabotage or misconduct. 5. Online payment system: 

• Users should be able to transparently manage their account balances, feeling secure and trustworthy when conducting any transactions with the system. 

• Ensures consistency in tracking the funds entering the system, making it easier to manage resources, generate capital, and allocate funds for system development, maintenance, or other university activities. 

• Can be combined with free document printing for individuals through the university’s scholarship programs to incentivize students

1. Describe all functional and non-functional requirements 

Requirements that are well thought through and clearly documented are essential to any successful software engineering project. There are two main different types of system requirements that should be gathered by those working on software projects. System requirements can be categorized as either functional requirements or non functional requirements. Functional Requirements: Specific features and functions that a system must possess in order to meet the needs and expectations of its stakeholders. They define what the system must do and are usually described in terms of inputs, processes, and outputs. Non-functional Requirements: Specific attributes or qualities that a system must possess, but they are not directly related to a particular function or feature of the system. 

2\.1 Functional requirements 

2\.1.1 Functional Requirements for End Users (Adjusted for Teachers) 

• File Upload: Students and teachers should be able to upload document files to the system. 

• Printer Selection: Students and teachers should be able to choose a printer from the available options. 

• Printing Properties: Students and teachers should be able to specify printing properties such as paper size, pages to be printed, one-/double-sided printing, and the number of copies. 

• File Type Validation: The system should validate the uploaded file to ensure it is of a permitted file type. 

• Printing History and Log Viewing: End users should have the ability to view their printing history and logs within the system. The printing history and log should provide details such as the timestamp of each print job, the printer used, and any associated costs. 

• Print Confirmation: Students and teachers should receive a confirmation message or notification after successfully submitting a print job.

• Queue Status Display: The SPSO should have a function to display the number of orders in each queue and the estimated time to complete for each printer. 

• Priority Queue: Implement two types of priority queues for print jobs: – Regular Queue (MLQ - First Come First Serve): All print jobs, both from students and teachers, will be added to the regular queue and processed based on the FCFS principle. – Premium Queue: Teachers requiring urgent printing will have their print jobs prioritized in the premium queue, ensuring they are processed with higher priority than regular print jobs. Students would be able to use this premium queue if they pay additional money. 

• Adjustments for Teachers: – Pricing Adjustment: Teachers should be able to purchase paper at a discounted price compared to students. – Paper Allocation Adjustment: Teachers should have a higher allocation of free papers compared to students. Assignment for Software Engineering - Academic year 2023 - 2024 Page 5/8 University of Technology, Ho Chi Minh City Faculty of Computer Science and Engineering 

2\.1.2. Functional Requirements for Student Printing Service Officer (SPSO) 

• File Type Configuration: The SPSO should be able to configure and manage the permitted file types for printing. 

• Printer Management: The SPSO should have the ability to add, remove, or update printer options in the system. 

• Printing Properties Configuration: The SPSO should be able to define and modify the available printing properties, such as paper size options and supported double-sided printing. 

• Printing History and Log Viewing for SPSOs: The system should enable the SPSO to view the printing history and logs of all students/teachers or a specific student/teacher for a given time period (date to date). The printing history and log should provide detailed information, including the timestamp, student name, printer used, number of printed pages, and page sizes for each print job. 

• Access Control: The SPSO should have administrative privileges to manage student accounts, monitor print jobs, and generate usage reports. 

• Error Handling: The SPSO should be notified or provided with error logs in case of any system failures or issues. 

3. Functional Requirements for HCMUT\_SSPS Administrator: 

• SPSO Management: The SSPS administrator should be able to manage other Service Provider System Operators (SPSOs) within the system. It should have the ability to create, modify, delete SPSO accounts, and the capability to view and monitor the activities and performance of individual SPSOs. The main duty of SSPS administrator is to assign roles and permissions to SPSOs based on their responsibilities and access requirements 

• Reporting and Analysis: The SSPS should have the capability to collect reports from SPSOs regarding the usage, performance, feedback of the system, and be able to generate and submit reports that provide insights and analysis on various aspects of the system, such as user trends, printing patterns, and functionality requirements. 

• Source Code Customization: The SSPS administrator should have the capability to adjust the source code of the system to cater to specific customization requirements. They should be able to modify the system’s codebase to introduce new features, enhance existing functionalities, or integrate with external systems. 

2\.1.4	Functional Requirements for HCMUT\_SSO authentication service: 

• Authentication Integration: The system should integrate with the HCMUT’s internal authentication system or Single Sign-On (SSO) solution to perform user authentication. 

• Internal User Access: The system should only allow users within the internal network of the Bach Khoa University (HCMUT) to log in. 

• User Authentication: All users must undergo authentication before being granted access to the system. The authentication process should verify the user’s identity and credentials. Assignment for Software Engineering - Academic year 2023 - 2024 Page 6/8 University of Technology, Ho Chi Minh City Faculty of Computer Science and Engineering 

2\.1.5. Functional Requirements for Online Payment System: 

• Available Pages: The system should display the number of available print pages for each user account. Users should be able to view the remaining print pages associated with their account. 

• Buy Page Feature: The system should provide a Buy Page feature that allows users to purchase additional print pages. The Buy Page feature should calculate and display the specific amount of money required to add a certain number of pages. 

• Integration with digibank: The system should integrate with a digibank platform, to enable students to make payments via bank accounts (or other electronic wallets). 

2\.2 Non-functional Requirements 

• User-Friendly Interface: The system should have an intuitive and easy-to-use interface for both end users (students) and SPSOs to navigate and interact with. To evaluate, we are using Usability Score (e.g., measured through user surveys or usability testing), and the target is at least 80% of users should rate the interface as "easy to use" or "very easy to use" in user satisfaction surveys. 

• Fast Response Time: The system should provide quick responses for actions such as file uploads, printer selection, and specifying printing properties. The metric to evaluate it would be using Average Response Time (measured in milliseconds). The system should respond to user actions within 5 seconds on average. 

• Reliability: The system should be available and reliable for both end users (students) and SPSOs to use at any time without frequent downtime or disruptions. For evaluation, we will use Uptime Percentage Metric (measured over a specific time period). The system should have an uptime of at least 99.9% during a given period. 

• Security: The system should ensure the confidentiality and integrity of uploaded documents and student data. By using Vulnerability Assessment Score (e.g., based on penetration testing results), we can ensure that the system will undergo regular security assessments, with no critical security vulnerabilities identified. 

• Scalability: The system should be able to handle a large number of concurrent print requests, especially during peak times. It should be able to handle, for example, 500 concurrent print requests without significant degradation in performance. To satisfy this requirement, we can use some metrics, for example, Concurrent Request Handling Capacity (measured as the maximum number of simultaneous print requests),... 

• Administrative Interface: The system should provide a secure and user-friendly interface for SPSOs to configure settings, manage printers, and monitor print jobs. To evaluate, we can use Usability Score, and to satisfy this requirement, we expect that at least 80% of SPSOs should rate the administrative interface as "easy to use" or "very easy to use" in user satisfaction surveys. 

• Performance: The system should handle the SPSO’s administrative tasks efficiently, ensuring fast response times and minimal delays. It should be capable of handling concurrent administrative actions without compromising performance. This requirement ensures that the SPSO can accomplish their tasks in a timely manner, enhancing productivity and user satisfaction. Using Average Response Time for Administrative Tasks, we expect that the Assignment for Software Engineering - Academic year 2023 - 2024 Page 7/8 University of Technology, Ho Chi Minh City Faculty of Computer Science and Engineering system would provide a fast response time, with administrative tasks completing within 3 minutes on average. 

• Auditability: The system should log and track the SPSO’s actions for accountability and auditing purposes. This requirement ensures that the SPSO’s activities within the system can be monitored and reviewed if needed. By using Audit Log Completeness Metric, we can ensure that the system would accurately log at least 95% of the SPSO’s actions for auditing and accountability purposes. 

• Backup and Recovery: The system should have regular data backups and a disaster recovery plan to prevent data loss and ensure business continuity. This requirement safeguards the system’s data and provides a mechanism to restore it in case of any unforeseen incidents. We can use both Backup Frequency and Recovery Time to evaluate for the system. The system should have regular data backups, with a recovery time objective (RTO) of 4 hours or less in case of a failure. 

• Compatibility: The system should be compatible with different web browsers and devices to accommodate the SPSO’s preferences and work environment. This requirement ensures that the SPSO can access and use the system seamlessly from their preferred browsers and devices. The system should be compatible with the latest versions of popular web browsers (e.g., Chrome, Firefox, Safari) and support at least 90% of commonly used devices. By using Browser and Device Compatibility, we would be able to ensure that.



