Short description: This project is an Active Directory lab built on Microsoft Azure. The basis of this lab is to simulate everyday helpdesk operations and domain administration within a small office.
<br>
<br>
<br>
I started this project by creating 2 virtual machines on Microsoft Azure. "DC1" which is the Domain Controller and "CLIENT2" being the end user's PC.
<img width="1064" height="148" alt="image" src="https://github.com/user-attachments/assets/a22842b4-5013-4db6-9a4c-ff455b2c76e8" />
<br>
<br>
<br>
As soon as DC1 was created, I installed Active Directory and created my domain which is called "lainecorp.local"
<img width="1350" height="263" alt="image" src="https://github.com/user-attachments/assets/192c94fe-700e-4c9a-a02f-96850b4d878b" />
<br>
<br>
<br>
After creating my "lainecorp.local" domain, the next objective was to link "CLIENT2" to the "DC1" domain and that starts with sharing the same IP address which is 10.0.1.4. I would later go into the system properties and manually linked CLIENT2 to DC1.
<img width="391" height="208" alt="image" src="https://github.com/user-attachments/assets/a49b2605-7863-4fc1-8224-95febf090baf" /> <img width="370" height="121" alt="image" src="https://github.com/user-attachments/assets/32b33411-22f1-48f0-b897-cc46bd5a98f7" /> 

After creating my "lainecorp.local" domain, the next objective was to link "CLIENT2" to the "DC1" domain and that starts with sharing the same IP address which is 10.0.1.4. I would later go into the system properties and manually linked CLIENT2 to DC1.
<br>
<br>
<br>
In ensuring that CLIENT2 is ACTUALLY on the same server as DC1 i went to the Command prompt and typed "nslookup lainecorp.local"
<br>

<img width="453" height="225" alt="image" src="https://github.com/user-attachments/assets/9eac881c-49e2-493c-9389-9f16e122530b" />
<br>
<br>
<br>

Since we are creating our own small office, we need add some departments as well as users or "clients" in each department. I created 3 departments: IT, HR, and Sales. Each department has 2 members each.
<img width="531" height="315" alt="image" src="https://github.com/user-attachments/assets/2f5586c0-9438-4c61-823a-3ae7cde7a1ad" />
<img width="575" height="308" alt="image" src="https://github.com/user-attachments/assets/aa1f5398-b6a0-48d3-8f85-83b44474b29d" />
<img width="577" height="306" alt="image" src="https://github.com/user-attachments/assets/c8d791b9-9e57-4d7e-b7ad-a758952a3eb4" />

Next step is creating group policies. Each office/company/corporation has its own set of rules when it comes to user account configuration logins and password complexities. The screenshots illustrates the changes made to the policies of the following:
<img width="780" height="591" alt="image" src="https://github.com/user-attachments/assets/5cdb0f94-1157-45d7-becc-7220dcfb9387" />
<img width="780" height="591" alt="Screenshot 2025-10-31 162447" src="https://github.com/user-attachments/assets/ca956d70-cc41-42ce-81b1-9f4198c74441" />


