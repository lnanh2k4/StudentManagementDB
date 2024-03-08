﻿INSERT INTO Subject(SuID,SuName,SuNoCredit,SuPrerequisite) VALUES 
('OTP101', ' Orientation and General Training Program' , ' 0', ''),
('PEN', ' Preparation English', ' 0', ' '),
('PHE_COM*1', ' Physical Education 1', ' 2', ' '),
('TMI_ELE', ' Traditional musical instrument', ' 3', ' '),
('CEA201', ' Computer Organization and Architecture', ' 3', ' '),
('CSI104', ' Introduction to Computer', ' 3', ' '),
('MAE101', ' Mathematics for Engineering', ' 3', ' '),
('PHE_COM*2', ' Physical Education 2', ' 2', ' '),
('PRF192', ' Programming Fundamentals', ' 3', ' '),
('SSL101c', ' Academic Skills for University Success', ' 3', ' '),
('MAD101', ' Discrete mathematics', ' 3', ' '),
('OSG202', ' Operating Systems', ' 3', ' '),
('PHE_COM*3', ' Physical Education 3', ' 2', ' '),
('PRO192', ' Object-Oriented Programming', ' 3', ' Pass PRF192'),
('SSG104', ' Communication and In-Group Working Skills', ' 3', ' '),
('CSD201', ' Data Structures and Algorithms', ' 3', ' PRO192'),
('DBI202', ' Introduction to Databases', ' 3', ' '),

('JPD113', ' Elementary Japanese 1- A1.1', ' 3', ' '),
('LAB211', ' OOP with Java Lab', ' 3', ' PRO192'),
('JPD123', ' Elementary Japanese 1-A1.2', ' 3', ' JPD113'),
('MAS291', ' Statistics & Probability', ' 3', ' MAE101 or MAC101'),
('PRC391c', ' Cloud Computing', ' 3', ' PRO192'),
('PRJ302', ' Java Web Application Development', ' 3', ' DBI202, PRO192'),
('SWE201c', ' Introduction to Software Engineering', ' 3', ' PRO192 (not applied to the BIT_AI17 and BA programs)'),
('DTA301', ' Data Analysis', ' 3', ' PRO192, CSD201, DBI202, MAS291'),
('ISM302', ' Enterprise Resource Planning (ERP)', ' 3', ' '),
('ISP392', ' Information System Programming Project', ' 3', ' PRJ302, SWE201c'),
('ITA301', ' Information System Design & Analysis', ' 3', ' ITA203c, DBI202'),
('ITE302c', ' Ethics in IT', ' 3', ' None'),
('ENW492c', ' Academic Writing Skills', ' 3', ' '),
('OJT202', ' On-The-Job Training', ' 10', ' Students attain 90% of the total credits from term 1-term 5 (excluding Physical Education and OTP Programs) Students choosing JS combo (Japanese Bridge Engineer) have to pass JPD123'),
('EXE101', ' Experiential Entrepreneurship 1', ' 3', ' '),
('IS_COM*1', ' Subject 1 of Combo*', ' 3', ' '),
('IS_COM*2', ' Subject 2 of Combo*', ' 3', ' '),
('ISC301', ' e-Commerce', ' 3', ' Recommended to take this course after OJT'),
('ITB302c', ' Business Intelligence (BI)', ' 3', ' '),
('EXE201', ' Experiential Entrepreneurship 2', ' 3', ' EXE101'),
('IS_COM*3', ' Subject 3 of Combo*', ' 3', ' '),
('IS_COM*4', ' Subject 4 of Combo*', ' 3', ' '),
('MLN111', ' Philosophy of Marxism', ' 3', ' '),
('MLN122', ' Political economics of Marxism', ' 2', ' '),
('PMG201c', ' Project Management', ' 3', ' None'),
('HCM202', ' HCM Ideology', ' 2', ' MLN111, MLN122'),
('IS_GRA_ELE', ' Graduation Elective - Information System', ' 10', ' '),
('MLN131', ' Scientific socialism', ' 2', ' MLN111, MLN122'),
('VNR202', ' History of CPV', ' 2', ' MLN111, MLN122'),
('NWC204', 'Computer Networking ', '3 ', ' '),
('PRM392','Mobile Programming','3','PRO192'),
('SWP391', 'Software development project', '3', 'PRJ301, SWE201c'),
('SWR302', 'Software Requirement', '3', 'SWE102 or SWE201c'),
('SWT301', 'Software Testing', '3', 'SWE102 or SWE201c'),
('WDU203c', 'UI/UX Design', '3', ''),
('SWD392', 'Software Architecture and Design', '3', 'SWE201c, PRO192'),
('IOT102', 'Internet of Thing', '3', 'Familiarity with C programming'),
('PRN211', 'Basis Cross-Platform Application Programming With .NET', '3', 'PRO192 & DBI202'),
('PRN221', 'Advanced Cross-Platform Application Programming With .NET', '3', 'PRN211 (Basic Cross-Platform Application Programming With .NET)'),
('PRN231', 'Building Cross-Platform Back-End Application With .NET', '3', 'PRN221 ( BUILDING CROSS-PLATFORM WEB APPLICATION WITH .NET )'),
('JPD133', 'Elementary Japanese 1-A1/A2', '3', 'JPD123'),
('JPD316', 'Intermediate Japanese 1-B1/B2', '6', 'Passed JPD226 For JS: Passed OJT202'),

