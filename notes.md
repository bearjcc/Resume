# Notes on Joseph C. Caswell - Resume & Career

This document captures key information, insights, and narratives discussed during the resume refinement process. It serves as a reference for future resume tailoring, cover letter drafting, and interview preparation.

## Core Philosophy & Work Style:

*   **Passion for Learning & Skill Acquisition:** Driven to learn new subjects and technologies across diverse domains (CAD, automation, programming, UI/UX, web development).
*   **Automation & Efficiency Focus:** Innate drive to automate repetitive tasks and streamline inefficient processes. Sees a problem and instinctively looks for an automation solution using the best tool for the job.
*   **Iterative Improvement & Adaptability:** Implements solutions quickly, then observes, learns from difficulties, and refines or pivots to better solutions (e.g., DokuWiki to Wiki.js, AnythingLLM to OpenWebUI, web-based icon plugin to VBA for performance).
*   **Empowerment & Knowledge Transfer:** Strong ethos of transparency, inducing excitement for learning, and making colleagues and customers feel empowered rather than beholden. Aims to ensure others can step into his shoes. This is evident in training, documentation, and project handoffs.
*   **ADHD as an Innovation Driver:** Leverages ADHD to hyperfocus on new learnings and creatively solve problems, particularly in identifying and eliminating inefficiencies.
*   **Client-Centric & Solutions-Focused:** Tailors approach based on client needs, from advisory roles to full implementation, always ensuring clear communication and alignment.

## Dad's Advice:

*   Order of skills vs. experience isn't critical; focus on which is more impressive/eye-catching.
*   Emphasize concrete accomplishments and quantifiable returns: "saved $X by automating, or reduced process time for web application by 6000X."
*   Actual companies/titles can be a bullet list later, focus on impact over daily duties.
*   Highlight SOLIDWORKS teaching ability.
*   Emphasize projects with international scope or impact for NZ companies.
*   Sell the *value* of skills, not just list them. Show, don't just claim.
*   Be prepared to describe the *process* behind achievements in interviews.

## Key Projects & Achievements (Longer Form Narratives):

**1. Custom DriveWorks Plugins (TPM):**

*   **Coloured Icon Integration Plugin:**
    *   **Problem:** Manual, cumbersome process for managing UI icons in DriveWorks (downloading, color editing for normal/hover states, managing thousands of PNG/SVG files, bandwidth inefficiency, non-scalability). Changing colors was a massive manual effort.
    *   **Solution:** Developed a VBA plugin providing dynamic access to 14,000+ open-source SVG icons (including 7 top icon packs, flags, animated spinners). Allowed dynamic setting of color and transparency.
    *   **Impact:** Eliminated manual icon management, dramatically improved UI development efficiency, reduced project file clutter, enhanced design flexibility. The original web-based version (using Deno for dynamic icon provision with a VB.NET plugin) was rewritten purely in VB.NET for a 7,000x performance boost, offline capability, and to eliminate hosting costs.
*   **Seamless Unit Conversion Plugin:**
    *   **Problem:** DriveWorks lacks built-in unit conversion; users manually insert multiplication factors, violating DRY principles and risking errors.
    *   **Solution:** Built a plugin to convert between 162 different units across 17 types (length, area, volume, mass, time, angle, velocity, acceleration, force, pressure, energy, power, temperature, file size, text size, etc.).
    *   **Impact:** Enabled instant, reliable unit conversions for engineering calculations, supported imperial/metric for internationalization, provided helpers for UI layouts (text size) and file management. Promoted DRY principles, robustness, and error-free calculations.

**2. DriveWorks Project Templates (TPM):**

*   **Account Management Template:**
    *   **Problem:** Manual, insecure, and inefficient DriveWorks user management (admins manually adding users, typing/sending passwords insecurely, manual password resets). Standard features were absent.
    *   **Solution:** Developed project templates with web-based, mobile-friendly account management (self-registration, email verification, secure password reset via email link, granular admin oversight of access/roles from any browser).
    *   **Impact:** Addressed critical gaps in native functionality. Significantly reduced administrative burden (e.g., freed up executive time at HSI Cranes), enhanced security (no insecure password sharing, enforced complexity rules), improved user autonomy and efficiency. Enabled rapid deployment for new customers with customizable branding, password rules, and team complexity.

**3. UI/UX Process Pioneering (TPM):**

*   **Problem:** Lack of user adoption in DriveWorks projects often due to engineer-built UIs that were difficult to navigate and visually unappealing. Training users was laborious.
    *   **Solution:** Pioneered and championed the adoption of web-standard UI/UX design principles (using Figma for rapid prototyping, CSS for custom styling in DriveWorks and Integration Theme). Focused on making UIs intuitive, requiring little to no training, and maintaining company branding, especially for embedding into public websites.
    *   **Impact:** Significantly boosted user adoption, minimized training needs, and enabled expansion of DriveWorks projects from single-user automation to sales tools and public-facing customer configurators. This approach was recognized and presented at DriveWorks World 2024.

**4. Self-Hosted Internal Tools (TPM):**

