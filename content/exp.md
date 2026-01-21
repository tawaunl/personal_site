---
widget: blank
headless: false

# ... Put Your Section Options Here (title etc.) ...
title: 
subtitle:
weight: 10  # section position on page

design:
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns: '1'
---
# Work Experience
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Experience and Education Timeline</title>
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        .timeline {
            position: relative;
            max-width: 1000px;
            margin: 50px auto;
            padding: 10px;
        }
        .timeline::before {
            content: '';
            position: absolute;
            width: 4px;
            background-color: #c1c1c1;
            top: 0;
            bottom: 0;
            left: 10;
            margin-left: 0;
        }
        .entry {
            display: flex;
            align-items: center;
            padding: 10px;
            background-color: white;
            border-radius: 5px;
            width: 95%;
            position: relative;
            margin-left: 6%;
            margin-bottom: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease-in-out;
        }
        .entry:hover {
            box-shadow: 0 4px 15px rgba(0, 0, 255, 0.5); 
        }
        .entry::after {
            font-family: 'Font Awesome 5 Free';
            font-weight: 900;
            font-size: 20px;
            position: absolute;
            top: 10px;
            left: -50px;
        }
        .experience::after {
            content: '\f0b1'; /* Unicode for briefcase */
            color: darkgrey; /* Default color */
        }
        .experience:first-child::after {
            color: red; /* Red briefcase for the current job */
        }
        .education::after {
            content: '\f19d'; /* Unicode for graduation cap */
            color: black; /* Black graduation cap */
        }
        .logo {
            max-width: 60px;
            height: auto;
            margin-right: 10px;
        }
        .content {
            flex-grow: 1;
        }
        .title {
            font-size: 20px;
            font-weight: bold;
            margin: 0;
        }
        .company, .school {
            font-size: 18px;
            color: #555;
            margin: 0;
        }
        .dates {
            font-size: 16px;
            color: #888;
            margin-bottom: 5px;
        }
        .summary {
            font-size: 16px;
            color: #333;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="timeline">
        <div class="entry experience">
            <div class="content">
                <div class="title">Senior Computational Biologist</div>
                <div class="company">Biohub (Chan Zuckerberg Initiative)</div>
                <div class="dates">November 2025 - Present</div>
                <div class="summary">
                As a Senior Computational Biologist, I work at the intersection of biology research and AI/ML model 
                development to build scientific products and scalable computational workflows for biomedical research. 
                I address biological questions through applying models and developing computational workflows, working 
                closely with teams of scientists, engineers, and product staff. My responsibilities include partnering 
                with cross-functional teams, working with community researchers and external partners, making recommendations 
                to product teams, and designing benchmarking and evaluation studies. I focus on ensuring our products are 
                scientifically valid and usable.
                </div>
            </div>
        </div>
        <div class="entry experience">
            <div class="content">
                <div class="title">Postdoctoral Fellow</div>
                <div class="company">Genentech, Inc.</div>
                <div class="dates">April 2021 - November 2025</div>
                <div class="summary">
                As a postdoctoral researcher, my focus was on computational biology, 
                particularly examining the diverse functions of reactive astrocytes in neurodegeneration. I explored 
                complex biological systems using computational and statistical modeling techniques. My research aimed
                to analyze large omics datasets to gain insights into genetic mechanisms and pathways, with an 
                emphasis on neuroscience and immunology
                </div>
            </div>
        </div>
        <div class="entry experience">
            <div class="content">
                <div class="title">Graduate Researcher</div>
                <div class="company">Stanford University- School of Medicine</div>
                <div class="dates">August 2013 – February 2021</div>
                <div class="summary">
                As a graduate student, I worked on several projects focused on molecular biology and 
                transcriptomics. One project examined glial cells in the spleen and their role in neuroimmune 
                communication during CNS injury. I designed experiments, analyzed data, and presented the findings 
                at scientific conferences.
                </div>
            </div>
        </div>
        <div class="entry experience">
            <div class="content">
                <div class="title">Summer Research Intern</div>
                <div class="company">Stanford Summer Ressearch Program (SSRP)</div>
                <div class="dates">June 2013 – August 2013</div>
                <div class="summary">
                During my internship, I gained practical experience in data science and neurology.
                I explored GABA’s role in decision-making, created MATLAB tasks, and conducted fMRI scans. This 
                experience laid a strong foundation for my career in neurobiology and computational science.
                </div>
            </div>
        </div>
    </div>
</body>
</html>

----
# Education

 <div class="timeline">
  <div class="entry education">
            <div class="content">
                <div class="title">Ph.D. Neurosciences</div>
                <div class="school">Stanford Unversity School of Medicine</div>
                <div class="dates">August 2014 – Fecbrary 2021</div>
                <div class="summary">
                Thesis on the diversity of glia in our nervous system.<br>
                Supervised by <a href="https://med.stanford.edu/profiles/marion-buckwalter">Marion Buckwalter.</a>
                <br>
                <center> 
                <i class="fa fa-download" aria-hidden="true" style="color:#035AA6"></i> {{< staticref
                "FinalDissertation.pdf" "newtab" >}} Read Thesis{{< /staticref >}}
                </center> 
          </div>
        </div>
        </div>
    <div class="entry education">
            <div class="content">
                <div class="title">Bachelor's Psychology (Honor's)</div>
                <div class="school">California State University Northridge</div>
                <div class="dates">August 2009 – May 2014</div>
                <div class="summary">
                Student-Athlete (Track and Field)<br>
                GPA: 3.8/4.0<br>
                </div></div></div>
