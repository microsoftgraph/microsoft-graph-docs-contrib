---
title: "Microsoft Entra audit logs API overview"
description: "Access audit logs using Microsoft Graph APIs to track user activity in a Microsoft Entra tenant, integrate with third-party SIEM tools, and remain compliant."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 12/30/2024
---

# Microsoft Entra audit logs API overview

Namespace: microsoft.graph

Microsoft Entra provides an audit trail of all user and app activity in your tenant to help you track all activities in your tenant and also be compliant. These logs include both app and user sign in activity, as well as changes to the directory.

The availability of these audit logs is governed by the [Microsoft Entra data retention policies](/entra/identity/monitoring-health/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Available audit logs

> [!NOTE]
> [Custom security attribute audit logs](/graph/api/resources/customsecurityattributeaudit) and [provisioning logs](/graph/api/resources/provisioningobjectsummary) are currently available only on the `beta` endpoint.

### Directory audit logs

The [directory audit logs](../resources/directoryaudit.md) provide you with access to the history of every task performed in your tenant, either by a user or a service. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Sign-ins

The [sign-in logs](../resources/signin.md) help you determine who or what performed the tasks reported by directory audit logs. The logs include interactive user sign-ins, non-interactive user sign-ins, service principal sign-ins, and managed identity sign-ins.

The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

## What can I do with activity reports in Microsoft Graph?

Here are popular requests for working with report data:

| Operation | URL |
|--|--|
| GET tenant user activities | [https://graph.microsoft.com/v1.0/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=v1.0) |
| GET custom security attribute audit logs | [https://graph.microsoft.com/v1.0/auditLogs/customSecurityAttributeAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/customSecurityAttributeAudits&version=v1.0) |
| GET tenant sign-ins | [https://graph.microsoft.com/v1.0/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=v1.0) |

## License requirements

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports. For more information about license requirements for the different activity reports, see [Microsoft Entra audit logs: License and role requirements](/entra/identity/monitoring-health/concept-audit-logs#license-and-role-requirements).

## Related content

- [Microsoft Entra audit logs](/entra/identity/monitoring-health/concept-audit-logs)