*   **Internal Knowledge Wiki (Wiki.js):**
    *   **Problem:** Siloed knowledge, difficulty sharing specialized findings, processes, custom templates/plugins, and training materials efficiently.
    *   **Solution:** Conceived, implemented, administered, and was the primary content creator for a self-hosted Wiki.js instance. It allowed team members to document findings, processes, link resources, and share custom tools with instructions. Implemented permission levels (internal, customer-only, public). Pioneered AI-assisted article writing before broader company LLM adoption.
    *   **Impact:** Fostered team collaboration, standardized documentation, improved knowledge sharing and accessibility. Enabled customers to host their own documentation and embed it via API. Migrated from DokuWiki for more power and features. Later served as a key RAG source for the centralized AI platform.
*   **Centralized AI Platform (OpenWebUI):**
    *   **Problem:** Decentralized AI tool access (individual $20/month ChatGPT accounts, no centralized billing/oversight), inefficient copy-pasting, lack of access to diverse models, no RAG for internal data, limited document capacity in custom GPTs.
    *   **Solution:** Proactively researched and implemented a self-hosted OpenWebUI instance (iterating from an initial AnythingLLM deployment after identifying its pitfalls) to centralize AI tooling access (OpenAI, Google, Groq), provide RAG capabilities with internal knowledge bases (like the wiki), and explore potential cost savings. Actively championed this solution for broader company adoption.
    *   **Impact (Potential/Ongoing):** If fully adopted, will save money, centralize billing, provide unified access to multiple LLMs and custom instructions, and enable future self-hosting of models. Currently aiding company AI committee in evaluating this solution. DriveWorks team has adopted; gaining traction with AI committee for wider implementation.

**5. DriveWorks Corporate Site Template Transformation (TPM):**

*   **Problem:** DriveWorks' standard "Corporate Website" example was not easily adaptable for non-coding engineers to deploy and customize across multiple clients. Each site required significant manual coding for branding and functionality.
*   **Solution:** Transformed the example into a highly adaptable, maintainable templating system. Architected a `configUser.js` file to drive site-specific behavior, branding (logos, favicons, titles, copyright, optional watermark), and features (account management links, sidebar navigation, login page carousel, SSO/guest login, project display). Developed a `ui.js` module with a recursive function to dynamically generate CSS custom properties from the config file for extensive theming. Also championed and implemented GitHub for version control of auxiliary files (website templates, CSS, plugins) related to these templates and other DriveWorks implementations, rather than the DriveWorks project binary files themselves.
*   **Impact:** Drastically simplified customization for non-developers. Enabled version-controlled parity and streamlined updates across 20+ client sites. Provided unprecedented flexibility in visual branding and functional tailoring through the central configuration, significantly reducing deployment times and development overhead for customer-facing portals.

*   **IIS/VM Management & Troubleshooting (TPM):**
    *   **Role:** Served as the primary technical expert for setting up and configuring IIS and virtual machines (VMs) essential for DriveWorks Live API and website deployments.
    *   **Support:** Provided critical troubleshooting assistance for IIS-related issues to internal colleagues, direct customers, and technical staff at other reseller companies, establishing a reputation as a go-to resource.
    *   **Impact:** Ensured stable and reliable deployment environments for numerous DriveWorks Live projects, minimizing downtime and resolving complex technical challenges for a wide range of stakeholders.

**6. End-to-End Project Ethos & Training (General):**

*   **Approach:** Combines CAD, automation, UI/UX, and web development for full-lifecycle implementations. Focuses not just on technical execution but on ensuring the client has full ownership, tools, skills, and documentation for self-maintenance if desired.
*   **Collaboration Models:** Adapts from advisory/guidance roles to full collaborative development or complete execution with regular client feedback and alignment.
*   **Mentorship & Handoff:** Actively trained two people to take over roles before relocating. Colleagues frequently seek his help for learning. Passionate about making others feel empowered. Every step aims to ensure someone else could fill his shoes.

## Skills & Technologies Summary:

*   **CAD/Automation:** DriveWorks (Expert/Trainer), SOLIDWORKS (CSWE, CSWP, Simulation, Visualize, Support, TA), FEA Simulation
*   **Web/Programming:** HTML, CSS, JavaScript, TypeScript, Markdown, PHP, JSON, XML, VB/VBA, C/C++/Arduino
*   **Tools:** IIS, Figma, VS Code/Cursor, GitHub, Wiki.js, DokuWiki, OpenWebUI, AnythingLLM, CPanel, Microsoft 365, Google Drive, GIMP
*   **Methodologies:** UI/UX Design (Figma prototyping, CSS styling, user-centric design), Project Management, Technical Support & Training, Agile/Iterative Development, DRY Principles, RAG (Retrieval Augmented Generation).

## For Cover Letters / Interviews:

*   Relocation to New Zealand and eagerness to contribute to a NZ tech company.
*   Ability to bridge the gap between engineering and user-friendly design.
*   Proactive problem-solving and continuous improvement mindset.
*   Specific examples of saving time/money or improving efficiency for clients.
*   The "why" behind his passion for automation and knowledge sharing.
*   How his diverse skillset allows him to see the bigger picture and implement holistic solutions.
*   International experience/scope of work (remote work for US company from NZ). 