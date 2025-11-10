For this lab, I created a small office network simulation built in Cisco Packet Tracer. The goal for this project is to show fundamental understanding of networking and network segmentation. This project contains VLANs, DHCP, and router configuration.
<br>
<br>
<br>
In this lab, I used 1 router, 2 Swiches (one for HR, one IT), and 4 PCs with 2 in each respective departments.
<img width="1365" height="767" alt="Screenshot 2025-11-05 175554" src="https://github.com/user-attachments/assets/b661db05-40c7-446a-8a93-69074238e87d" />
<br>
<br>
<br>
To segment HR and IT deparments, I added some VLANs on BOTH switv. VLAN 10 signifiying HR, and VLAN 20 signifiying IT. adding VLANs on on your network aids in network traffic management, and enhanced security.
<img width="1098" height="685" alt="Screenshot 2025-11-05 175707" src="https://github.com/user-attachments/assets/2bb60a4b-5546-4e28-912f-3ee6576f4ab6" />
<img width="1059" height="664" alt="Screenshot 2025-11-05 180001" src="https://github.com/user-attachments/assets/4e1fd215-3d63-4a23-bb3d-eab5aea8c6fb" />
<br>
<br>
<br>
For the next step, I wanted to add some DHCP servers. 192.168.10.1 for HR and 192.168.20.1 for IT. On the command prompt, I typed in "show ip int brief" to ensure proper connectivity.
<img width="624" height="119" alt="Screenshot 2025-11-05 180205" src="https://github.com/user-attachments/assets/4f3ad179-f3b4-4fbc-a176-99aa4ca60cbb" />
<br>
<br>
<br>
I would then, run DCHP requests on each computer, wich of course, became successfull.
<img width="693" height="295" alt="Screenshot 2025-11-05 190305" src="https://github.com/user-attachments/assets/5d1731f7-6081-4fc5-b9ed-e9893a694f0f" />
<img width="694" height="297" alt="Screenshot 2025-11-05 190321" src="https://github.com/user-attachments/assets/0e361a5b-a98b-4a23-a2fc-170828e89c8b" />
<img width="698" height="289" alt="Screenshot 2025-11-05 184058" src="https://github.com/user-attachments/assets/3611c378-9e7f-4c79-ad9d-6424f5b3d65f" />

