-- Workflow Management System Seed Data
-- This file contains sample data to populate the database

-- Insert users
INSERT INTO users (id, name, email, role) VALUES
  ('user-001', 'John Doe', 'john.doe@example.com', 'Account Manager'),
  ('user-002', 'Jane Smith', 'jane.smith@example.com', 'Customer Success Manager'),
  ('user-003', 'Mike Johnson', 'mike.johnson@example.com', 'Relationship Manager'),
  ('user-004', 'Sarah Williams', 'sarah.williams@example.com', 'Customer Support Specialist'),
  ('user-005', 'David Brown', 'david.brown@example.com', 'Head of Customer Success'),
  ('user-006', 'Emily Davis', 'emily.davis@example.com', 'Client Onboarding Specialist'),
  ('user-007', 'Robert Miller', 'robert.miller@example.com', 'Business Development Manager'),
  ('user-008', 'Lisa Wilson', 'lisa.wilson@example.com', 'Account Executive'),
  ('user-009', 'James Moore', 'james.moore@example.com', 'Senior Account Manager'),
  ('user-010', 'Patricia Taylor', 'patricia.taylor@example.com', 'Customer Support Lead'),
  ('user-011', 'Christopher Anderson', 'christopher.anderson@example.com', 'Sales Manager'),
  ('user-012', 'Jennifer Thomas', 'jennifer.thomas@example.com', 'Customer Experience Analyst'),
  ('user-013', 'Daniel Jackson', 'daniel.jackson@example.com', 'Partnership Manager'),
  ('user-014', 'Nancy White', 'nancy.white@example.com', 'Customer Success Coach'),
  ('user-015', 'Matthew Harris', 'matthew.harris@example.com', 'Client Solutions Manager'),
  ('user-016', 'Karen Martin', 'karen.martin@example.com', 'Customer Education Specialist'),
  ('user-017', 'Joseph Thompson', 'joseph.thompson@example.com', 'Business Analyst'),
  ('user-018', 'Betty Garcia', 'betty.garcia@example.com', 'Customer Success Associate'),
  ('user-019', 'Thomas Martinez', 'thomas.martinez@example.com', 'Senior Relationship Manager'),
  ('user-020', 'Dorothy Robinson', 'dorothy.robinson@example.com', 'Head of Partnerships'),
  ('user-021', 'Charles Clark', 'charles.clark@example.com', 'Compliance Specialist'),
  ('user-022', 'Maria Rodriguez', 'maria.rodriguez@example.com', 'Client Services Manager'),
  ('user-023', 'Donald Lewis', 'donald.lewis@example.com', 'Enterprise Account Manager'),
  ('user-024', 'Susan Lee', 'susan.lee@example.com', 'Customer Support Manager'),
  ('user-025', 'Paul Walker', 'paul.walker@example.com', 'Sales Development Representative'),
  ('user-026', 'Sandra Hall', 'sandra.hall@example.com', 'Head of Customer Experience'),
  ('user-027', 'Mark Allen', 'mark.allen@example.com', 'Operations Manager'),
  ('user-028', 'Ashley Young', 'ashley.young@example.com', 'Customer Support Agent'),
  ('user-029', 'Steven Hernandez', 'steven.hernandez@example.com', 'Implementation Manager'),
  ('user-030', 'Kimberly King', 'kimberly.king@example.com', 'Business Development Associate'),
  ('user-031', 'Andrew Wright', 'andrew.wright@example.com', 'Senior Customer Support Specialist'),
  ('user-032', 'Donna Lopez', 'donna.lopez@example.com', 'Product Manager'),
  ('user-033', 'Kenneth Hill', 'kenneth.hill@example.com', 'Risk Analyst'),
  ('user-034', 'Carol Scott', 'carol.scott@example.com', 'Customer Communications Manager'),
  ('user-035', 'Joshua Green', 'joshua.green@example.com', 'Onboarding Manager'),
  ('user-036', 'Michelle Adams', 'michelle.adams@example.com', 'Account Coordinator'),
  ('user-037', 'Kevin Baker', 'kevin.baker@example.com', 'Sales Executive'),
  ('user-038', 'Laura Gonzalez', 'laura.gonzalez@example.com', 'Marketing Manager'),
  ('user-039', 'Brian Nelson', 'brian.nelson@example.com', 'Client Success Manager'),
  ('user-040', 'Sarah Carter', 'sarah.carter@example.com', 'Head of Sales'),
  ('user-041', 'Edward Mitchell', 'edward.mitchell@example.com', 'Customer Retention Specialist'),
  ('user-042', 'Deborah Perez', 'deborah.perez@example.com', 'Customer Support Specialist'),
  ('user-043', 'Jason Roberts', 'jason.roberts@example.com', 'Solutions Consultant'),
  ('user-044', 'Stephanie Turner', 'stephanie.turner@example.com', 'Content Manager'),
  ('user-045', 'Ryan Phillips', 'ryan.phillips@example.com', 'Client Relationship Manager'),
  ('user-046', 'Cynthia Campbell', 'cynthia.campbell@example.com', 'Customer Experience Designer'),
  ('user-047', 'Jacob Parker', 'jacob.parker@example.com', 'Account Manager'),
  ('user-048', 'Kathleen Evans', 'kathleen.evans@example.com', 'Implementation Specialist'),
  ('user-049', 'Gary Edwards', 'gary.edwards@example.com', 'Operations Specialist'),
  ('user-050', 'Amy Collins', 'amy.collins@example.com', 'Brand Manager'),
  ('user-051', 'Nicholas Stewart', 'nicholas.stewart@example.com', 'Business Development Manager'),
  ('user-052', 'Shirley Sanchez', 'shirley.sanchez@example.com', 'Accessibility Coordinator'),
  ('user-053', 'Eric Morris', 'eric.morris@example.com', 'Customer Support Specialist'),
  ('user-054', 'Angela Rogers', 'angela.rogers@example.com', 'Knowledge Manager'),
  ('user-055', 'Jonathan Reed', 'jonathan.reed@example.com', 'Operations Analyst'),
  ('user-056', 'Helen Cook', 'helen.cook@example.com', 'Service Designer'),
  ('user-057', 'Justin Morgan', 'justin.morgan@example.com', 'Relationship Manager'),
  ('user-058', 'Melissa Bell', 'melissa.bell@example.com', 'Customer Success Lead'),
  ('user-059', 'Tyler Murphy', 'tyler.murphy@example.com', 'Client Services Specialist'),
  ('user-060', 'Debra Bailey', 'debra.bailey@example.com', 'User Research Manager'),
  ('user-061', 'Aaron Rivera', 'aaron.rivera@example.com', 'Mobile Support Specialist'),
  ('user-062', 'Catherine Cooper', 'catherine.cooper@example.com', 'Customer Success Strategist'),
  ('user-063', 'Adam Richardson', 'adam.richardson@example.com', 'Sales Manager'),
  ('user-064', 'Pamela Cox', 'pamela.cox@example.com', 'Head of Customer Operations'),
  ('user-065', 'Jeremy Howard', 'jeremy.howard@example.com', 'Account Manager'),
  ('user-066', 'Rachel Ward', 'rachel.ward@example.com', 'Customer Insights Lead'),
  ('user-067', 'Brandon Torres', 'brandon.torres@example.com', 'Client Success Manager'),
  ('user-068', 'Samantha Peterson', 'samantha.peterson@example.com', 'Customer Experience Manager'),
  ('user-069', 'Jack Gray', 'jack.gray@example.com', 'Implementation Consultant'),
  ('user-070', 'Catherine Ramirez', 'catherine.ramirez@example.com', 'Visual Content Manager'),
  ('user-071', 'Gerald James', 'gerald.james@example.com', 'Process Manager'),
  ('user-072', 'Heather Watson', 'heather.watson@example.com', 'Customer Support Manager'),
  ('user-073', 'Keith Brooks', 'keith.brooks@example.com', 'Operations Lead'),
  ('user-074', 'Julie Kelly', 'julie.kelly@example.com', 'Product Specialist'),
  ('user-075', 'Sean Sanders', 'sean.sanders@example.com', 'Integration Specialist'),
  ('user-076', 'Evelyn Price', 'evelyn.price@example.com', 'Customer Experience Lead'),
  ('user-077', 'Christian Bennett', 'christian.bennett@example.com', 'Quality Assurance Specialist'),
  ('user-078', 'Marie Wood', 'marie.wood@example.com', 'Customer Research Analyst'),
  ('user-079', 'Austin Barnes', 'austin.barnes@example.com', 'Support Operations Manager'),
  ('user-080', 'Diana Ross', 'diana.ross@example.com', 'Senior Customer Success Manager'),
  ('user-081', 'Jesse Henderson', 'jesse.henderson@example.com', 'Service Quality Manager'),
  ('user-082', 'Jacqueline Coleman', 'jacqueline.coleman@example.com', 'Customer Success Analyst'),
  ('user-083', 'Logan Jenkins', 'logan.jenkins@example.com', 'Account Reliability Manager'),
  ('user-084', 'Teresa Perry', 'teresa.perry@example.com', 'Digital Marketing Manager'),
  ('user-085', 'Nathan Powell', 'nathan.powell@example.com', 'Technical Account Manager'),
  ('user-086', 'Gloria Long', 'gloria.long@example.com', 'Customer Operations Manager'),
  ('user-087', 'Willie Patterson', 'willie.patterson@example.com', 'Customer Monitoring Specialist'),
  ('user-088', 'Theresa Hughes', 'theresa.hughes@example.com', 'Customer Strategy Manager'),
  ('user-089', 'Kyle Flores', 'kyle.flores@example.com', 'Technical Support Specialist'),
  ('user-090', 'Janice Washington', 'janice.washington@example.com', 'Principal Customer Success Manager'),
  ('user-091', 'Randy Butler', 'randy.butler@example.com', 'Payments Support Specialist'),
  ('user-092', 'Cheryl Simmons', 'cheryl.simmons@example.com', 'Head of Customer Success'),
  ('user-093', 'Albert Foster', 'albert.foster@example.com', 'Compliance Manager'),
  ('user-094', 'Katherine Gonzales', 'katherine.gonzales@example.com', 'Senior Product Specialist'),
  ('user-095', 'Roy Bryant', 'roy.bryant@example.com', 'Risk Manager'),
  ('user-096', 'Virginia Alexander', 'virginia.alexander@example.com', 'Customer Success Lead'),
  ('user-097', 'Russell Russell', 'russell.russell@example.com', 'Fraud Prevention Specialist'),
  ('user-098', 'Megan Griffin', 'megan.griffin@example.com', 'Customer Success Consultant'),
  ('user-099', 'Eugene Diaz', 'eugene.diaz@example.com', 'VP of Customer Success'),
  ('user-100', 'Judy Hayes', 'judy.hayes@example.com', 'Head of Client Relations')