('JFE301', 'Japanese fundamental information technologyskill standards', '3', ''),
('JPD326', 'Intermediate Japanese 2-B2.1', '3', 'Passed JPD223 or JPD226 JS: JPD322 or JPD316'),
('PRP201c', 'Python programming', '3', 'Recommend to have knowledge of basic programming in advance'),
('KOR311', 'Intermediate Korean Language 1', '6', 'KOR201'),
('KOR321', 'Intermediate Korean Language 2', '3', 'KOR311'),
('KOR411', 'Intermediate Korean Language 3', '6', 'KOR321'),
('MMA301', 'Multiplatform Mobile App Development', '3', 'FER201m; SDN301m'),
('WDP301', 'Web Development Project', '3', 'FER201m, SDN301m'),
('SAP311', 'SAP General 1', '3', ''),
('SAP321', 'SAP General 2', '3', 'SAP311'),
('DPL303m', 'Deep Learning', '3', 'AIL304m'),
('AIL304m', 'Machine Learning', '3', 'MAS291, MAE101'),
('DBM301', 'Data Mining', '3', ''),
('PMG202c','Project Management','3',''),
('NWC203c', 'Computer Networking',  '3', ''),
('WED201c', 'Web Design', '3', ''),
('PRJ301','Java Web Application Development','3','DBI202, PRO192'),
('ACC101', 'Principles of Accounting', '3', ' '),
('SAP341', 'SAP Application Development with ABAP', '3', 'PRO192, SAP311'),
('FER202', 'Front-End web development with React', '3', 'WED201c'),
('PRU212', 'C# Programming and Unity', '3', 'PRO192'),
('PRU221m', 'PRU221m', '3', 'PRU211m'),
('ISM301', 'Enterprise Resource Planning (ERP)', '3', 'Recommended to take this course after OJT'),
('ISP490', 'IS Capstone Project', '10', 'Successfully complete (*) below topics: - Project Management – PMG201c or PMG202c - Information System Analysis and Design – ITA301 o Pass 60% of total credits of selected combo. o Pass OJT202 (not apply to international students) o Pass 80% of total credits (PHE_COM* and OJT excluded) (*): GPA must be greater than or equal to 4.'),
('SAP490', 'SAP Interdisciplinary Capstone Project', '10', 'Pass SAP331 (BA), SAP341 (IT) o Complete (*) other subjects of combo SAP and PMG20xc (x = 1, 2) o Pass OJT202/OJB202 (not apply to international students) o Pass 80% of total credits (PHE_COM* and OJT excluded) (*): GPA must be greater than or equal to 4.'),
('EXE401', 'Graduation Thesis Startup Project', '10', 'Passed EXE201 (Experiential Entrepreneurship 2_Trải nghiệm khởi nghiệp 2) 2. Passed OJT (for Vietnamese students) 3. Passed 80% of total credits (PHE_COM*, OJT excluded for Vietnamese students, PHE_COM* excluded for international students). 4. Satisfied Article V - Decision 911/QĐ-ĐHFPT dated 31/8/2023 on Instructions for implementing the Experiential Entrepreneurship program at FPT University.'),
('KMS301', 'Knowledge management system', '3', 'ITA301, ISM302'),
('DSS301', 'Decision Support System', '3', 'PRJ302'),
('BPS301', 'Business Process Management System', '3', 'ISM302'),
('FIN202', 'Principles of Corporate Finance', '3', ' '),
('JTW301', 'Japanese IT terms and text translation', '3', 'Passed JJB391 With JS: JPD316'),
('SAP331', 'SAP Configuration', '3', 'SAP321'),
('DBS401', 'Database Security', '3', 'DBI202 and OSP201'),
('FRS401c', 'Network Forensics', '3', ''),
('IAR401c', 'Incident Response', '3', 'FRS401c or FRS401'),
('IAW301', 'Web Security', '3', 'ITE303 or ITE302c or IAP201'),
('NWC303', 'Network Connectivity', '3', 'NWC204'),
('CES202', 'System Support and Trouble Shooting', '3', 'NWC202 or NWC203c or NWC204'),
('DMS401', 'Applied Data Mining for Information Assurance', '3', 'CSD201'),
('SPM401', 'Security Project Management', '3', 'IAP301'),
('JPD336', 'Intermediate Japanese 2-B2.2', '6', 'Passed JPD323 or JPD326 JS: JPD323 or JPD326'),
('JPD346', 'Intermediate Japanese 2-B2/C1', '6', 'Passed JPD323 or JPD326 JS: JPD323 or JPD326'),
('OSP201', 'Open Source Platform and Network Administration', '3', ''),
('CRY303c', 'Applied Cryptography', '3', 'MAD101'),
('IAA202', 'Risk Management in Information Systems', '3', 'IAO101 or IAO201c or IAO202'),
('IAM302', 'Malware Analysis and Reverse Engineering', '3', 'ITE303 or ITE302c, PRO192'),
('IAP301', 'Policy Development in Information Assurance', '3', 'IAA202'),
('FRS301', 'Digital Forensics', '3', 'NWC202 or NWC203c or NWC204'),
('HOD401', 'Ethical Hacking and Offensive Security', '3', 'ITE303 or ITE302c, OSP201'),
('IAP491', 'IA Capstone Project', '10', '- Must pass 80% of total credits (PHE_COM* and OJT excluded) - Must pass the OJT stage and following subjects: o IAP301 Policy Development in Information Assurance; or SPM401 Managing Security Project (if it is); o NWC302 (or NWC204); o One of four specialized courses in specified field (IAM302, FRS401(c), HOD401, DBS401)'),
('ANM312', 'Visual tool 3D', '3', ''),
('ANM322', '3D Modeling & Shading', '3', 'ANM312'),
('ANR401', 'Introduction to Rigging', '3', ''),
('ANA401', '3D Character Animation', '3', 'Passed ANR401 or passed AMR401'),
('3DP491', 'Digital project 3D', '3', 'ANM322 and ANA401'),
('ADI201', 'Brand Identity Design', '3', 'TPG20x and DTG102'),
('AGD301', 'Information Graphic Design', '3', 'TPG302'),
('ADB201', 'Book Design & Printing Technology', '3', 'TPG 302'),
('ADP301', 'Packaging design', '3', 'ADI201'),
('ADE301', 'Exhibition Display & Event Design', '3', 'ADI201 and (AGD301 or DID301)'),
('WED301', 'Developing Interactive Web Pages', '3', 'WDU201 or WDU202c or WMT201'),
('DID301', 'Data visualization & Infographic design', '3', 'TPG302 and DTG102 and (IPD201 or DRD204)'),
('ADM401', 'Mobility Application Design', '3', 'WDU201 or WDU202c'),
('ANS301', 'Storyboarding', '3', 'ANC301'),
('ANO301', 'Visual development for digital design', '3', 'ANC301'),
('ANB401', 'Background Painting for Animation', '3', 'ANS301'),
('ANT401', 'Traditional Animation Principles', '3', 'ANS301'),
('AMR401', '3D Modeling & Rigging', '3', ''),
('2DP491', 'Digital project 2D', '3', 'ANB401 and ANT401 and ANO301'),
('WIR201', 'Interaction design', '3', 'WUD202c'),
('WDL202', 'Web layout design', '3', 'WDU202c or WDU201 or WMT201'),
('ADH301', 'Mobility Applications Design 1', '3', 'WDU201 or WMT201 or WDU202c'),
('ADT401', 'Mobility Applications Design 2', '3', 'ADH301'),
('VCM202', 'Visual Communication', '3', ''),
('GDF201', 'Fundamental of Graphic design', '3', 'VCM202'),
('PST202', 'Perspective', '3', ''),
('TPG203', 'Basic typography & Layout', '3', 'GDF101 or GDF201'),
('TPG302', 'Typography & E-publication Design', '3', 'TPG20x'),
('WDU202c', 'UI/UX Design', '3', ''),
('DTG102', 'Visual Design Tools', '3', ''),
('DTG302', 'Principles of Compositing', '3', ''),

