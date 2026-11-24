---
author: "dkershaw10"
ms.localizationpriority: high
ms.subservice: entra-tenant-governance
ms.topic: include
ai-usage: ai-assisted
---
<!-- markdownlint-disable MD041 -->

The following limits apply to Microsoft Entra resource policy management and explicit evaluation requests under `/admin/resourcePolicy`. Each limit is tracked separately for each app and tenant combination. Each request counts once toward the corresponding limit.

| Request type | Limit per app per tenant | Equivalent sustained request rate |
| --- | --- | --- |
| Write policy definitions and assignments, or update configuration | 40 requests per 20 seconds | 2 requests per second |
| Read policy definitions, assignments, and configuration | 60 requests per 20 seconds | 3 requests per second |
| [evaluatePolicy](/graph/api/resourcepolicyroot-evaluatepolicy) | 100 requests per 20 seconds | 5 requests per second |
| [evaluateAssignedPolicies](/graph/api/resourcepolicyroot-evaluateassignedpolicies) | 60 requests per 20 seconds | 3 requests per second |

Automatic policy evaluation on ordinary Microsoft Graph write requests doesn't count toward these limits.