ON CONFLICT (id) DO NOTHING;

-- Insert teams
INSERT INTO teams (id, name, members) VALUES
  ('team-001', 'Customer Success Team Alpha', ARRAY['user-001', 'user-002', 'user-018', 'user-039']),
  ('team-002', 'Support Team 24/7', ARRAY['user-004', 'user-028', 'user-042', 'user-053']),
  ('team-003', 'Account Management', ARRAY['user-005', 'user-009', 'user-023', 'user-047']),
  ('team-004', 'Business Development', ARRAY['user-007', 'user-030', 'user-051']),
  ('team-005', 'Sales Team EMEA', ARRAY['user-011', 'user-025', 'user-037', 'user-063']),
  ('team-006', 'Client Onboarding', ARRAY['user-006', 'user-029', 'user-035', 'user-048']),
  ('team-007', 'Partnership Management', ARRAY['user-013', 'user-020', 'user-057']),
  ('team-008', 'Customer Experience', ARRAY['user-012', 'user-026', 'user-046', 'user-068', 'user-076']),
  ('team-009', 'Enterprise Accounts', ARRAY['user-015', 'user-043', 'user-069', 'user-085']),
  ('team-010', 'Operations Team', ARRAY['user-027', 'user-049', 'user-055', 'user-071', 'user-073']),
  ('team-011', 'Compliance & Risk', ARRAY['user-021', 'user-033', 'user-093', 'user-095', 'user-097']),
  ('team-012', 'Product Management', ARRAY['user-032', 'user-074', 'user-094']),
  ('team-013', 'Customer Success Team Beta', ARRAY['user-014', 'user-058', 'user-062', 'user-080', 'user-090']),
  ('team-014', 'Support Operations', ARRAY['user-010', 'user-024', 'user-072', 'user-079']),
  ('team-015', 'Marketing & Communications', ARRAY['user-034', 'user-038', 'user-044', 'user-050', 'user-070', 'user-084']),
  ('team-016', 'Client Services', ARRAY['user-022', 'user-045', 'user-059', 'user-067']),
  ('team-017', 'Customer Research & Insights', ARRAY['user-060', 'user-066', 'user-078', 'user-082']),
  ('team-018', 'Technical Support', ARRAY['user-061', 'user-075', 'user-089', 'user-091']),
  ('team-019', 'Quality & Training', ARRAY['user-016', 'user-052', 'user-077', 'user-081']),
  ('team-020', 'Executive Leadership', ARRAY['user-040', 'user-064', 'user-086', 'user-088', 'user-092', 'user-096', 'user-099', 'user-100'])
ON CONFLICT (id) DO NOTHING;

-- Insert clients
INSERT INTO clients (id, name) VALUES
  ('client-001', 'Acme Corporation'),
  ('client-002', 'TechStart Innovations'),
  ('client-003', 'Global Solutions Limited'),
  ('client-004', 'Horizon Financial Group'),
  ('client-005', 'BlueSky Ventures'),
  ('client-006', 'Sterling Capital Partners'),
  ('client-007', 'Quantum Investments'),
  ('client-008', 'Nexus Banking Solutions'),
  ('client-009', 'Apex Financial Services'),
  ('client-010', 'Pioneer Payment Systems'),
  ('client-011', 'Summit Asset Management'),
  ('client-012', 'Velocity Finance'),
  ('client-013', 'Meridian Capital Group'),
  ('client-014', 'Cascade Investment Partners'),
  ('client-015', 'Phoenix Wealth Management'),
  ('client-016', 'Infinity Financial Holdings'),
  ('client-017', 'Vanguard Payment Solutions'),
  ('client-018', 'Eclipse Trading Platform'),
  ('client-019', 'Zenith Capital Advisors'),
  ('client-020', 'Atlas Banking Corporation'),
  ('client-021', 'Cornerstone Financial'),
  ('client-022', 'Prestige Investment Group'),
  ('client-023', 'Nova Payment Gateway'),
  ('client-024', 'Titan Asset Holdings'),
  ('client-025', 'Evergreen Finance'),
  ('client-026', 'Sunrise Capital Markets'),
  ('client-027', 'Pinnacle Wealth Partners'),
  ('client-028', 'Liberty Financial Group'),
  ('client-029', 'Crown Investment Services'),
  ('client-030', 'Dynasty Capital Management'),
  ('client-031', 'Fortress Banking Solutions'),
  ('client-032', 'Horizon Payment Technologies'),
  ('client-033', 'Stellar Financial Advisors'),
  ('client-034', 'Triumph Investment Partners'),
  ('client-035', 'Unity Financial Services'),
  ('client-036', 'Victory Capital Group'),
  ('client-037', 'Westbridge Asset Management'),
  ('client-038', 'Zenith Payment Solutions'),
  ('client-039', 'Aurora Investment Holdings'),
  ('client-040', 'Beacon Financial Corporation'),
  ('client-041', 'Catalyst Capital Partners'),
  ('client-042', 'Diamond Asset Management'),
  ('client-043', 'Elevation Finance Group'),
  ('client-044', 'Frontier Banking Services'),
  ('client-045', 'Gateway Investment Solutions'),
  ('client-046', 'Harmony Financial Partners'),
  ('client-047', 'Imperial Capital Holdings'),
  ('client-048', 'Jupiter Payment Systems'),
  ('client-049', 'Keystone Wealth Management'),
  ('client-050', 'Legacy Financial Group')
ON CONFLICT (id) DO NOTHING;

-- Insert workflow definitions
INSERT INTO workflow_definitions (id, name, description, version, created_at) VALUES
  ('wf-def-001', 'Client Onboarding Workflow', 'Complete workflow for onboarding new clients to the platform', '1.0.0', '2026-01-01T10:00:00Z'),
  ('wf-def-002', 'Customer Support Resolution', 'Workflow for handling and resolving customer support tickets', '1.0.0', '2026-01-02T10:00:00Z'),
  ('wf-def-003', 'Account Review & Compliance', 'Workflow for periodic account reviews and compliance checks', '1.0.0', '2026-01-03T10:00:00Z'),
  ('wf-def-004', 'Partnership Agreement Process', 'Workflow for establishing and managing new partnerships', '1.0.0', '2026-01-04T10:00:00Z'),
  ('wf-def-005', 'Sales Pipeline Management', 'Workflow for tracking and managing sales opportunities', '1.0.0', '2026-01-05T10:00:00Z'),
  ('wf-def-006', 'Customer Success Review', 'Quarterly business review workflow for customer success', '1.0.0', '2026-01-06T10:00:00Z'),
  ('wf-def-007', 'Enterprise Client Implementation', 'Workflow for implementing solutions for enterprise clients', '1.0.0', '2026-01-07T10:00:00Z'),
  ('wf-def-008', 'Product Feature Request', 'Workflow for managing product feature requests and feedback', '1.0.0', '2026-01-08T10:00:00Z'),
  ('wf-def-009', 'Risk Assessment & Mitigation', 'Workflow for identifying and mitigating client risks', '1.0.0', '2026-01-09T10:00:00Z'),
  ('wf-def-010', 'Marketing Campaign Launch', 'Workflow for planning and executing marketing campaigns', '1.0.0', '2026-01-10T10:00:00Z'),
  ('wf-def-011', 'Customer Retention Program', 'Workflow for managing customer retention initiatives', '1.0.0', '2026-01-11T10:00:00Z'),
  ('wf-def-012', 'Technical Integration Setup', 'Workflow for setting up technical integrations for clients', '1.0.0', '2026-01-12T10:00:00Z'),
  ('wf-def-013', 'Customer Education & Training', 'Workflow for delivering customer education and training programs', '1.0.0', '2026-01-13T10:00:00Z'),
  ('wf-def-014', 'Account Expansion Strategy', 'Workflow for identifying and executing account expansion opportunities', '1.0.0', '2026-01-14T10:00:00Z'),
  ('wf-def-015', 'Customer Experience Enhancement', 'Workflow for improving customer experience based on insights and feedback', '1.0.0', '2026-01-15T10:00:00Z')
ON CONFLICT (id) DO NOTHING;

-- Insert module definitions
INSERT INTO module_definitions (id, workflow_definition_id, name, description) VALUES
  -- General modules used across workflows
  ('module-001', 'wf-def-001', 'Discovery & Planning', 'Initial discovery, requirements gathering and planning phase'),
  ('module-002', 'wf-def-001', 'Documentation & Compliance', 'Documentation collection, review and compliance verification'),
  ('module-003', 'wf-def-001', 'Configuration & Setup', 'System configuration, account setup and customization'),
  ('module-004', 'wf-def-001', 'Training & Enablement', 'Training, education and customer enablement activities'),
  ('module-005', 'wf-def-001', 'Implementation & Deployment', 'Implementation, deployment and go-live activities'),
  ('module-006', 'wf-def-002', 'Analysis & Investigation', 'Analysis, investigation and root cause identification'),
  ('module-007', 'wf-def-002', 'Execution & Resolution', 'Execute solution and resolve issues'),
  ('module-008', 'wf-def-002', 'Quality Assurance', 'Quality checks, testing and validation'),
  ('module-009', 'wf-def-002', 'Monitoring & Follow-up', 'Ongoing monitoring and customer follow-up'),
  ('module-010', 'wf-def-003', 'Risk & Compliance Review', 'Risk assessment and compliance verification')
ON CONFLICT (id) DO NOTHING;