</div>

------------------------------------------------------------
<br>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skills Overview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }
        h1 {
            text-align: center;
            font-weight: bold;
            margin: 20px 0;
        }
        .skills-container {
            width: 100%;
            max-width: 800px;
        }
        .skills-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Ensure consistent columns */
            gap: 20px;
            justify-items: center; /* Center items within each grid */
            margin: -50 auto;
        }
        .skill {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .circle {
            position: relative;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #e0e0e0;
            overflow: hidden;
            --fill-scale: 0;
        }
        .circle .fill {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #4caf50;
            transform-origin: bottom;
            transform: scaleY(var(--fill-scale));
            transition: transform 0.3s;
        }
        .skill-name {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 10px;
            font-size: 16px;
            font-weight: bold;
        }
        .skill-name img {
            max-width: 250px;
            max-height: 250px;
            margin-bottom: -5px;
        }
    </style>
</head>
<body>
<h1>Programming Skills</h1>
    <div class="skills-grid">
        <div class="skill">
            <div class="circle" style="--fill-scale: 1.0;">
                <div class="fill"></div>
            </div>
            <div class="skill-name">
                <img src= "R_logo.png" width="100px"  alt="R Logo">
            </div>
        </div>
        <div class="skill">
            <div class="circle" style="--fill-scale: 0.9;">
                <div class="fill"></div>
            </div>
            <div class="skill-name">
                <img src="unix.png" alt="Unix Logo" width="60px" >
            </div>
        </div>
        <div class="skill">
            <div class="circle" style="--fill-scale: 0.8;">
                <div class="fill"></div>
            </div>
            <div class="skill-name">
                <img src="python_logo_new.png" width="70" alt="python Logo">
            </div>
        </div>
        </div>
    </div>

  <h1>Technical Skills</h1>
        <div class="skills-grid">
            <div class="skill">
                <div class="circle" style="--fill-scale: 0.9;">
                    <div class="fill"></div>
                </div>
                <div class="skill-name">
                    <img src="pipette.svg" width="80px" alt="pipette image">
                    Cell and Molecular Aprroaches, including spatial
                </div>
            </div>
            <div class="skill">
                <div class="circle" style="--fill-scale: 0.9;">
                    <div class="fill"></div>
                </div>
                <div class="skill-name">
                    <img src="microscope-icon.png" width=
                    "70" alt="microscope image">
                    <br>Microscopy
                </div>
            </div>
            <div class="skill">
                <div class="circle" style="--fill-scale: 0.6;">
                    <div class="fill"></div>
                </div>
                <div class="skill-name">
                    <img src="stats.svg" width="70" alt="AWS Logo">
                    Machine Learning and Ai/Statistics
                </div>
            </div>
        </div>
    </div>
</body>
</html>