---
title: "Activity reports API overview"
description: "Use the activity reports API in Microsoft Graph to access the reports that Microsoft Entra creates to help you track user activity in a tenant."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 09/16/2022
---

# Activity reports API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra ID tracks user activity and creates reports that help you understand how your users access and use Microsoft Entra services. Use the Microsoft Graph API for Microsoft Entra to analyze the data in these reports and to create custom solutions tailored to your organization's specific needs.

The availability of these activity reports is governed by the Microsoft Entra data retention policies. For more information, see [data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## What are activity reports?

Microsoft Entra provides four types of activity reports:

- Directory audit logs
- Custom security attribute audit logs
- Sign-ins
- Provisioning

### Directory audit logs

The directory audit report provides you with access to the history of every task performed in your tenant. The directory audit report provides you with records of system activities for compliance. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Custom security attribute audit logs

Custom security attribute audit logs provide you with the history of activities related to custom security attributes, such as adding a new definition or assigning an attribute value to a user. Custom security attribute audit logs are separate from directory audit logs and have a different endpoint. To view custom security attribute audit logs, you must be assigned the Attribute Log Reader or Attribute Log Administrator role. By default, a Global Administrator doesn't have access to these audit logs.

### Sign-ins

The sign-ins report helps you determine who performed the tasks reported by directory audit logs. The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

### Provisioning

The provisioning report helps you see all the actions performed by the Microsoft Entra provisioning service. The provisioning report helps you answer questions like:

- What groups were successfully created in ServiceNow?
- What roles were imported from Amazon Web Services?
- What users were unsuccessfully created from Workday?

## What can I do with activity reports in Microsoft Graph?

Here are popular requests for working with report data:

Operation | URL
:----------|:----
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET custom security attribute audit logs | [https://graph.microsoft.com/beta/auditLogs/customSecurityAttributeAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/customSecurityAttributeAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)
GET provisioning logs | [https://graph.microsoft.com/beta/auditLogs/provisioning](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/Provisioning&version=beta)

## License requirements

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports. For more information about license requirements for the different activity reports, see [Microsoft Entra audit logs: License and role requirements](/entra/identity/monitoring-health/concept-audit-logs#license-and-role-requirements).

## Related content

- Start working with the following resources representing the different activity reports:
  - [directoryAudit](directoryaudit.md) resource type.
  - [signIn](signin.md) resource type. 
  - [provisioningObjectSummary](provisioningobjectsummary.md) resource type.
  - [customSecurityAttributeAudit](customsecurityattributeaudit.md) resource type.