-- Insert task definitions
INSERT INTO task_definitions (id, module_definition_id, name, description) VALUES
  -- Discovery & Planning tasks (module-001)
  ('task-def-001', 'module-001', 'Gather initial requirements', 'Collect and document initial client requirements'),
  ('task-def-002', 'module-001', 'Conduct stakeholder interviews', 'Interview key stakeholders to understand needs'),
  ('task-def-003', 'module-001', 'Define project scope', 'Define and document project scope and boundaries'),
  ('task-def-004', 'module-001', 'Create project timeline', 'Develop detailed project timeline and milestones'),
  ('task-def-005', 'module-001', 'Identify success criteria', 'Define measurable success criteria'),
  ('task-def-006', 'module-001', 'Assess resource requirements', 'Identify required resources and team members'),
  ('task-def-007', 'module-001', 'Define communication plan', 'Establish communication protocols and schedules'),
  ('task-def-008', 'module-001', 'Create risk register', 'Document potential risks and mitigation strategies'),
  ('task-def-009', 'module-001', 'Prepare project charter', 'Create and approve project charter'),
  ('task-def-010', 'module-001', 'Conduct kickoff meeting', 'Facilitate project kickoff meeting'),
  
  -- Documentation & Compliance tasks (module-002)
  ('task-def-011', 'module-002', 'Collect KYC documents', 'Gather Know Your Customer documentation'),
  ('task-def-012', 'module-002', 'Verify client identity', 'Verify client identity and credentials'),
  ('task-def-013', 'module-002', 'Review legal agreements', 'Review and validate legal agreements'),
  ('task-def-014', 'module-002', 'Conduct AML screening', 'Perform Anti-Money Laundering screening'),
  ('task-def-015', 'module-002', 'Verify business licenses', 'Verify required business licenses and permits'),
  ('task-def-016', 'module-002', 'Review financial statements', 'Review and validate financial statements'),
  ('task-def-017', 'module-002', 'Document compliance findings', 'Document all compliance review findings'),
  ('task-def-018', 'module-002', 'Obtain regulatory approvals', 'Secure necessary regulatory approvals'),
  ('task-def-019', 'module-002', 'Create compliance report', 'Generate comprehensive compliance report'),
  ('task-def-020', 'module-002', 'Archive documentation', 'Archive all documentation securely'),
  
  -- Configuration & Setup tasks (module-003)
  ('task-def-021', 'module-003', 'Create user accounts', 'Set up user accounts and access levels'),
  ('task-def-022', 'module-003', 'Configure permissions', 'Configure role-based permissions'),
  ('task-def-023', 'module-003', 'Set up payment methods', 'Configure payment methods and settings'),
  ('task-def-024', 'module-003', 'Configure notification settings', 'Set up email and notification preferences'),
  ('task-def-025', 'module-003', 'Customize branding', 'Apply client branding and customization'),
  ('task-def-026', 'module-003', 'Configure API keys', 'Generate and configure API access keys'),
  ('task-def-027', 'module-003', 'Set up security settings', 'Configure security and authentication settings'),
  ('task-def-028', 'module-003', 'Configure reporting dashboards', 'Set up custom reporting dashboards'),
  ('task-def-029', 'module-003', 'Enable features', 'Enable and configure platform features'),
  ('task-def-030', 'module-003', 'Test configuration', 'Test all configuration settings'),
  
  -- Training & Enablement tasks (module-004)
  ('task-def-031', 'module-004', 'Conduct platform overview', 'Provide overview of platform capabilities'),
  ('task-def-032', 'module-004', 'Train on basic features', 'Train users on basic platform features'),
  ('task-def-033', 'module-004', 'Train on advanced features', 'Train users on advanced functionality'),
  ('task-def-034', 'module-004', 'Provide admin training', 'Train administrators on admin functions'),
  ('task-def-035', 'module-004', 'Create training materials', 'Develop custom training documentation'),
  ('task-def-036', 'module-004', 'Record training sessions', 'Record training sessions for future reference'),
  ('task-def-037', 'module-004', 'Conduct Q&A session', 'Facilitate question and answer session'),
  ('task-def-038', 'module-004', 'Provide best practices guide', 'Share best practices and tips'),
  ('task-def-039', 'module-004', 'Assess training effectiveness', 'Evaluate training effectiveness'),
  ('task-def-040', 'module-004', 'Schedule follow-up training', 'Plan additional training sessions'),
  
  -- Implementation & Deployment tasks (module-005)
  ('task-def-041', 'module-005', 'Prepare production environment', 'Set up and configure production environment'),
  ('task-def-042', 'module-005', 'Migrate data', 'Migrate client data to platform'),
  ('task-def-043', 'module-005', 'Validate data integrity', 'Verify data migration integrity'),
  ('task-def-044', 'module-005', 'Conduct UAT', 'Facilitate user acceptance testing'),
  ('task-def-045', 'module-005', 'Create deployment plan', 'Develop detailed deployment plan'),
  ('task-def-046', 'module-005', 'Execute deployment', 'Execute production deployment'),
  ('task-def-047', 'module-005', 'Verify deployment success', 'Verify successful deployment'),
  ('task-def-048', 'module-005', 'Enable monitoring', 'Enable system monitoring and alerts'),
  ('task-def-049', 'module-005', 'Provide go-live support', 'Support client during go-live'),
  ('task-def-050', 'module-005', 'Document deployment', 'Document deployment process and outcomes'),
  
  -- Analysis & Investigation tasks (module-006)
  ('task-def-051', 'module-006', 'Analyze customer data', 'Analyze customer usage and behavior data'),
  ('task-def-052', 'module-006', 'Identify patterns', 'Identify trends and patterns in data'),
  ('task-def-053', 'module-006', 'Conduct root cause analysis', 'Perform root cause analysis of issues'),
  ('task-def-054', 'module-006', 'Review system logs', 'Review and analyze system logs'),
  ('task-def-055', 'module-006', 'Investigate anomalies', 'Investigate unusual patterns or anomalies'),
  ('task-def-056', 'module-006', 'Benchmark performance', 'Compare performance against benchmarks'),
  ('task-def-057', 'module-006', 'Analyze customer feedback', 'Analyze customer feedback and sentiment'),
  ('task-def-058', 'module-006', 'Identify improvement areas', 'Identify areas for improvement'),
  ('task-def-059', 'module-006', 'Create analysis report', 'Document analysis findings and insights'),
  ('task-def-060', 'module-006', 'Present findings', 'Present analysis findings to stakeholders'),
  
  -- Execution & Resolution tasks (module-007)
  ('task-def-061', 'module-007', 'Implement solution', 'Implement approved solution or fix'),
  ('task-def-062', 'module-007', 'Execute action plan', 'Execute defined action plan'),
  ('task-def-063', 'module-007', 'Coordinate with teams', 'Coordinate activities across teams'),
  ('task-def-064', 'module-007', 'Update configurations', 'Update system configurations as needed'),
  ('task-def-065', 'module-007', 'Apply fixes', 'Apply necessary fixes or patches'),
  ('task-def-066', 'module-007', 'Communicate progress', 'Communicate progress to stakeholders'),
  ('task-def-067', 'module-007', 'Resolve blockers', 'Identify and resolve blockers'),
  ('task-def-068', 'module-007', 'Validate resolution', 'Validate that issue is resolved'),
  ('task-def-069', 'module-007', 'Document solution', 'Document solution and process'),
  ('task-def-070', 'module-007', 'Close ticket', 'Close ticket or work item'),
  
  -- Quality Assurance tasks (module-008)
  ('task-def-071', 'module-008', 'Create test plan', 'Develop comprehensive test plan'),
  ('task-def-072', 'module-008', 'Execute test cases', 'Execute defined test cases'),
  ('task-def-073', 'module-008', 'Perform regression testing', 'Conduct regression testing'),
  ('task-def-074', 'module-008', 'Test integrations', 'Test all system integrations'),
  ('task-def-075', 'module-008', 'Verify functionality', 'Verify all functionality works as expected'),
  ('task-def-076', 'module-008', 'Conduct security testing', 'Perform security testing'),
  ('task-def-077', 'module-008', 'Test performance', 'Conduct performance and load testing'),
  ('task-def-078', 'module-008', 'Document test results', 'Document all test results'),
  ('task-def-079', 'module-008', 'Track defects', 'Log and track identified defects'),
  ('task-def-080', 'module-008', 'Obtain QA approval', 'Obtain quality assurance approval'),
  
  -- Monitoring & Follow-up tasks (module-009)
  ('task-def-081', 'module-009', 'Set up monitoring alerts', 'Configure monitoring and alerting'),
  ('task-def-082', 'module-009', 'Monitor system health', 'Monitor system health and performance'),
  ('task-def-083', 'module-009', 'Track KPIs', 'Track key performance indicators'),
  ('task-def-084', 'module-009', 'Conduct check-in calls', 'Schedule and conduct regular check-ins'),
  ('task-def-085', 'module-009', 'Review usage metrics', 'Review and analyze usage metrics'),
  ('task-def-086', 'module-009', 'Gather feedback', 'Collect ongoing customer feedback'),
  ('task-def-087', 'module-009', 'Address issues promptly', 'Quickly address any arising issues'),
  ('task-def-088', 'module-009', 'Update documentation', 'Update documentation as needed'),
  ('task-def-089', 'module-009', 'Schedule follow-up meetings', 'Plan and schedule follow-up meetings'),
  ('task-def-090', 'module-009', 'Generate status reports', 'Create and distribute status reports'),
  
  -- Risk & Compliance Review tasks (module-010)
  ('task-def-091', 'module-010', 'Conduct risk assessment', 'Perform comprehensive risk assessment'),
  ('task-def-092', 'module-010', 'Review compliance status', 'Review current compliance status'),
  ('task-def-093', 'module-010', 'Identify vulnerabilities', 'Identify security vulnerabilities'),
  ('task-def-094', 'module-010', 'Assess fraud risk', 'Evaluate fraud risk indicators'),
  ('task-def-095', 'module-010', 'Review transaction patterns', 'Review transaction patterns for anomalies'),
  ('task-def-096', 'module-010', 'Update risk scoring', 'Update customer risk scoring'),
  ('task-def-097', 'module-010', 'Recommend mitigations', 'Recommend risk mitigation measures'),
  ('task-def-098', 'module-010', 'Create compliance checklist', 'Develop compliance checklist'),
  ('task-def-099', 'module-010', 'Escalate high risks', 'Escalate high-risk findings'),
  ('task-def-100', 'module-010', 'Generate risk report', 'Generate comprehensive risk report')
ON CONFLICT (id) DO NOTHING;

