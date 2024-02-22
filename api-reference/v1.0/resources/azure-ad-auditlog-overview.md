---
title: "Activity reports API overview"
description: "Use the activity reports API in Microsoft Graph to access the reports that Microsoft Entra ID creates to help you track user activity in a tenant."
ms.localizationpriority: high
author: "egreenberg14"
ms.prod: "identity-and-access-reports"
doc_type: conceptualPageType
ms.date: 09/16/2022
---

# Activity reports API overview

Namespace: microsoft.graph

Microsoft Entra ID tracks user activity and creates reports that help you understand how your users access and use Microsoft Entra services. Use the Microsoft Graph API for Microsoft Entra ID to analyze the data in these reports and to create custom solutions tailored to your organization's specific needs.

The availability of these activity reports is governed by the Microsoft Entra data retention policies. For more information, see [data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

<a name='what-are-azure-ad-activity-logs'></a>

## What are Microsoft Entra activity logs?

Microsoft Entra ID provides the following types of activity reports:

- Directory audits
- Sign-ins

### Directory audits

The directory audit report provides you with access to the history of every task performed in your tenant. The directory audit report provides you with records of system activities for compliance. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Sign-ins

The sign-ins report helps you determine who performed the tasks reported by directory audits. The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

## What can I do with audit log APIs in Microsoft Graph?

The following are popular requests for working with audit log data:

Operation | URL
:----------|:----
GET tenant user activities | [GET https://graph.microsoft.com/v1.0/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=v1.0)
GET tenant user sign-ins | [GET https://graph.microsoft.com/v1.0/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=v1.0)

## License requirements

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports. For more information about license requirements for the different activity reports, see [Microsoft Entra audit logs: License and role requirements](/entra/identity/monitoring-health/concept-audit-logs#license-and-role-requirements).

## Related content

- Start working with the following resources representing the different activity reports:
  - [directoryAudit](directoryaudit.md) resource type.
  - [signIn](signin.md) resource type. 
  - [provisioningObjectSummary](provisioningobjectsummary.md) resource type.
<!--  - [customSecurityAttributeAudit](customsecurityattributeaudit.md) resource type. -->