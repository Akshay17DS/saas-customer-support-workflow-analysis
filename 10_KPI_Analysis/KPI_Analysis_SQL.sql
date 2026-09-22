-- Illustrative SQL for the SupportFlow portfolio case study.
-- Table assumed: support_tickets
-- Columns: ticket_id, created_at, resolved_at, category, assigned_queue,
--          first_response_at, sla_due_at, escalated, status

-- 1. Ticket volume by category
SELECT category, COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY category
ORDER BY ticket_count DESC;

-- 2. SLA compliance
SELECT
    COUNT(*) AS resolved_tickets,
    SUM(CASE WHEN resolved_at <= sla_due_at THEN 1 ELSE 0 END) AS within_sla,
    ROUND(
        100.0 * SUM(CASE WHEN resolved_at <= sla_due_at THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS sla_compliance_pct
FROM support_tickets
WHERE status = 'Resolved';

-- 3. Wrong-routing proxy: tickets that were reassigned
-- Assumes reassignment_count is available.
SELECT
    ROUND(100.0 * SUM(CASE WHEN reassignment_count > 0 THEN 1 ELSE 0 END) / COUNT(*), 2)
        AS wrong_routing_rate_pct
FROM support_tickets;

-- 4. Average resolution time in hours
SELECT
    AVG(EXTRACT(EPOCH FROM (resolved_at - created_at)) / 3600.0)
        AS avg_resolution_hours
FROM support_tickets
WHERE resolved_at IS NOT NULL;

-- 5. Escalation rate
SELECT
    ROUND(100.0 * SUM(CASE WHEN escalated = TRUE THEN 1 ELSE 0 END) / COUNT(*), 2)
        AS escalation_rate_pct
FROM support_tickets;