-- Insert task dependency definitions
INSERT INTO task_dependency_definitions (id, task_definition_id, depends_on_task_definition_id) VALUES
  -- Discovery & Planning dependencies
  ('dep-001', 'task-def-003', 'task-def-001'),
  ('dep-002', 'task-def-003', 'task-def-002'),
  ('dep-003', 'task-def-004', 'task-def-003'),
  ('dep-004', 'task-def-009', 'task-def-003'),
  ('dep-005', 'task-def-009', 'task-def-006'),
  ('dep-006', 'task-def-010', 'task-def-009'),
  
  -- Documentation & Compliance dependencies
  ('dep-007', 'task-def-012', 'task-def-011'),
  ('dep-008', 'task-def-014', 'task-def-012'),
  ('dep-009', 'task-def-017', 'task-def-014'),
  ('dep-010', 'task-def-017', 'task-def-015'),
  ('dep-011', 'task-def-017', 'task-def-016'),
  ('dep-012', 'task-def-018', 'task-def-017'),
  ('dep-013', 'task-def-019', 'task-def-018'),
  ('dep-014', 'task-def-020', 'task-def-019'),
  
  -- Configuration & Setup dependencies
  ('dep-015', 'task-def-022', 'task-def-021'),
  ('dep-016', 'task-def-028', 'task-def-022'),
  ('dep-017', 'task-def-029', 'task-def-022'),
  ('dep-018', 'task-def-030', 'task-def-021'),
  ('dep-019', 'task-def-030', 'task-def-029'),
  
  -- Training & Enablement dependencies
  ('dep-020', 'task-def-031', 'task-def-030'),
  ('dep-021', 'task-def-032', 'task-def-031'),
  ('dep-022', 'task-def-033', 'task-def-032'),
  ('dep-023', 'task-def-034', 'task-def-031'),
  ('dep-024', 'task-def-037', 'task-def-033'),
  ('dep-025', 'task-def-039', 'task-def-037'),
  
  -- Implementation & Deployment dependencies
  ('dep-026', 'task-def-042', 'task-def-041'),
  ('dep-027', 'task-def-043', 'task-def-042'),
  ('dep-028', 'task-def-044', 'task-def-043'),
  ('dep-029', 'task-def-044', 'task-def-040'),
  ('dep-030', 'task-def-045', 'task-def-044'),
  ('dep-031', 'task-def-046', 'task-def-045'),
  ('dep-032', 'task-def-047', 'task-def-046'),
  ('dep-033', 'task-def-048', 'task-def-046'),
  ('dep-034', 'task-def-049', 'task-def-047'),
  ('dep-035', 'task-def-050', 'task-def-049'),
  
  -- Analysis & Investigation dependencies
  ('dep-036', 'task-def-052', 'task-def-051'),
  ('dep-037', 'task-def-053', 'task-def-052'),
  ('dep-038', 'task-def-058', 'task-def-053'),
  ('dep-039', 'task-def-058', 'task-def-057'),
  ('dep-040', 'task-def-059', 'task-def-058'),
  ('dep-041', 'task-def-060', 'task-def-059'),
  
  -- Execution & Resolution dependencies
  ('dep-042', 'task-def-061', 'task-def-059'),
  ('dep-043', 'task-def-068', 'task-def-061'),
  ('dep-044', 'task-def-068', 'task-def-065'),
  ('dep-045', 'task-def-069', 'task-def-068'),
  ('dep-046', 'task-def-070', 'task-def-069'),
  
  -- Quality Assurance dependencies
  ('dep-047', 'task-def-072', 'task-def-071'),
  ('dep-048', 'task-def-073', 'task-def-072'),
  ('dep-049', 'task-def-074', 'task-def-072'),
  ('dep-050', 'task-def-075', 'task-def-072'),
  ('dep-051', 'task-def-076', 'task-def-075'),
  ('dep-052', 'task-def-078', 'task-def-073'),
  ('dep-053', 'task-def-078', 'task-def-074'),
  ('dep-054', 'task-def-078', 'task-def-076'),
  ('dep-055', 'task-def-080', 'task-def-078'),
  
  -- Monitoring & Follow-up dependencies
  ('dep-056', 'task-def-082', 'task-def-081'),
  ('dep-057', 'task-def-085', 'task-def-082'),
  ('dep-058', 'task-def-090', 'task-def-083'),
  ('dep-059', 'task-def-090', 'task-def-085'),
  
  -- Risk & Compliance Review dependencies
  ('dep-060', 'task-def-092', 'task-def-091'),
  ('dep-061', 'task-def-093', 'task-def-091'),
  ('dep-062', 'task-def-094', 'task-def-091'),
  ('dep-063', 'task-def-096', 'task-def-094'),
  ('dep-064', 'task-def-097', 'task-def-092'),
  ('dep-065', 'task-def-097', 'task-def-093'),
  ('dep-066', 'task-def-099', 'task-def-096'),
  ('dep-067', 'task-def-100', 'task-def-097'),
  ('dep-068', 'task-def-100', 'task-def-098'),
  ('dep-069', 'task-def-100', 'task-def-099'),
  
  -- Cross-module dependencies (critical handoffs)
  ('dep-070', 'task-def-021', 'task-def-019'),
  ('dep-071', 'task-def-031', 'task-def-020'),
  ('dep-072', 'task-def-041', 'task-def-080'),
  ('dep-073', 'task-def-091', 'task-def-020')
ON CONFLICT (id) DO NOTHING;

