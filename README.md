# SaaS Customer Support Workflow Improvement

## Business Analysis Portfolio Case Study

> A fictional SaaS case study demonstrating Business Analysis techniques across stakeholder analysis, process mapping, requirements gathering, process improvement, UAT, KPI analysis and SQL.

---

## 📌 Project Overview

**SupportFlow** is a fictional SaaS customer support platform used by businesses to manage customer support tickets, issue categorization, ticket assignment, SLA tracking, escalations and resolution workflows.

This project analyzes the existing customer support workflow, identifies process gaps and pain points, gathers business and functional requirements, and proposes an improved support workflow.

The project follows a structured Business Analysis lifecycle from identifying the business problem through requirements, user stories, UAT and KPI definition.

---

## 🎯 Business Problem

The existing customer support workflow relies heavily on manual ticket categorization, assignment and escalation.

This can result in:

- Incorrect ticket routing
- Delays in issue resolution
- Increased SLA risk
- Repeated communication with customers
- Incomplete information during technical handoffs
- Limited visibility into recurring customer issues
- Difficulty identifying workflow bottlenecks

A key example is **insufficient information at ticket creation**, which may require support agents to go back to customers for additional details before beginning investigation.

---

## 🎯 Project Objective

The objective of this project is to:

- Analyze the existing customer support workflow
- Identify process gaps and operational pain points
- Understand stakeholder needs and expectations
- Define business and functional requirements
- Design an improved To-Be workflow
- Convert requirements into user stories and acceptance criteria
- Define UAT scenarios for business validation
- Establish KPIs to measure workflow performance
- Demonstrate how SQL can support operational analysis

---

## 🔍 Business Analysis Approach

The project follows the following BA lifecycle:

