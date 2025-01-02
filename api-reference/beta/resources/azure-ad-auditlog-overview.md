---
title: "Audit logs API overview"
description: "Access audit logs using Microsoft Graph APIs to track user activity in a tenant, integrate with third-party SIEM tools, and remain compliant."
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 12/30/2024
---

# Audit logs API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra provides an audit trail of all user and app activity in your tenant to help you track all activities in your tenant and also be compliant. These logs include both app and user sign in activity, as well as changes to the directory.

The availability of these activity reports is governed by the [Microsoft Entra data retention policies](/entra/identity/monitoring-health/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## What are activity reports?

Microsoft Entra provides four types of activity reports:

- Directory audit logs
- Custom security attribute audit logs
- Sign-ins
- Provisioning
- Self-Service Sign-ups (Entra External ID)

## Available audit logs

### Directory audit logs

The [directory audit logs](../resources/directoryaudit.md) provide you with access to the history of every task performed in your tenant, either by a user or a service. Amongst others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Custom security attribute audit logs

[Custom security attribute audit logs](../resources/customsecurityattributeaudit.md) provide you with the history of activities related to [custom security attributes](../resources/custom-security-attributes-overview.md), such as adding a new definition or assigning an attribute value to a user. Custom security attribute audit logs are separate from directory audit logs and have a different endpoint. To view custom security attribute audit logs, you must be assigned the Attribute Log Reader or Attribute Log Administrator role. By default, a Global Administrator doesn't have access to these audit logs.

### Sign-ins

The [sign-in logs](../resources/signin.md) help you determine who or what performed the tasks reported by directory audit logs. The logs include interactive user sign-ins, non-interactive user sign-ins, service principal sign-ins, and managed identity sign-ins.

The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users have signed in during the last week?
- What's the status of these sign-ins?

### Provisioning

The [provisioning logs](../resources/provisioningobjectsummary.md) help you see all the actions performed by the Microsoft Entra provisioning service. The provisioning report helps you answer questions like:

- What groups were successfully created in ServiceNow?
- What roles were imported from Amazon Web Services?
- What users were unsuccessfully created from Workday?

### Self-Service Sign-ups (Entra External ID)
The sign-ups report helps you see all the sign-up attempts (failed and successful) in Microsoft Entra External ID.


## What can I do with activity reports in Microsoft Graph?

Here are popular requests for working with report data:

Operation | URL
|:----------|:----|
GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
GET custom security attribute audit logs | [https://graph.microsoft.com/beta/auditLogs/customSecurityAttributeAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/customSecurityAttributeAudits&version=beta)
GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)
GET provisioning logs | [https://graph.microsoft.com/beta/auditLogs/provisioning](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/Provisioning&version=beta)
GET tenant user (self-service) sign-ups | [https://graph.microsoft.com/beta/auditLogs/signsUps](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signUps&version=beta)


## License requirements

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports. For more information about license requirements for the different activity reports, see [Microsoft Entra audit logs: License and role requirements](/entra/identity/monitoring-health/concept-audit-logs#license-and-role-requirements).

## Related content

- Start working with the following resources representing the different activity reports:
  - [directoryAudit](directoryaudit.md) resource type.
  - [signIn](signin.md) resource type. 
  - [provisioningObjectSummary](provisioningobjectsummary.md) resource type.
  - [customSecurityAttributeAudit](customsecurityattributeaudit.md) resource type.
  - [selfServiceSignUp](selfservicesignup.md) resource type.