-- Insert workflow instances
INSERT INTO workflow_instances (id, workflow_definition_id, status, client, team, owner, created_at, updated_at, started_at, completed_at) VALUES
  ('wf-inst-001', 'wf-def-001', 'in_progress', '{"id": "client-001", "name": "Acme Corporation"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-005", "name": "David Brown"}'::jsonb, '2026-01-15T10:00:00Z', '2026-01-31T15:30:00Z', '2026-01-15T10:00:00Z', NULL),
  ('wf-inst-002', 'wf-def-003', 'new', '{"id": "client-002", "name": "TechStart Innovations"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '2026-01-30T09:00:00Z', '2026-01-30T09:00:00Z', NULL, NULL),
  ('wf-inst-003', 'wf-def-002', 'in_progress', '{"id": "client-003", "name": "Global Solutions Limited"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '2026-01-20T14:00:00Z', '2026-02-01T10:15:00Z', '2026-01-20T14:30:00Z', NULL),
  ('wf-inst-004', 'wf-def-005', 'in_progress', '{"id": "client-004", "name": "Horizon Financial Group"}'::jsonb, '{"id": "team-005", "name": "Sales Team EMEA"}'::jsonb, '{"id": "user-011", "name": "Christopher Anderson"}'::jsonb, '2026-01-10T09:00:00Z', '2026-02-02T11:00:00Z', '2026-01-11T09:00:00Z', NULL),
  ('wf-inst-005', 'wf-def-001', 'completed', '{"id": "client-005", "name": "BlueSky Ventures"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '2025-12-01T10:00:00Z', '2026-01-05T16:00:00Z', '2025-12-01T10:00:00Z', '2026-01-05T16:00:00Z'),
  ('wf-inst-006', 'wf-def-007', 'in_progress', '{"id": "client-006", "name": "Sterling Capital Partners"}'::jsonb, '{"id": "team-009", "name": "Enterprise Accounts"}'::jsonb, '{"id": "user-015", "name": "Matthew Harris"}'::jsonb, '2026-01-25T11:00:00Z', '2026-02-03T09:30:00Z', '2026-01-26T09:00:00Z', NULL),
  ('wf-inst-007', 'wf-def-004', 'new', '{"id": "client-007", "name": "Quantum Investments"}'::jsonb, '{"id": "team-007", "name": "Partnership Management"}'::jsonb, '{"id": "user-013", "name": "Daniel Jackson"}'::jsonb, '2026-02-01T10:00:00Z', '2026-02-01T10:00:00Z', NULL, NULL),
  ('wf-inst-008', 'wf-def-006', 'completed', '{"id": "client-008", "name": "Nexus Banking Solutions"}'::jsonb, '{"id": "team-001", "name": "Customer Success Team Alpha"}'::jsonb, '{"id": "user-002", "name": "Jane Smith"}'::jsonb, '2025-11-15T09:00:00Z', '2025-12-20T15:00:00Z', '2025-11-16T09:00:00Z', '2025-12-20T15:00:00Z'),
  ('wf-inst-009', 'wf-def-010', 'in_progress', '{"id": "client-009", "name": "Apex Financial Services"}'::jsonb, '{"id": "team-015", "name": "Marketing & Communications"}'::jsonb, '{"id": "user-038", "name": "Laura Gonzalez"}'::jsonb, '2026-01-28T10:00:00Z', '2026-02-03T14:00:00Z', '2026-01-29T09:00:00Z', NULL),
  ('wf-inst-010', 'wf-def-012', 'in_progress', '{"id": "client-010", "name": "Pioneer Payment Systems"}'::jsonb, '{"id": "team-018", "name": "Technical Support"}'::jsonb, '{"id": "user-075", "name": "Sean Sanders"}'::jsonb, '2026-01-18T13:00:00Z', '2026-02-01T16:00:00Z', '2026-01-19T09:00:00Z', NULL),
  ('wf-inst-011', 'wf-def-001', 'completed', '{"id": "client-011", "name": "Summit Asset Management"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '2025-11-01T10:00:00Z', '2025-12-15T17:00:00Z', '2025-11-02T09:00:00Z', '2025-12-15T17:00:00Z'),
  ('wf-inst-012', 'wf-def-011', 'in_progress', '{"id": "client-012", "name": "Velocity Finance"}'::jsonb, '{"id": "team-001", "name": "Customer Success Team Alpha"}'::jsonb, '{"id": "user-039", "name": "Brian Nelson"}'::jsonb, '2026-01-22T10:00:00Z', '2026-02-02T13:00:00Z', '2026-01-23T09:00:00Z', NULL),
  ('wf-inst-013', 'wf-def-003', 'completed', '{"id": "client-013", "name": "Meridian Capital Group"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '2025-12-10T09:00:00Z', '2026-01-10T15:00:00Z', '2025-12-11T09:00:00Z', '2026-01-10T15:00:00Z'),
  ('wf-inst-014', 'wf-def-008', 'new', '{"id": "client-014", "name": "Cascade Investment Partners"}'::jsonb, '{"id": "team-012", "name": "Product Management"}'::jsonb, '{"id": "user-032", "name": "Donna Lopez"}'::jsonb, '2026-02-02T11:00:00Z', '2026-02-02T11:00:00Z', NULL, NULL),
  ('wf-inst-015', 'wf-def-013', 'in_progress', '{"id": "client-015", "name": "Phoenix Wealth Management"}'::jsonb, '{"id": "team-019", "name": "Quality & Training"}'::jsonb, '{"id": "user-016", "name": "Karen Martin"}'::jsonb, '2026-01-27T10:00:00Z', '2026-02-03T12:00:00Z', '2026-01-28T09:00:00Z', NULL),
  ('wf-inst-016', 'wf-def-002', 'completed', '{"id": "client-016", "name": "Infinity Financial Holdings"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '{"id": "user-004", "name": "Sarah Williams"}'::jsonb, '2026-01-05T15:00:00Z', '2026-01-08T17:00:00Z', '2026-01-05T15:30:00Z', '2026-01-08T17:00:00Z'),
  ('wf-inst-017', 'wf-def-005', 'completed', '{"id": "client-017", "name": "Vanguard Payment Solutions"}'::jsonb, '{"id": "team-005", "name": "Sales Team EMEA"}'::jsonb, '{"id": "user-037", "name": "Kevin Baker"}'::jsonb, '2025-12-05T09:00:00Z', '2026-01-20T16:00:00Z', '2025-12-06T09:00:00Z', '2026-01-20T16:00:00Z'),
  ('wf-inst-018', 'wf-def-014', 'in_progress', '{"id": "client-018", "name": "Eclipse Trading Platform"}'::jsonb, '{"id": "team-003", "name": "Account Management"}'::jsonb, '{"id": "user-009", "name": "James Moore"}'::jsonb, '2026-01-24T10:00:00Z', '2026-02-02T15:00:00Z', '2026-01-25T09:00:00Z', NULL),
  ('wf-inst-019', 'wf-def-006', 'in_progress', '{"id": "client-019", "name": "Zenith Capital Advisors"}'::jsonb, '{"id": "team-013", "name": "Customer Success Team Beta"}'::jsonb, '{"id": "user-080", "name": "Diana Ross"}'::jsonb, '2026-01-12T09:00:00Z', '2026-02-01T14:00:00Z', '2026-01-13T09:00:00Z', NULL),
  ('wf-inst-020', 'wf-def-015', 'new', '{"id": "client-020", "name": "Atlas Banking Corporation"}'::jsonb, '{"id": "team-008", "name": "Customer Experience"}'::jsonb, '{"id": "user-026", "name": "Sandra Hall"}'::jsonb, '2026-02-03T10:00:00Z', '2026-02-03T10:00:00Z', NULL, NULL),
  ('wf-inst-021', 'wf-def-001', 'in_progress', '{"id": "client-021", "name": "Cornerstone Financial"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-035", "name": "Joshua Green"}'::jsonb, '2026-01-29T11:00:00Z', '2026-02-03T10:00:00Z', '2026-01-30T09:00:00Z', NULL),
  ('wf-inst-022', 'wf-def-009', 'completed', '{"id": "client-022", "name": "Prestige Investment Group"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-033", "name": "Kenneth Hill"}'::jsonb, '2025-12-15T10:00:00Z', '2026-01-15T16:00:00Z', '2025-12-16T09:00:00Z', '2026-01-15T16:00:00Z'),
  ('wf-inst-023', 'wf-def-002', 'in_progress', '{"id": "client-023", "name": "Nova Payment Gateway"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '{"id": "user-024", "name": "Susan Lee"}'::jsonb, '2026-01-31T14:00:00Z', '2026-02-03T11:00:00Z', '2026-01-31T14:30:00Z', NULL),
  ('wf-inst-024', 'wf-def-007', 'completed', '{"id": "client-024", "name": "Titan Asset Holdings"}'::jsonb, '{"id": "team-009", "name": "Enterprise Accounts"}'::jsonb, '{"id": "user-043", "name": "Jason Roberts"}'::jsonb, '2025-11-20T10:00:00Z', '2026-01-25T17:00:00Z', '2025-11-21T09:00:00Z', '2026-01-25T17:00:00Z'),
  ('wf-inst-025', 'wf-def-010', 'completed', '{"id": "client-025", "name": "Evergreen Finance"}'::jsonb, '{"id": "team-015", "name": "Marketing & Communications"}'::jsonb, '{"id": "user-084", "name": "Teresa Perry"}'::jsonb, '2025-12-01T10:00:00Z', '2026-01-12T16:00:00Z', '2025-12-02T09:00:00Z', '2026-01-12T16:00:00Z'),
  ('wf-inst-026', 'wf-def-004', 'in_progress', '{"id": "client-026", "name": "Sunrise Capital Markets"}'::jsonb, '{"id": "team-007", "name": "Partnership Management"}'::jsonb, '{"id": "user-020", "name": "Dorothy Robinson"}'::jsonb, '2026-01-26T10:00:00Z', '2026-02-02T12:00:00Z', '2026-01-27T09:00:00Z', NULL),
  ('wf-inst-027', 'wf-def-012', 'completed', '{"id": "client-027", "name": "Pinnacle Wealth Partners"}'::jsonb, '{"id": "team-018", "name": "Technical Support"}'::jsonb, '{"id": "user-089", "name": "Kyle Flores"}'::jsonb, '2025-12-20T10:00:00Z', '2026-01-28T15:00:00Z', '2025-12-21T09:00:00Z', '2026-01-28T15:00:00Z'),
  ('wf-inst-028', 'wf-def-011', 'new', '{"id": "client-028", "name": "Liberty Financial Group"}'::jsonb, '{"id": "team-013", "name": "Customer Success Team Beta"}'::jsonb, '{"id": "user-014", "name": "Nancy White"}'::jsonb, '2026-02-02T10:00:00Z', '2026-02-02T10:00:00Z', NULL, NULL),
  ('wf-inst-029', 'wf-def-001', 'completed', '{"id": "client-029", "name": "Crown Investment Services"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '2025-10-15T10:00:00Z', '2025-11-30T17:00:00Z', '2025-10-16T09:00:00Z', '2025-11-30T17:00:00Z'),
  ('wf-inst-030', 'wf-def-005', 'in_progress', '{"id": "client-030", "name": "Dynasty Capital Management"}'::jsonb, '{"id": "team-005", "name": "Sales Team EMEA"}'::jsonb, '{"id": "user-025", "name": "Paul Walker"}'::jsonb, '2026-01-21T09:00:00Z', '2026-02-03T13:00:00Z', '2026-01-22T09:00:00Z', NULL),
  ('wf-inst-031', 'wf-def-003', 'in_progress', '{"id": "client-031", "name": "Fortress Banking Solutions"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '2026-01-28T10:00:00Z', '2026-02-03T11:00:00Z', '2026-01-29T09:00:00Z', NULL),
  ('wf-inst-032', 'wf-def-013', 'completed', '{"id": "client-032", "name": "Horizon Payment Technologies"}'::jsonb, '{"id": "team-019", "name": "Quality & Training"}'::jsonb, '{"id": "user-052", "name": "Shirley Sanchez"}'::jsonb, '2025-11-10T10:00:00Z', '2025-12-22T16:00:00Z', '2025-11-11T09:00:00Z', '2025-12-22T16:00:00Z'),
  ('wf-inst-033', 'wf-def-006', 'new', '{"id": "client-033", "name": "Stellar Financial Advisors"}'::jsonb, '{"id": "team-001", "name": "Customer Success Team Alpha"}'::jsonb, '{"id": "user-001", "name": "John Doe"}'::jsonb, '2026-02-03T09:00:00Z', '2026-02-03T09:00:00Z', NULL, NULL),
  ('wf-inst-034', 'wf-def-002', 'completed', '{"id": "client-034", "name": "Triumph Investment Partners"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '{"id": "user-028", "name": "Ashley Young"}'::jsonb, '2026-01-18T16:00:00Z', '2026-01-22T18:00:00Z', '2026-01-18T16:15:00Z', '2026-01-22T18:00:00Z'),
  ('wf-inst-035', 'wf-def-014', 'completed', '{"id": "client-035", "name": "Unity Financial Services"}'::jsonb, '{"id": "team-003", "name": "Account Management"}'::jsonb, '{"id": "user-047", "name": "Jacob Parker"}'::jsonb, '2025-12-08T10:00:00Z', '2026-01-18T15:00:00Z', '2025-12-09T09:00:00Z', '2026-01-18T15:00:00Z'),
  ('wf-inst-036', 'wf-def-008', 'in_progress', '{"id": "client-036", "name": "Victory Capital Group"}'::jsonb, '{"id": "team-012", "name": "Product Management"}'::jsonb, '{"id": "user-074", "name": "Julie Kelly"}'::jsonb, '2026-01-30T11:00:00Z', '2026-02-03T10:00:00Z', '2026-01-31T09:00:00Z', NULL),
  ('wf-inst-037', 'wf-def-015', 'in_progress', '{"id": "client-037", "name": "Westbridge Asset Management"}'::jsonb, '{"id": "team-008", "name": "Customer Experience"}'::jsonb, '{"id": "user-068", "name": "Samantha Peterson"}'::jsonb, '2026-01-23T10:00:00Z', '2026-02-02T14:00:00Z', '2026-01-24T09:00:00Z', NULL),
  ('wf-inst-038', 'wf-def-007', 'in_progress', '{"id": "client-038", "name": "Zenith Payment Solutions"}'::jsonb, '{"id": "team-009", "name": "Enterprise Accounts"}'::jsonb, '{"id": "user-069", "name": "Jack Gray"}'::jsonb, '2026-01-19T10:00:00Z', '2026-02-02T16:00:00Z', '2026-01-20T09:00:00Z', NULL),
  ('wf-inst-039', 'wf-def-009', 'new', '{"id": "client-039", "name": "Aurora Investment Holdings"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-097", "name": "Russell Russell"}'::jsonb, '2026-02-03T11:00:00Z', '2026-02-03T11:00:00Z', NULL, NULL),
  ('wf-inst-040', 'wf-def-001', 'in_progress', '{"id": "client-040", "name": "Beacon Financial Corporation"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '2026-02-01T10:00:00Z', '2026-02-03T15:00:00Z', '2026-02-01T10:00:00Z', NULL),
  ('wf-inst-041', 'wf-def-004', 'completed', '{"id": "client-041", "name": "Catalyst Capital Partners"}'::jsonb, '{"id": "team-007", "name": "Partnership Management"}'::jsonb, '{"id": "user-057", "name": "Justin Morgan"}'::jsonb, '2025-11-05T10:00:00Z', '2025-12-28T16:00:00Z', '2025-11-06T09:00:00Z', '2025-12-28T16:00:00Z'),
  ('wf-inst-042', 'wf-def-011', 'completed', '{"id": "client-042", "name": "Diamond Asset Management"}'::jsonb, '{"id": "team-013", "name": "Customer Success Team Beta"}'::jsonb, '{"id": "user-058", "name": "Melissa Bell"}'::jsonb, '2025-12-12T10:00:00Z', '2026-01-26T15:00:00Z', '2025-12-13T09:00:00Z', '2026-01-26T15:00:00Z'),
  ('wf-inst-043', 'wf-def-010', 'in_progress', '{"id": "client-043", "name": "Elevation Finance Group"}'::jsonb, '{"id": "team-015", "name": "Marketing & Communications"}'::jsonb, '{"id": "user-044", "name": "Stephanie Turner"}'::jsonb, '2026-01-16T10:00:00Z', '2026-02-02T13:00:00Z', '2026-01-17T09:00:00Z', NULL),
  ('wf-inst-044', 'wf-def-012', 'in_progress', '{"id": "client-044", "name": "Frontier Banking Services"}'::jsonb, '{"id": "team-018", "name": "Technical Support"}'::jsonb, '{"id": "user-061", "name": "Aaron Rivera"}'::jsonb, '2026-01-25T13:00:00Z', '2026-02-03T09:00:00Z', '2026-01-26T09:00:00Z', NULL),
  ('wf-inst-045', 'wf-def-002', 'in_progress', '{"id": "client-045", "name": "Gateway Investment Solutions"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '{"id": "user-072", "name": "Heather Watson"}'::jsonb, '2026-02-01T15:00:00Z', '2026-02-03T12:00:00Z', '2026-02-01T15:20:00Z', NULL),
  ('wf-inst-046', 'wf-def-005', 'new', '{"id": "client-046", "name": "Harmony Financial Partners"}'::jsonb, '{"id": "team-005", "name": "Sales Team EMEA"}'::jsonb, '{"id": "user-063", "name": "Adam Richardson"}'::jsonb, '2026-02-03T12:00:00Z', '2026-02-03T12:00:00Z', NULL, NULL),
  ('wf-inst-047', 'wf-def-006', 'completed', '{"id": "client-047", "name": "Imperial Capital Holdings"}'::jsonb, '{"id": "team-001", "name": "Customer Success Team Alpha"}'::jsonb, '{"id": "user-018", "name": "Betty Garcia"}'::jsonb, '2025-10-20T09:00:00Z', '2025-11-25T15:00:00Z', '2025-10-21T09:00:00Z', '2025-11-25T15:00:00Z'),
  ('wf-inst-048', 'wf-def-013', 'in_progress', '{"id": "client-048", "name": "Jupiter Payment Systems"}'::jsonb, '{"id": "team-019", "name": "Quality & Training"}'::jsonb, '{"id": "user-077", "name": "Christian Bennett"}'::jsonb, '2026-01-20T10:00:00Z', '2026-02-02T11:00:00Z', '2026-01-21T09:00:00Z', NULL),
  ('wf-inst-049', 'wf-def-003', 'completed', '{"id": "client-049", "name": "Keystone Wealth Management"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '2025-11-25T10:00:00Z', '2026-01-08T16:00:00Z', '2025-11-26T09:00:00Z', '2026-01-08T16:00:00Z'),
  ('wf-inst-050', 'wf-def-014', 'in_progress', '{"id": "client-050", "name": "Legacy Financial Group"}'::jsonb, '{"id": "team-003", "name": "Account Management"}'::jsonb, '{"id": "user-023", "name": "Donald Lewis"}'::jsonb, '2026-01-27T10:00:00Z', '2026-02-03T14:00:00Z', '2026-01-28T09:00:00Z', NULL),
  ('wf-inst-051', 'wf-def-008', 'completed', '{"id": "client-001", "name": "Acme Corporation"}'::jsonb, '{"id": "team-012", "name": "Product Management"}'::jsonb, '{"id": "user-094", "name": "Katherine Gonzales"}'::jsonb, '2025-12-18T10:00:00Z', '2026-01-22T15:00:00Z', '2025-12-19T09:00:00Z', '2026-01-22T15:00:00Z'),
  ('wf-inst-052', 'wf-def-015', 'completed', '{"id": "client-010", "name": "Pioneer Payment Systems"}'::jsonb, '{"id": "team-008", "name": "Customer Experience"}'::jsonb, '{"id": "user-076", "name": "Evelyn Price"}'::jsonb, '2025-11-28T10:00:00Z', '2026-01-14T16:00:00Z', '2025-11-29T09:00:00Z', '2026-01-14T16:00:00Z'),
  ('wf-inst-053', 'wf-def-002', 'completed', '{"id": "client-015", "name": "Phoenix Wealth Management"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '{"id": "user-042", "name": "Deborah Perez"}'::jsonb, '2026-01-26T13:00:00Z', '2026-01-29T16:00:00Z', '2026-01-26T13:15:00Z', '2026-01-29T16:00:00Z'),
  ('wf-inst-054', 'wf-def-009', 'in_progress', '{"id": "client-020", "name": "Atlas Banking Corporation"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '2026-01-17T10:00:00Z', '2026-02-02T12:00:00Z', '2026-01-18T09:00:00Z', NULL),
  ('wf-inst-055', 'wf-def-007', 'new', '{"id": "client-025", "name": "Evergreen Finance"}'::jsonb, '{"id": "team-009", "name": "Enterprise Accounts"}'::jsonb, '{"id": "user-085", "name": "Nathan Powell"}'::jsonb, '2026-02-03T13:00:00Z', '2026-02-03T13:00:00Z', NULL, NULL)
ON CONFLICT (id) DO NOTHING;

-- Insert module instances
INSERT INTO module_instances (id, workflow_instance_id, module_definition_id, status) VALUES
  -- Module instances for wf-inst-001 (Client Onboarding Workflow - wf-def-001)
  ('mod-inst-001-001', 'wf-inst-001', 'module-001', 'completed'),
  ('mod-inst-001-002', 'wf-inst-001', 'module-002', 'completed'),
  ('mod-inst-001-003', 'wf-inst-001', 'module-003', 'in_progress'),
  ('mod-inst-001-004', 'wf-inst-001', 'module-004', 'new'),
  ('mod-inst-001-005', 'wf-inst-001', 'module-005', 'new'),
  
  -- Module instances for wf-inst-002 (Account Review & Compliance - wf-def-003)
  ('mod-inst-002-001', 'wf-inst-002', 'module-010', 'new'),
  
  -- Module instances for wf-inst-003 (Customer Support Resolution - wf-def-002)
  ('mod-inst-003-001', 'wf-inst-003', 'module-006', 'completed'),
  ('mod-inst-003-002', 'wf-inst-003', 'module-007', 'in_progress'),
  ('mod-inst-003-003', 'wf-inst-003', 'module-008', 'new'),
  ('mod-inst-003-004', 'wf-inst-003', 'module-009', 'new'),
  
  -- Module instances for wf-inst-005 (Client Onboarding Workflow - wf-def-001 - completed)
  ('mod-inst-005-001', 'wf-inst-005', 'module-001', 'completed'),
  ('mod-inst-005-002', 'wf-inst-005', 'module-002', 'completed'),
  ('mod-inst-005-003', 'wf-inst-005', 'module-003', 'completed'),
  ('mod-inst-005-004', 'wf-inst-005', 'module-004', 'completed'),
  ('mod-inst-005-005', 'wf-inst-005', 'module-005', 'completed'),
  
  -- Module instances for wf-inst-008 (Customer Success Review - wf-def-006 - completed)
  ('mod-inst-008-001', 'wf-inst-008', 'module-001', 'completed'),
  ('mod-inst-008-002', 'wf-inst-008', 'module-006', 'completed'),
  ('mod-inst-008-003', 'wf-inst-008', 'module-007', 'completed'),
  ('mod-inst-008-004', 'wf-inst-008', 'module-009', 'completed'),
  
  -- Module instances for wf-inst-011 (Client Onboarding Workflow - wf-def-001 - completed)
  ('mod-inst-011-001', 'wf-inst-011', 'module-001', 'completed'),
  ('mod-inst-011-002', 'wf-inst-011', 'module-002', 'completed'),
  ('mod-inst-011-003', 'wf-inst-011', 'module-003', 'completed'),
  ('mod-inst-011-004', 'wf-inst-011', 'module-004', 'completed'),
  ('mod-inst-011-005', 'wf-inst-011', 'module-005', 'completed'),
  
  -- Module instances for wf-inst-013 (Account Review & Compliance - wf-def-003 - completed)
  ('mod-inst-013-001', 'wf-inst-013', 'module-010', 'completed'),
  
  -- Module instances for wf-inst-016 (Customer Support Resolution - wf-def-002 - completed)
  ('mod-inst-016-001', 'wf-inst-016', 'module-006', 'completed'),
  ('mod-inst-016-002', 'wf-inst-016', 'module-007', 'completed'),
  ('mod-inst-016-003', 'wf-inst-016', 'module-008', 'completed'),
  ('mod-inst-016-004', 'wf-inst-016', 'module-009', 'completed'),
  
  -- Module instances for wf-inst-021 (Client Onboarding Workflow - wf-def-001 - in_progress)
  ('mod-inst-021-001', 'wf-inst-021', 'module-001', 'completed'),
  ('mod-inst-021-002', 'wf-inst-021', 'module-002', 'in_progress'),
  ('mod-inst-021-003', 'wf-inst-021', 'module-003', 'new'),
  ('mod-inst-021-004', 'wf-inst-021', 'module-004', 'new'),
  ('mod-inst-021-005', 'wf-inst-021', 'module-005', 'new'),
  
  -- Module instances for wf-inst-029 (Client Onboarding Workflow - wf-def-001 - completed)
  ('mod-inst-029-001', 'wf-inst-029', 'module-001', 'completed'),
  ('mod-inst-029-002', 'wf-inst-029', 'module-002', 'completed'),
  ('mod-inst-029-003', 'wf-inst-029', 'module-003', 'completed'),
  ('mod-inst-029-004', 'wf-inst-029', 'module-004', 'completed'),
  ('mod-inst-029-005', 'wf-inst-029', 'module-005', 'completed'),
  
  -- Module instances for wf-inst-031 (Account Review & Compliance - wf-def-003 - in_progress)
  ('mod-inst-031-001', 'wf-inst-031', 'module-010', 'in_progress'),
  
  -- Module instances for wf-inst-034 (Customer Support Resolution - wf-def-002 - completed)
  ('mod-inst-034-001', 'wf-inst-034', 'module-006', 'completed'),
  ('mod-inst-034-002', 'wf-inst-034', 'module-007', 'completed'),
  ('mod-inst-034-003', 'wf-inst-034', 'module-008', 'completed'),
  ('mod-inst-034-004', 'wf-inst-034', 'module-009', 'completed'),
  
  -- Module instances for wf-inst-040 (Client Onboarding Workflow - wf-def-001 - in_progress)
  ('mod-inst-040-001', 'wf-inst-040', 'module-001', 'completed'),
  ('mod-inst-040-002', 'wf-inst-040', 'module-002', 'completed'),
  ('mod-inst-040-003', 'wf-inst-040', 'module-003', 'completed'),
  ('mod-inst-040-004', 'wf-inst-040', 'module-004', 'in_progress'),
  ('mod-inst-040-005', 'wf-inst-040', 'module-005', 'new'),
  
  -- Module instances for wf-inst-045 (Customer Support Resolution - wf-def-002 - in_progress)
  ('mod-inst-045-001', 'wf-inst-045', 'module-006', 'completed'),
  ('mod-inst-045-002', 'wf-inst-045', 'module-007', 'in_progress'),
  ('mod-inst-045-003', 'wf-inst-045', 'module-008', 'new'),
  ('mod-inst-045-004', 'wf-inst-045', 'module-009', 'new'),
  
  -- Module instances for wf-inst-049 (Account Review & Compliance - wf-def-003 - completed)
  ('mod-inst-049-001', 'wf-inst-049', 'module-010', 'completed'),
  
  -- Module instances for wf-inst-053 (Customer Support Resolution - wf-def-002 - completed)
  ('mod-inst-053-001', 'wf-inst-053', 'module-006', 'completed'),
  ('mod-inst-053-002', 'wf-inst-053', 'module-007', 'completed'),
  ('mod-inst-053-003', 'wf-inst-053', 'module-008', 'completed'),
  ('mod-inst-053-004', 'wf-inst-053', 'module-009', 'completed')
ON CONFLICT (id) DO NOTHING;

-- Insert task instances
INSERT INTO task_instances (id, module_instance_id, task_definition_id, workflow_instance_id, status, owner, team, started_at, completed_at) VALUES
  -- Task instances for mod-inst-001-001 (Discovery & Planning - completed)
  ('task-inst-001-001-001', 'mod-inst-001-001', 'task-def-001', 'wf-inst-001', 'completed', '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-15T10:00:00Z', '2026-01-15T16:00:00Z'),
  ('task-inst-001-001-002', 'mod-inst-001-001', 'task-def-002', 'wf-inst-001', 'completed', '{"id": "user-035", "name": "Joshua Green"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-16T09:00:00Z', '2026-01-16T17:00:00Z'),
  ('task-inst-001-001-003', 'mod-inst-001-001', 'task-def-003', 'wf-inst-001', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-17T09:00:00Z', '2026-01-17T15:00:00Z'),
  ('task-inst-001-001-004', 'mod-inst-001-001', 'task-def-004', 'wf-inst-001', 'completed', '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-18T09:00:00Z', '2026-01-18T12:00:00Z'),
  ('task-inst-001-001-009', 'mod-inst-001-001', 'task-def-009', 'wf-inst-001', 'completed', '{"id": "user-005", "name": "David Brown"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-19T09:00:00Z', '2026-01-19T14:00:00Z'),
  ('task-inst-001-001-010', 'mod-inst-001-001', 'task-def-010', 'wf-inst-001', 'completed', '{"id": "user-005", "name": "David Brown"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-20T10:00:00Z', '2026-01-20T11:30:00Z'),
  
  -- Task instances for mod-inst-001-002 (Documentation & Compliance - completed)
  ('task-inst-001-002-011', 'mod-inst-001-002', 'task-def-011', 'wf-inst-001', 'completed', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-21T09:00:00Z', '2026-01-22T17:00:00Z'),
  ('task-inst-001-002-012', 'mod-inst-001-002', 'task-def-012', 'wf-inst-001', 'completed', '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-23T09:00:00Z', '2026-01-23T16:00:00Z'),
  ('task-inst-001-002-014', 'mod-inst-001-002', 'task-def-014', 'wf-inst-001', 'completed', '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-24T09:00:00Z', '2026-01-24T15:00:00Z'),
  ('task-inst-001-002-017', 'mod-inst-001-002', 'task-def-017', 'wf-inst-001', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-25T09:00:00Z', '2026-01-25T17:00:00Z'),
  ('task-inst-001-002-019', 'mod-inst-001-002', 'task-def-019', 'wf-inst-001', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-26T09:00:00Z', '2026-01-27T12:00:00Z'),
  ('task-inst-001-002-020', 'mod-inst-001-002', 'task-def-020', 'wf-inst-001', 'completed', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-27T13:00:00Z', '2026-01-27T16:00:00Z'),
  
  -- Task instances for mod-inst-001-003 (Configuration & Setup - in_progress)
  ('task-inst-001-003-021', 'mod-inst-001-003', 'task-def-021', 'wf-inst-001', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-28T09:00:00Z', '2026-01-28T14:00:00Z'),
  ('task-inst-001-003-022', 'mod-inst-001-003', 'task-def-022', 'wf-inst-001', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-29T09:00:00Z', '2026-01-29T15:00:00Z'),
  ('task-inst-001-003-028', 'mod-inst-001-003', 'task-def-028', 'wf-inst-001', 'in_progress', '{"id": "user-035", "name": "Joshua Green"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-30T09:00:00Z', NULL),
  ('task-inst-001-003-029', 'mod-inst-001-003', 'task-def-029', 'wf-inst-001', 'in_progress', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-30T11:00:00Z', NULL),
  ('task-inst-001-003-030', 'mod-inst-001-003', 'task-def-030', 'wf-inst-001', 'new', NULL, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, NULL, NULL),
  
  -- Task instances for mod-inst-003-001 (Analysis & Investigation - completed)
  ('task-inst-003-001-051', 'mod-inst-003-001', 'task-def-051', 'wf-inst-003', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-20T14:30:00Z', '2026-01-21T10:00:00Z'),
  ('task-inst-003-001-052', 'mod-inst-003-001', 'task-def-052', 'wf-inst-003', 'completed', '{"id": "user-004", "name": "Sarah Williams"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-21T10:30:00Z', '2026-01-21T16:00:00Z'),
  ('task-inst-003-001-053', 'mod-inst-003-001', 'task-def-053', 'wf-inst-003', 'completed', '{"id": "user-028", "name": "Ashley Young"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-22T09:00:00Z', '2026-01-23T14:00:00Z'),
  ('task-inst-003-001-059', 'mod-inst-003-001', 'task-def-059', 'wf-inst-003', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-24T09:00:00Z', '2026-01-25T12:00:00Z'),
  
  -- Task instances for mod-inst-003-002 (Execution & Resolution - in_progress)
  ('task-inst-003-002-061', 'mod-inst-003-002', 'task-def-061', 'wf-inst-003', 'completed', '{"id": "user-042", "name": "Deborah Perez"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-26T09:00:00Z', '2026-01-28T15:00:00Z'),
  ('task-inst-003-002-065', 'mod-inst-003-002', 'task-def-065', 'wf-inst-003', 'completed', '{"id": "user-053", "name": "Eric Morris"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-29T09:00:00Z', '2026-01-30T16:00:00Z'),
  ('task-inst-003-002-068', 'mod-inst-003-002', 'task-def-068', 'wf-inst-003', 'in_progress', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-31T09:00:00Z', NULL),
  ('task-inst-003-002-069', 'mod-inst-003-002', 'task-def-069', 'wf-inst-003', 'new', NULL, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, NULL, NULL),
  
  -- Task instances for mod-inst-005-001 through mod-inst-005-005 (Client Onboarding - all completed)
  ('task-inst-005-001-001', 'mod-inst-005-001', 'task-def-001', 'wf-inst-005', 'completed', '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-01T10:00:00Z', '2025-12-01T16:00:00Z'),
  ('task-inst-005-001-003', 'mod-inst-005-001', 'task-def-003', 'wf-inst-005', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-02T09:00:00Z', '2025-12-02T15:00:00Z'),
  ('task-inst-005-002-012', 'mod-inst-005-002', 'task-def-012', 'wf-inst-005', 'completed', '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-05T09:00:00Z', '2025-12-05T16:00:00Z'),
  ('task-inst-005-002-019', 'mod-inst-005-002', 'task-def-019', 'wf-inst-005', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-09T09:00:00Z', '2025-12-10T12:00:00Z'),
  ('task-inst-005-003-021', 'mod-inst-005-003', 'task-def-021', 'wf-inst-005', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-12T09:00:00Z', '2025-12-12T14:00:00Z'),
  ('task-inst-005-003-030', 'mod-inst-005-003', 'task-def-030', 'wf-inst-005', 'completed', '{"id": "user-035", "name": "Joshua Green"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-16T09:00:00Z', '2025-12-16T17:00:00Z'),
  ('task-inst-005-004-031', 'mod-inst-005-004', 'task-def-031', 'wf-inst-005', 'completed', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-18T09:00:00Z', '2025-12-18T16:00:00Z'),
  ('task-inst-005-004-032', 'mod-inst-005-004', 'task-def-032', 'wf-inst-005', 'completed', '{"id": "user-016", "name": "Karen Martin"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-19T09:00:00Z', '2025-12-19T17:00:00Z'),
  ('task-inst-005-005-042', 'mod-inst-005-005', 'task-def-042', 'wf-inst-005', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2025-12-23T09:00:00Z', '2025-12-27T17:00:00Z'),
  ('task-inst-005-005-046', 'mod-inst-005-005', 'task-def-046', 'wf-inst-005', 'completed', '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-02T09:00:00Z', '2026-01-03T17:00:00Z'),
  ('task-inst-005-005-049', 'mod-inst-005-005', 'task-def-049', 'wf-inst-005', 'completed', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-04T09:00:00Z', '2026-01-05T16:00:00Z'),
  
  -- Task instances for mod-inst-016-001 through mod-inst-016-004 (Support Resolution - all completed)
  ('task-inst-016-001-051', 'mod-inst-016-001', 'task-def-051', 'wf-inst-016', 'completed', '{"id": "user-004", "name": "Sarah Williams"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-05T15:30:00Z', '2026-01-05T17:00:00Z'),
  ('task-inst-016-001-053', 'mod-inst-016-001', 'task-def-053', 'wf-inst-016', 'completed', '{"id": "user-028", "name": "Ashley Young"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-06T09:00:00Z', '2026-01-06T14:00:00Z'),
  ('task-inst-016-002-061', 'mod-inst-016-002', 'task-def-061', 'wf-inst-016', 'completed', '{"id": "user-042", "name": "Deborah Perez"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-06T15:00:00Z', '2026-01-07T16:00:00Z'),
  ('task-inst-016-002-068', 'mod-inst-016-002', 'task-def-068', 'wf-inst-016', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-08T09:00:00Z', '2026-01-08T14:00:00Z'),
  ('task-inst-016-002-070', 'mod-inst-016-002', 'task-def-070', 'wf-inst-016', 'completed', '{"id": "user-004", "name": "Sarah Williams"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-08T15:00:00Z', '2026-01-08T17:00:00Z'),
  ('task-inst-016-003-072', 'mod-inst-016-003', 'task-def-072', 'wf-inst-016', 'completed', '{"id": "user-077", "name": "Christian Bennett"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-07T10:00:00Z', '2026-01-07T16:00:00Z'),
  ('task-inst-016-003-080', 'mod-inst-016-003', 'task-def-080', 'wf-inst-016', 'completed', '{"id": "user-081", "name": "Jesse Henderson"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-08T10:00:00Z', '2026-01-08T12:00:00Z'),
  ('task-inst-016-004-082', 'mod-inst-016-004', 'task-def-082', 'wf-inst-016', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-08T13:00:00Z', '2026-01-08T17:00:00Z'),
  
  -- Task instances for mod-inst-021-001 (Discovery & Planning - completed)
  ('task-inst-021-001-001', 'mod-inst-021-001', 'task-def-001', 'wf-inst-021', 'completed', '{"id": "user-035", "name": "Joshua Green"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-30T09:00:00Z', '2026-01-30T16:00:00Z'),
  ('task-inst-021-001-002', 'mod-inst-021-001', 'task-def-002', 'wf-inst-021', 'completed', '{"id": "user-006", "name": "Emily Davis"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-01-31T09:00:00Z', '2026-01-31T17:00:00Z'),
  ('task-inst-021-001-003', 'mod-inst-021-001', 'task-def-003', 'wf-inst-021', 'completed', '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-02-01T09:00:00Z', '2026-02-01T15:00:00Z'),
  
  -- Task instances for mod-inst-021-002 (Documentation & Compliance - in_progress)
  ('task-inst-021-002-011', 'mod-inst-021-002', 'task-def-011', 'wf-inst-021', 'completed', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-02-02T09:00:00Z', '2026-02-02T17:00:00Z'),
  ('task-inst-021-002-012', 'mod-inst-021-002', 'task-def-012', 'wf-inst-021', 'in_progress', '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-02-03T09:00:00Z', NULL),
  ('task-inst-021-002-014', 'mod-inst-021-002', 'task-def-014', 'wf-inst-021', 'new', NULL, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, NULL, NULL),
  
  -- Task instances for mod-inst-040-004 (Training & Enablement - in_progress)
  ('task-inst-040-004-031', 'mod-inst-040-004', 'task-def-031', 'wf-inst-040', 'completed', '{"id": "user-016", "name": "Karen Martin"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-02-02T09:00:00Z', '2026-02-02T16:00:00Z'),
  ('task-inst-040-004-032', 'mod-inst-040-004', 'task-def-032', 'wf-inst-040', 'in_progress', '{"id": "user-048", "name": "Kathleen Evans"}'::jsonb, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, '2026-02-03T09:00:00Z', NULL),
  ('task-inst-040-004-033', 'mod-inst-040-004', 'task-def-033', 'wf-inst-040', 'new', NULL, '{"id": "team-006", "name": "Client Onboarding"}'::jsonb, NULL, NULL),
  
  -- Task instances for mod-inst-045-001 (Analysis & Investigation - completed)
  ('task-inst-045-001-051', 'mod-inst-045-001', 'task-def-051', 'wf-inst-045', 'completed', '{"id": "user-072", "name": "Heather Watson"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '2026-02-01T15:20:00Z', '2026-02-01T18:00:00Z'),
  ('task-inst-045-001-052', 'mod-inst-045-001', 'task-def-052', 'wf-inst-045', 'completed', '{"id": "user-079", "name": "Austin Barnes"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '2026-02-02T09:00:00Z', '2026-02-02T14:00:00Z'),
  
  -- Task instances for mod-inst-045-002 (Execution & Resolution - in_progress)
  ('task-inst-045-002-061', 'mod-inst-045-002', 'task-def-061', 'wf-inst-045', 'completed', '{"id": "user-024", "name": "Susan Lee"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '2026-02-02T15:00:00Z', '2026-02-03T10:00:00Z'),
  ('task-inst-045-002-068', 'mod-inst-045-002', 'task-def-068', 'wf-inst-045', 'in_progress', '{"id": "user-072", "name": "Heather Watson"}'::jsonb, '{"id": "team-014", "name": "Support Operations"}'::jsonb, '2026-02-03T10:30:00Z', NULL),
  
  -- Task instances for mod-inst-031-001 (Risk & Compliance Review - in_progress)
  ('task-inst-031-001-091', 'mod-inst-031-001', 'task-def-091', 'wf-inst-031', 'completed', '{"id": "user-021", "name": "Charles Clark"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2026-01-29T09:00:00Z', '2026-01-30T17:00:00Z'),
  ('task-inst-031-001-092', 'mod-inst-031-001', 'task-def-092', 'wf-inst-031', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2026-01-31T09:00:00Z', '2026-02-01T12:00:00Z'),
  ('task-inst-031-001-094', 'mod-inst-031-001', 'task-def-094', 'wf-inst-031', 'completed', '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2026-02-01T13:00:00Z', '2026-02-02T16:00:00Z'),
  ('task-inst-031-001-097', 'mod-inst-031-001', 'task-def-097', 'wf-inst-031', 'in_progress', '{"id": "user-033", "name": "Kenneth Hill"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2026-02-03T09:00:00Z', NULL),
  
  -- Task instances for mod-inst-002-001 (Risk & Compliance Review - pending/new)
  ('task-inst-002-001-091', 'mod-inst-002-001', 'task-def-091', 'wf-inst-002', 'new', NULL, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, NULL, NULL),
  
  -- Task instances for mod-inst-013-001 (Risk & Compliance Review - completed)
  ('task-inst-013-001-091', 'mod-inst-013-001', 'task-def-091', 'wf-inst-013', 'completed', '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-12-11T09:00:00Z', '2025-12-15T17:00:00Z'),
  ('task-inst-013-001-092', 'mod-inst-013-001', 'task-def-092', 'wf-inst-013', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-12-16T09:00:00Z', '2025-12-20T16:00:00Z'),
  ('task-inst-013-001-097', 'mod-inst-013-001', 'task-def-097', 'wf-inst-013', 'completed', '{"id": "user-033", "name": "Kenneth Hill"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-12-28T09:00:00Z', '2026-01-05T17:00:00Z'),
  ('task-inst-013-001-100', 'mod-inst-013-001', 'task-def-100', 'wf-inst-013', 'completed', '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2026-01-06T09:00:00Z', '2026-01-10T15:00:00Z'),
  
  -- Task instances for mod-inst-049-001 (Risk & Compliance Review - completed)
  ('task-inst-049-001-091', 'mod-inst-049-001', 'task-def-091', 'wf-inst-049', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-11-26T09:00:00Z', '2025-11-30T17:00:00Z'),
  ('task-inst-049-001-094', 'mod-inst-049-001', 'task-def-094', 'wf-inst-049', 'completed', '{"id": "user-095", "name": "Roy Bryant"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-12-02T09:00:00Z', '2025-12-10T16:00:00Z'),
  ('task-inst-049-001-100', 'mod-inst-049-001', 'task-def-100', 'wf-inst-049', 'completed', '{"id": "user-093", "name": "Albert Foster"}'::jsonb, '{"id": "team-011", "name": "Compliance & Risk"}'::jsonb, '2025-12-20T09:00:00Z', '2026-01-08T16:00:00Z'),
  
  -- Task instances for mod-inst-034-001 through mod-inst-034-004 (Support Resolution - completed)
  ('task-inst-034-001-051', 'mod-inst-034-001', 'task-def-051', 'wf-inst-034', 'completed', '{"id": "user-028", "name": "Ashley Young"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-18T16:15:00Z', '2026-01-19T10:00:00Z'),
  ('task-inst-034-002-061', 'mod-inst-034-002', 'task-def-061', 'wf-inst-034', 'completed', '{"id": "user-042", "name": "Deborah Perez"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-19T11:00:00Z', '2026-01-20T16:00:00Z'),
  ('task-inst-034-002-070', 'mod-inst-034-002', 'task-def-070', 'wf-inst-034', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-22T14:00:00Z', '2026-01-22T18:00:00Z'),
  ('task-inst-034-003-075', 'mod-inst-034-003', 'task-def-075', 'wf-inst-034', 'completed', '{"id": "user-077", "name": "Christian Bennett"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-21T09:00:00Z', '2026-01-21T17:00:00Z'),
  ('task-inst-034-004-082', 'mod-inst-034-004', 'task-def-082', 'wf-inst-034', 'completed', '{"id": "user-024", "name": "Susan Lee"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-22T09:00:00Z', '2026-01-22T12:00:00Z'),
  
  -- Task instances for mod-inst-053-001 through mod-inst-053-004 (Support Resolution - completed)
  ('task-inst-053-001-052', 'mod-inst-053-001', 'task-def-052', 'wf-inst-053', 'completed', '{"id": "user-042", "name": "Deborah Perez"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-26T13:15:00Z', '2026-01-27T10:00:00Z'),
  ('task-inst-053-002-061', 'mod-inst-053-002', 'task-def-061', 'wf-inst-053', 'completed', '{"id": "user-028", "name": "Ashley Young"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-27T11:00:00Z', '2026-01-28T15:00:00Z'),
  ('task-inst-053-002-069', 'mod-inst-053-002', 'task-def-069', 'wf-inst-053', 'completed', '{"id": "user-010", "name": "Patricia Taylor"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-29T09:00:00Z', '2026-01-29T14:00:00Z'),
  ('task-inst-053-003-072', 'mod-inst-053-003', 'task-def-072', 'wf-inst-053', 'completed', '{"id": "user-077", "name": "Christian Bennett"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-28T09:00:00Z', '2026-01-28T16:00:00Z'),
  ('task-inst-053-004-090', 'mod-inst-053-004', 'task-def-090', 'wf-inst-053', 'completed', '{"id": "user-024", "name": "Susan Lee"}'::jsonb, '{"id": "team-002", "name": "Support Team 24/7"}'::jsonb, '2026-01-29T15:00:00Z', '2026-01-29T16:00:00Z')
ON CONFLICT (id) DO NOTHING;