```text
Business Problem
       ↓
Stakeholder Analysis
       ↓
As-Is Process
       ↓
Pain Point Analysis
       ↓
Gap Analysis
       ↓
Requirements Gathering
       ↓
Business & Functional Requirements
       ↓
BRD
       ↓
To-Be Process
       ↓
User Stories
       ↓
Acceptance Criteria
       ↓
Jira-style Backlog
       ↓
UAT
       ↓
KPI Analysis
       ↓
Expected Business Impact

👥 Stakeholders

The key stakeholders considered in the project are:

Stakeholder	Role in the Process
Customer / End User	Raises support requests and receives resolutions
Support Agent	Reviews, investigates and resolves tickets
Support Manager	Owns support performance, SLA and escalations
Product Manager	Reviews recurring product issues and customer pain points
Engineering Team	Investigates technical issues escalated by Support
Operations / Leadership	Reviews operational performance and KPIs
🔄 As-Is Process

The current support workflow is represented as:

Customer Raises Ticket
        ↓
Support Receives Ticket
        ↓
Agent Reviews Ticket
        ↓
Manual Categorization
        ↓
Manual Assignment
        ↓
Investigation
        ↓
Escalation if Required
        ↓
Engineering Handoff
        ↓
Resolution
        ↓
Customer Notification
Key observations
Ticket categorization is manual
Ticket assignment may require manual intervention
Required investigation information may be missing
Escalation can depend on manual follow-up
Engineering handoffs may not contain consistent information
Recurring issues may be difficult to identify
🔎 Pain Points & Gap Analysis

The major gaps identified include:

Area	Current State	Desired State
Ticket Categorization	Manual	Controlled categorization
Ticket Assignment	Manual routing	Rule-based routing
Ticket Information	May be incomplete	Required information captured at intake
SLA Monitoring	Limited visibility	Clear SLA status and escalation
Engineering Handoff	Inconsistent	Standardized handoff
Recurring Issues	Limited visibility	Structured reporting
📋 Requirements

The project documents:

Business Requirements

Examples include:

Improve consistency of ticket categorization and routing
Reduce delays caused by incomplete ticket information
Improve SLA and escalation visibility
Standardize Engineering handoffs
Improve visibility into recurring customer issues
Functional Requirements

Examples include:

The system shall require customers to provide defined mandatory information before submitting a ticket.
The system shall allow agents to categorize tickets using a controlled issue taxonomy.
The system shall route tickets based on defined routing rules.
The system shall display SLA status for active tickets.
The system shall support standardized Engineering handoffs.
The system shall provide reporting fields for operational analysis.
Non-Functional Requirements

Examples include:

Usability for support agents
Role-based access
Auditability
Consistent reporting data
Ability to support expected ticket volume
📝 Requirements Traceability

Requirements are connected throughout the project:

Business Requirement
        ↓
Functional Requirement
        ↓
User Story
        ↓
Acceptance Criteria
        ↓
UAT Scenario

The Requirements Traceability Matrix is used to maintain this relationship.

🔄 To-Be Process

The proposed future-state workflow is:

Customer Raises Ticket
        ↓
Mandatory Information Validation
        ↓
Issue Categorization
        ↓
Rule-Based Routing
        ↓
SLA Monitoring
        ↓
Support Investigation
        ↓
SLA Alert / Escalation
        ↓
Standard Engineering Handoff
        ↓
Resolution
        ↓
Customer Notification
        ↓
Operational Reporting

The proposed workflow focuses on improving information completeness, routing consistency, SLA visibility and handoff quality.

👤 User Stories

Requirements are translated into Agile-style user stories.

Example:

As a support agent, I want to categorize a customer issue using a controlled issue taxonomy so that the ticket can be routed consistently.

Example acceptance criterion:

Given a new support ticket
When the agent selects an issue category
Then only valid issue categories should be available
📌 Jira-style Backlog

The project includes a Jira-style backlog containing:

User stories
Tasks
Priorities
Requirement references
Status

Example backlog items include:

Ticket Categorization
Rule-Based Routing
Mandatory Ticket Fields
SLA Visibility
SLA Escalation
Engineering Handoff
Support Reporting
🧪 UAT

User Acceptance Testing is used to validate whether the proposed workflow satisfies the defined business requirements.

Example UAT scenario:

Scenario: Ticket routing

Given: A ticket has been categorized

When: The routing rules are evaluated

Then: The ticket should be assigned to the configured support queue.

UAT scenarios cover:

Ticket categorization
Ticket routing
Mandatory information
SLA visibility
SLA escalation
Engineering handoff
Operational reporting
📊 KPI Framework

The project defines operational KPIs that can be used to measure support workflow performance.

KPI	Purpose
First Response Time	Measures time taken to provide the first meaningful response
Average Resolution Time	Measures time taken to resolve tickets
SLA Compliance	Measures tickets resolved within SLA
Escalation Rate	Measures the proportion of tickets escalated
First Contact Resolution	Measures tickets resolved without additional handoffs
Repetitive Query Rate	Helps identify recurring customer issues
Wrong Routing Rate	Measures tickets requiring reassignment

KPI targets should be established using actual baseline data in a real implementation.

🧮 SQL Analysis

SQL is included to demonstrate how support data could be analyzed.

Example analysis areas:

Ticket volume by category
SLA compliance
Average resolution time
Escalation rate
Wrong-routing rate

Example:

SELECT
    category,
    COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY category
ORDER BY ticket_count DESC;

This can help identify which issue categories generate the highest support volume.

🛠️ Tools & Skills Demonstrated
Business Analysis
Requirements Gathering
Requirements Analysis
Stakeholder Analysis
As-Is / To-Be Process Mapping
Gap Analysis
Business Requirements
Functional Requirements
Non-Functional Requirements
Business Rules
User Stories
Acceptance Criteria
UAT
Requirements Traceability
Process Improvement
Analytics
SQL
KPI Analysis
Operational Metrics
Data-driven Decision Making
Tools
Microsoft Excel
Microsoft Word
Jira-style Backlog
SQL
GitHub
📂 Project Structure
saas-customer-support-workflow-analysis/
│
├── README.md
│
├── 01_Project_Overview/
│   └── Project overview
│
├── 02_Stakeholder_Analysis/
│   ├── Stakeholder analysis
│   └── Stakeholder matrix
│
├── 03_As_Is_Process/
│   ├── As-Is process flow
│   └── Process details
│
├── 04_Pain_Point_Gap_Analysis/
│   └── Gap analysis
│
├── 05_Requirements/
│   ├── BRD
│   └── Requirements Traceability Matrix
│
├── 06_To_Be_Process/
│   ├── To-Be process flow
│   └── Process details
│
├── 07_User_Stories/
│   └── User stories and acceptance criteria
│
├── 08_Jira_Backlog/
│   └── Jira-style backlog
│
├── 09_UAT/
│   └── UAT test scenarios
│
├── 10_KPI_Analysis/
│   ├── KPI framework
│   └── SQL analysis
│
└── 11_Final_Case_Study/
    └── Final case study
📈 Expected Business Impact

The proposed workflow is intended to improve:

Ticket information completeness
Ticket routing consistency
SLA visibility
Engineering handoff quality
Support workflow visibility
Identification of recurring customer issues
Overall support process efficiency

Quantitative improvement targets should be established using actual baseline data before implementation.

⚠️ Portfolio Disclaimer

SupportFlow is a fictional product created for portfolio and learning purposes.

The business scenarios, requirements, KPI baselines and examples in this repository are illustrative and should not be interpreted as work completed for a real client or employer.