('ANC301', 'Character Development', '3', 'DRD20x or IPD201'),
('SDP201', 'Sound Production', '3', ''),
('ANS201', 'Idea & Script Development', '3', ''),
('DTG303', 'PRINCIPLES OF ANIMATION', '3', ''),
('IPR102', 'Intellectual Property Rights', '3', ''),
('PFL401', 'Portfolio Design', '3', '1 of 6 sets of courses: 1/ Combo 1: ANT401; 2/ Combo 2: ANM322 and ANR401; 3/ Combo 3: WDT401 and WIR201; 4/ Combo 4: ADI201 and ADB201 5/ Combo 5: ANO301 and ANT401'),
('WDT401', 'Web Design', '3', 'WDL301 or WDL202'),
('DRS102', 'Drawing - Form, still-life', '3', ''),
('DRP101', 'Drawing plaster stature - portrait', '3', 'DRS10x'),
('DRD204', 'Drawing - Speed drawing', '3', 'AFA201'),
('IPD201', 'Icon & Pattern design', '3', 'DRS10x'),
('CAD201', 'Water Color', '3', 'DRS10x'),
('SCC201', 'Science of Color', '3', 'DRS10x'),
('AFA201', 'Human Anatomy for artist', '3', 'DRP101'),
('AET102', 'Aesthetic', '2', ''),
('HOD102', 'Design history', '2', ''),
('VNC104', 'Vietnamese Culture', '3', ''),
('CAA201', 'Communications and advertising', '3', ''),
('HOA101', 'Art History', '3', ''),
('GDP493', 'Capstone Project Graphic Design - Interaction Design', '10', 'Passed on the job training (OJT). 2. Passed 80% of total credits (PHE_COM* and OJT excluded) 3. Passed 3 subjects: WIR201, WDT401 and ADT401 Note: For the cases when student studied EXE201 instead of the 5th combo subject in semester 8; the condition 3 is replaced by the following one: 4. Passed 3 subjects: WIR201, WDT401 and ADH301'),
('GDP494', 'Capstone Project Graphic Design - Communication Design', '10', 'Passed on the job training (OJT). 2. Passed 80% of total credits (PHE_COM* and OJT excluded) 3. Passed 4 subjects: AGD301, ADB201, ADP301 and ADE301. Note: For the cases when student studied EXE201 instead of the 5th combo subject in semester 8; the condition 3 is replaced by the following one: 4. Passed 3 subjects: AGD301, ADB201 and ADP301.'),
('GDP495', 'Capstone Project Graphic Design - Multimedia Communication Design', '10', 'Passed on the job training (OJT). 2. Passed 80% of total credits (VOVxxx and OJT excluded) 3. Passed 4 subjects: WED301, ADM401, DID301 and ADE301 Note: For the cases when student studied EXE201 instead of the 5th combo subject in semester 8; the condition 3 is replaced by the following one: 4. Passed 3 subjects: WED301, ADM401 and DID301'),
('GDP492', 'Capstone Project Graphic Design - Animation', '10', 'Passed on the job training (OJT). 2. Passed 80% of total credits (VOVxxx and OJT excluded) 3. For Combo Animation 2D, pass 4 subjects: ANB401 and ANT401 and ANO301 and 2DP491 For Combo Animation 3D, pass 3 subjects: ANM322 and ANA401 and 3DP491 For Combo Digital Animation, pass these subjects: ANT401 and (ANO301 or ANB401) and AMR401 and ANA401. Note: For the cases when student studied EXE201 instead of the 5th combo subject in semester 8; the condition 3 is replaced by the following one: 4. For Combo Animation 2D, pass 3 subjects: ANB401 and ANT401 and ANO301 For Combo Animation 3D, pass 2 subjects: ANM322 and ANA401 For Combo Digital Animation, pass these subjects: ANT401 and (ANO301 or ANB401) and AMR401'),
('DSR301m', 'Applied DS with R', '3', 'DBI202'),
('BDI302c', 'Big Data', '3', ''),
('DBM302m', 'Data Mining', '3', ''),
('SEG301m', 'Search Engines', '3', 'CSD203, AIL303m'),
('TMG301m', 'Text Mining', '3', 'CSD203, AIL303m'),
('ASR301c', 'AI for Scientific Research', '3', ''),
('AIH301m', 'AI in Healthcare', '3', ''),
('AIM301m', 'AI for Medicine', '3', 'PFP191'),
('ADY201m', 'Data Science with Python & SQL', '3', 'PFP191, DBI202'),
('DWP301c', 'Web Development with Python', '3', 'PFP191'),
('CPV301', 'Computer Vision', '3', 'PFP191, CSD203'),
('NLP301c', 'Natural Language Processing', '3', 'AIL30x and (PRP201c or PFP191)'),
('REL301m', 'Reinforcement Learning', '3', 'DPL302m'),
('DAP391m', 'AI-DS Project', '3', 'PFP191, ADY201m'),
('DAT301m', 'AI Development with TensorFlow', '3', 'CPV301, DLP302m'),
('AID301c', 'AI in Production', '3', 'AIL303m, SWE201c'),
('MAI391', 'Mathematics for Machine Learning', '3', 'MAE101'),
('AIL303m', 'Machine Learning', '3', 'MAS291, MAE101, MAI391'),
('DPL302m', 'Deep Learning', '3', 'AIL303m'),
('ITE303c', 'Ethics in IT', '3', ''),
('CSD203', 'Data Structures and Algorithm with Python', '3', 'PFP191'),
('PFP191', 'Programming Fundamentals with Python', '3', ''),
('CSI105', 'Introduction to Computer Science', '3', ''),
('AIG202c', 'Artificial Intelligence', '3', ''),
('TAB201', 'Travel Agency Business', '3', 'HMO102'),
('TTD301', 'Tour Design and Development', '3', 'TTM202'),
('TTS302', 'Sustainable Tourism', '3', 'TTM202'),
('PSP301', 'Public speaking and presentation', '3', ''),
('TTG311', 'Tourist guiding 1', '3', 'HMO102'),
('TTD202', 'Tourism destinations and routes of Vietnam', '3', 'TTG201'),
('TTG321', 'Tour Guiding Profession 2', '3', 'TTG311'),
('TOC201', 'Cultural Tourism', '3', ''),
('HOM202', 'Hotel Operations Management', '3', 'HMO101 or HMO102'),
('GEM201', 'Managing Guest Experience', '3', 'MGT101 or MGT103'),
('FBM201', 'Food and Beverage Operations Management', '3', 'MGT101 or MGT103'),
('HOM301c', 'Hotel Revenue Management', '3', 'HMO101 or HMO102'),
('HOM302', 'Service Operation Management', '3', 'HMO102'),
('CHN123', 'Elementary Chinese 2', '3', 'CHN113'),
('CHN113', 'Elementary Chinese 1', '3', ''),
('OJB202', 'On-the-job training', '10', 'Students achieve 90% of the total credits from term 1-term 5 (excluding Physical Education and General Training Program) Students attain 90% of the total credits from term 1-term 5 (excluding Physical Education and General Training Program)'),
('SSB201', 'Advanced Business Communication', '3', 'SSG103/SSG104'),
('MAS202', 'Applied Statistics for Business', '3', ''),
('ECO111', 'Microeconomics', '3', ''),
('ECO121', 'Macroeconomic', '3', 'ECO111'),
('MKT101', 'Marketing Principles', '3', ''),
('OBE102c', 'Organizational Behavior', '3', ''),
('MGT103', 'Introduction to Management', '3', ''),
('HRM201c', 'Human Resource Management', '3', 'MGT101 or MGT103'),
('LAW102', 'Business Law and Ethics Fundamentals', '3', ''),
('MKT208c', 'Social Media Marketing', '3', 'MKT101'),
('HMO102', 'Introduction to Tourism & Hospitality industry', '3', ''),
('TTM201', 'Tourism and Travel Management', '3', 'HMO102'),
('TTG201', 'Tourism Geography', '3', ''),
('TTM202', 'Destination Management and Marketing', '3', 'TTM201, TTG201'),
('TTM203', 'Consumer behavior in Tourism', '3', 'TTM201'),
('ENH301', 'Business English for Hospitality - Intermediate', '3', ''),
('ENH401', 'Business English for Hospitality - Upper Intermediate', '3', 'ENH301'),
('EVN201', 'Event Planning', '3', ''),
('RMB301', 'Business Research Methods', '3', ''),
('GRP490', 'Graduation Thesis (Business Plan)', '10', 'Pass OJB202 (for Vietnamese students) 2. Pass 80% of total credits (PHE_COM*, OJB202 excluded for Vietnamese students, PHE_COM* excluded for intl. students). 3. Concentration courses: BBA_MKT MKT201, MKT202, MKT301, MKT304 + MKT308 for K14; MKT318m, MKT328m from K15 BBA_IB ECO201, IBI101, SCM201, IBS301m, RMB301 + MKT204 for K14 ; IBF301 from K15 BBA_HM: HMO101 or HMO102, FBM201 + HOM201, FOM201, RES301 for K14; HOM202, EVN201, HOM301c from K15 BBA_FIN 5 Finance concentration courses and RMB301 or RMB302 BBA_TM: TTG201, TTM201, TTM202, TTM203'),
('ENM401', 'BUSINESS ENGLISH - Level: Upper- Intermediate', '3', 'ENM301'),
('BRA301', 'Brand Management', '3', 'MKT101 or CCO201'),
('MKT309m', 'Omnichannel Marketing', '3', 'MKT101'),
('MKT209m', 'Content Marketing', '3', 'MKT101'),
('ADS301m', 'Google Ads and SEO', '3', 'MKT101'),
('FIN201', 'Monetary Economics and Global Economy', '3', 'ECO121'),
('FIN301', 'Financial Markets and Institutions', '3', ''),
('ACC305', 'Financial Statement Analysis', '3', 'ACC101'),
('FIN303', 'Advanced Corporate Finance', '3', 'FIN202'),
('RMB302', 'Research Methods & Quantitative Analysis', '3', 'MAS202'),
('IBI101', 'Introduction to International Business', '3', ''),
('IBC201', 'Cross Cultural Management and Negotiation', '3', 'MGT101 or MGT103'),
('SCM201', 'Supply Chain Management', '3', ''),
('ECO201', 'International Economics', '3', 'ECO121'),
('IIP301', 'International Payment', '3', ''),
('MKT205c', 'International Marketing', '3', 'MKT101 or IBI101'),
('CCO201', 'Corporate Communication', '3', ''),
('CMC201c', 'Creative Writing', '3', ''),
('BDI201', 'Brand Identity Design', '3', 'DTG111 or DTG102'),
('CCM301', 'Crisis Communications Management', '3', 'CCO201 or MKT304c or MKT304'),
('MKT301', 'Marketing Research', '3', 'MKT101'),
('MKT202', 'Services Marketing Management', '3', 'MKT101'),
('MKT304', 'Integrated Marketing Communications', '3', 'MKT101'),
('DMS301m', 'Digital Marketing Strategy', '3', 'MKT101'),
('DMA301m', 'Digital Marketing Analytics', '3', 'DMS301m/MKT318m'),
('MKT201', 'Consumer Behavior', '3', 'MKT101'),
('SAL301', 'Professional Selling and Management', '3', 'MKT101'),
('GRM491', 'Graduation Thesis - Marketing', '10', 'Passed OJB202 (for Vietnamese students) 2. Passed 80% of total credits (PHE_COM*, OJB202 excluded for Vietnamese students, PHE_COM* excluded for intl. students) 3. Concentration courses: K14: MKT201, MKT202, MKT301, MKT304, MKT308 From K15: MKT201, MKT202, MKT301, MKT304, MKT318m, MKT328m'),
('VDP201', 'Video Production', '3', ''),
('SEO201c', 'Search Engine Optimization', '3', ''),
('GRA497', 'Capstone Project Multimedia Communications', '10', 'For K13 and K14: Passed five subjects: MPL201 and WMC201 and VDP201 and BRA301 and (ADP201 or SDP201) From K15: Passed five subjects: RMC201 and WMC201 and DTG121 and BRA301 and MEP201 and 01 required subject of the selected combo: a/Combo 1 (Creative Content Production): DTG302 b/Combo 2 (Public Relations): PRE202 c/Combo 3 (Digital marketing): MKT328m'),
('MEP301', 'Multimedia Production Project', '3', 'MED201, (VDP201 or VDP301), (SDP201 or ADP201)'),
('RMC301', 'Research methods in Communication', '3', 'MMP201 or MMP101'),
('PFD201', 'Photography for Designer', '3', ''),
('MCO201m', 'Transmedia Storytelling', '3', 'MED201'),
('VDP301', 'Video Production', '3', ''),
('MSM201c', 'Meta social media marketing Management', '3', ''),
('IFT201c', 'Innovation and Future thinking', '3', ''),
('DTG121', 'Visual Design Tools 2', '3', 'DTG111'),
('MED201', 'New Media Technology', '3', ''),
('MMP201', 'Media Psychology', '3', ''),
('DTG111', 'Visual Design Tools 1', '3', ''),
('WMC201', 'Media Writing', '3', ''),
('VDE301', 'Digital Video Editing', '3', 'VDP201 or VDP301'),
('CSP201m', 'Content Strategy for Professionals', '3', 'MKT304'),
('MKT328m', 'Digital Marketing 2', '3', 'MKT318m'),
('EPR301', 'Entertainment Public Relation', '3', 'PRE202 or PRE301'),
('MCO302', 'Intercultural Communication', '3', ''),
('PRE301', 'Public Relations principles and strategies', '3', 'CCO201'),
('MKT318m', 'Digital Marketing 13', '3', 'MKT101'),
('MPL201', 'Media Planning', '3', 'MKT101'),
('IBF301', 'International Finance', '3', 'FIN202'),
('IBS301m', 'International Business Strategy', '3', 'IBI101'),
('SCM301m', 'Procurement and Global Sourcing', '3', ''),
('LOG311', 'Customs Operation', '3', 'SCM201 & IEI301/IIP301'),
('LOG321', 'Logistics and Transportation Management', '3', 'SCM301m'),
('ECO203m', 'International Economics Relations', '3', 'IBI101'),
('IIV301', 'International investment', '3', 'FIN202, IBF301'),
('GRI491', 'Graduation Thesis - International Business', '3', 'Pass OJB202 2. Pass 80% of total credits (PHE_COM* and OJB202 excluded) 3. Concentration courses : K14: ECO201, IBI101, MKT204, SCM201, IBS301/IBS301m and RMB301 K15: ECO201, IBI101, IBF301, SCM201, IBS301m and RMB301'),
('FIN308', 'International Corporate Finance', '3', 'FIN202'),
('IEI301', 'Import Export', '3', 'IBI101'),
('IMA301', 'International Merger and Acquisitions', '3', 'FIN202'),
('LAW201c', 'International Business Law', '3', 'IBI101'),
('PFE201', 'Public Relations Management for events', '3', 'EVN201'),
('EVN204', 'Event management and operation', '3', 'EVN201'),
('RES301', 'Food and Beverage Cost Control', '3', 'FBM201'),
('EVN202', 'Conventions and Tradeshows', '3', 'EVN201'),
('EVN203', 'Special Events and Wedding Production', '3', 'EVN201'),
('ECO102', 'Business Environment', '3', ''),
('CIH201', 'Contemporary issues in hotel and tourism management', '3', 'HMO102'),
('RES201', 'Food Preparation and Science', '3', 'FBM201'),
('RES213', 'Wines, Beers, Spirits 1', '3', 'FBM201'),
('RES222', 'Wines, Beers, Spirits 2', '3', 'RES213'),
('ACH301', 'Accommodation management', '3', 'LOD211, LOD212, LOD222'),
('GRH491', 'Graduation Thesis - Hotel Management', '10', 'Pass OJB202 2. Pass 80% of total credits (PHE_COM* and OJB202 excluded) 3. Concentration courses : K13&K14: HMO101 or HMO102, HOM201, FOM201, FBM201, RES301 K15: HMO101 or HMO102, HOM202, FBM201, EVN201, HOM301c'),
('LOD211', 'Front Office Management', '3', 'HMO101 or HMO102'),
('LOD222', 'Front desk and receptionist skills', '3', 'HMO102'),
('LOD212', 'Housekeeping management', '3', 'HMO102'),
('SYB302c', 'Entrepreneurship', '3', ''),
('ACC302', 'Managerial Accounting', '3', 'ACC101'),
('FIM302c', 'Financial modelling', '3', 'FIN303'),
('FIN402', 'Derivatives', '3', 'FIN202'),
('HCM201', 'Ho Chi Minhs Ideology', '2', 'MLN101'),
('FIN405c', 'Investment Portfolio', '3', 'FIN303'),
('FIN403', 'Mergers and Acquisitions', '3', 'FIN303'),
('FIN404m', 'Fixed Income Investmen', '3', 'FIN301'),
('FIN304', 'Behavioral finance', '3', 'FIN202, FIN303'),
('FIN306c', 'Financial Reporting', '3', 'Passed ACC101'),
('FIN307', 'Financial Taxation', '3', 'ACC101'),
('FIN406', 'Financial Risk Management', '3', 'MAS202 and FIN402'),
('GRF491', 'Graduation Thesis - Finance', '10', 'OJB202 2. Passed 80% of the programs total credits (not including VOV) 3. 5 Finance concentration courses and RMB301 or RMB302'),
('ENP102', 'English phonetics and phonology in use', '3', ''),
('ENG302c', 'Advanced English Grammar', '3', ''),
('EAW211', 'English Academic Writing 1', '3', ''),
('EAW221', 'English Academic Writing 2', '3', 'Passed EAW211'),
('ECR201', 'Critical Reading', '3', ''),
('EAL201', 'Academic Listening', '3', ''),
('LTG202', 'Introduction to Linguistics', '3', ''),
('SEM101', 'Semantics', '3', 'Passed LTG202 and ENG302c and ENP101 or ENP102'),
('ERW411', 'Read-Think-Write 1', '3', 'Passed ECR201 & EAW221'),
('ERW421', 'Read-Think-Write 2', '3', 'Passed ERW411'),
('ESL101', 'Sociolinguistics', '3', 'Passed LTG202, SEM101, ECB101'),
('EPE301c', 'Professional Ethics', '3', ''),
('LIT301', 'British and American Literature', '3', 'ECR201, EAW221'),
('ELR301', 'Research Methods', '3', 'ERW421'),
('ECB101', 'Culture of English-Speaking Countries', '3', ''),
('OJE202', 'On-The-Job Training', '10', 'Students attained 90% of the total credits from semester 1-semester 5 (excluding Physical Education PHE_COM* and Military Program)'),
('ELT492', 'Graduation Thesis - English Studies', '10', '1. Subjects: K14: ELT401; ELI401; ENG301; ENP101; LTG20x; SSC201; ELR301; ENB101 K15 onwards: ELR301, ELT401, ELI401, ENB301 2. Passed OJE202 3. Passed 80% of the total credits in the program (not including PHE_COM* and OJE202)'),
('ELP491', 'Graduation Project - English Studies', '10', '1. Subjects: ELR301, ELT401, ELI401, ENB301 2. Passed OJE202 3. Passed 80% of the total credits in the program (not including PHE_COM* and OJE202)'),
('SSC302c', 'Advanced Presentation Skills', '3', ''),
('EBC301c', 'Business English Communication', '3', ''),
('ECC301c', 'Cross-cultural Communication', '3', ''),
('EPC301', 'Persuasive Communication', '3', 'Passed ERW411 and SSC302c and SSG103 or SSG104'),
('ELT301', 'Translation 1', '3', 'ENS411 & ENS421 & ENR401 & ENW401 & ENP101 & ENG301 K15 onward: Passed ERW411 & LTG202'),
('ELT401', 'Translation 2', '3', 'Passed ELT301'),
('ELI301', 'Interpretation 1', '3', 'Passed ENW401 or (ENS412 & ENS422) or ENT503 K15 onward: Passed EAL201 & SSC302c & LTG202'),
('ELI401', 'Interpretation 2', '3', 'Passed ELI301'),
('ENB301', 'Business Writing', '3', 'Passed EAW221'),
('ETT301', 'Understanding Language Testing', '3', 'Passed ESL101, ELT401, ELI401, ERW421, EOB301'),
('ELP311c', 'English Language Teaching part 1', '3', ''),
('EOB301', 'Outcome-based Course Design in English Language Teaching', '3', '"EAL201, ERW421, EPC301, ESL101"'),
('ETP401', 'Language Teaching Practice', '3', 'ELP311c, EOB301'),
('ELP321c', 'English Language Teaching part 2', '3', 'Passed ELP311c'),
('JTI301', 'Introductory Translation& interpreting', '3', 'Passed JBI301&JBT301'),
('JTE301', 'Translation in Economics & Commerce', '3', 'Passed JBI301&JBT301'),
('JTT301', 'Translation in Tourism', '3', 'Passed JBI301 & JBT301'),
('JPE301', 'Translation in Education', '3', 'Passed: JBI301&JBT301'),
('JTN301', 'Translation on international hot news', '3', 'Passed JBI301&JBT301'),
('JFT301', 'Japanese for Tourism', '3', 'Passed JSC301'),
('JHI301', 'The International Hospitality Industry', '3', 'Passed: JSC301'),
('JTD301', 'Tourism Destination of VietNam & Japan', '3', 'Passed JSC301'),
('JVR301', 'Japan - Viet Nam economic relations & sustainable tourism development trend ', '3', 'Passed: JSC301'),
('JIT401', 'Information Technology Japanese', '3', 'Passed JJB391 JS: JPD316'),
('JIS401', 'Japanese in Software', '3', 'Passed JJB391'),
('JSI201', 'Information System', '3', 'Passed JJB391'),
('JSC201', 'Computer System', '3', 'Passed:JJB391'),
('OJP202', 'On-the-job Training', '10', 'Complete 90% of total credits from semester 1 to semester 5 (excluding National Defense Education and Physical Education)'),
('JPD226', 'Pre-Intermediate Japanese 2-B1', '6', 'Passed PD122 or JPD126 JS: JPD131 or JPD133'),
('JPD116', 'Elementary Japanese 1-A1/A2', '6', ''),
('JPD126', 'Elementary Japanese 2-A2', '6', 'JPD112 or JPD116'),
('JPD216', 'Pre-Intermediate Japanese 1-A2/B1', '6', 'Passed JPD122 or JPD126 JS: JPD131 or JPD133'),
('JLR302', 'Research Method', '3', 'Passed JIG301'),
('JJB391', 'Japanese for JLPT &BJT', '3', 'Passed JPD346'),
('LTG203', 'Introduction to linguistics', '3', 'Passed JPD346'),
('JBI301', 'Basic Skills of Interpreting', '3', 'Passed JPD346'),
('JPB301', 'Japanese business language & business manner', '3', 'Passed JPD326'),
('JBT301', 'Basic skills of Translation', '3', 'Passed JPD346'),
('JJL301', 'Japanese Literature', '3', 'Passed JSC301 & JIG301'),
('JSC301', 'Japanese Studies and Japanese Culture', '3', 'Passed: JPD346'),
('JIG301', 'Basic Issues of Japanese Grammar', '3', 'Passed JPD346'),
('JGT492', 'Graduation Thesis-Japanese Studies', '10', 'Pass OJP202 II. Pass 80% of total credits (VOVxxx and OJP202 excluded) III. 1) For students from keyword 15 onwards: Pass ENW492c, JIJ301, JJL301, JLR302'),
('JGP491', 'Graduation Project - Japanese Studies', '10', 'Pass OJP202 II. Pass 80% of total credits (VOVxxx and OJP202 excluded) III. 1'),
('SWC201', 'Software Development Process', '3', 'Passed JJB391'),
('KRE301', 'Korean Economy', '3', 'KRL421'),
('KLC301', 'Chinese characters in Korean', '3', 'KRL511'),
('KLB401', 'Business Korean', '3', 'KLI311 and KLT311'),
('KOI401', 'Office Informatics in Korean', '3', 'KRL421'),
('KPS301', 'Korean Language Pedagogical Skills', '3', 'KRL421'),
('KRH401', 'Korean for Restaurants and Hotels', '3', 'KRL421'),
('KRL201', 'Elementary Korean 2', '6', 'KRL101'),
('KRL311', 'Intermediate Korean 1', '6', 'KRL201'),
('KRL321', 'Intermediate Korean 2', '6', 'KRL311'),
('KRL411', 'Intermediate Korean 3', '6', 'KRL321'),
('KRL421', 'Intermediate Korean 4', '6', 'KRL411'),
('KRL511', 'Advanced Korean 1', '6', 'Pass KRL421'),
('KRL521', 'Advanced Korean 2', '6', 'KRL511'),
('KIT491', 'Korean for TOPIK', '3', 'KRL421'),
('OJK202', 'On-The-Job-Training', '10', 'Complete 90% of total credits from semester 1 to semester 5 (excluding National Defense and Physical Education Subject)'),
('KRC301', 'Korean Culture', '3', 'KRL321'),
('KLE301', 'Korean Literature', '3', 'KRL421'),
('KLI311', 'Interpretation 1', '3', 'KRL511'),
('KLI321', 'Interpretation 2', '3', 'KLI311'),
('KLT311', 'Translation 1', '3', 'KRL511'),
('KLT321', 'Translation 2', '3', 'KLT311'),
('KLR301c', 'Scientific Research Methods', '3', ''),
('KRP301', 'Korean Phonetics', '3', 'Pass: KRL321 or KRL222'),
('KRG301', 'Korean grammar and vocabulary', '3', 'KRL421'),
('KRT491', 'Graduation Thesis', '3', 'Pass OJK202 II. Passed 80% of the total credits in the program (excluding PHE_COM* and OJK202)'),
('KRP491', 'Graduation Project', '3', ' Pass OJK202 II. Passed 80% of the total credits in the program (excluding PHE_COM* and OJK202)'),
('ICT301', 'Instructor Competencies Training', '3', ''),
('KGT401', 'Tour guide training (Korean)', '3', 'KRL421'),
('GRF491', 'Graduation Thesis - Finance', '10', 'OJB202 2. Passed 80% of the programs total credits (not including VOV) 3. 5 Finance concentration courses and RMB301 or RMB302')



GO