---
title: "Audit logs API overview"
description: "Access audit logs using Microsoft Graph APIs to track user activity in a tenant, integrate with third-party SIEM tools, and remain compliant."
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 06/11/2025
ms.custom: sfi-ga-nochange
---

# Audit logs API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra provides an audit trail of all user and app activity in your tenant to help you track all activities in your tenant and also be compliant. These logs include both app and user sign in activity, and changes to the directory.

[Microsoft Entra data retention policies](/entra/identity/monitoring-health/reference-reports-data-retention#how-long-does-azure-ad-store-the-data) governs the availability of these activity reports.

## What are activity reports?

Microsoft Entra provides the following activity reports:

- Directory audit logs
- Custom security attribute audit logs
- Self-service sign-ups (Microsoft Entra External ID)
- Sign-ins
- Provisioning
- Audit activity types
- Sign-in events summary per app
- Sign-in events count per day
- Summarized sign-ins for a category

## Available audit logs

### Directory audit logs

The [directory audit logs](../resources/directoryaudit.md) provide you with access to the history of every task performed in your tenant, either by a user or a service. Among others, the provided data enables you to address common scenarios such as:

- Who granted admin group access to a directory user?
- Which users are signing in to a recently acquired app?
- How many passwords resets were made within the directory?

### Custom security attribute audit logs

[Custom security attribute audit logs](../resources/customsecurityattributeaudit.md) provide you with the history of activities related to [custom security attributes](../resources/custom-security-attributes-overview.md), such as adding a new definition or assigning an attribute value to a user. Custom security attribute audit logs are separate from directory audit logs and have a different endpoint. To view custom security attribute audit logs, you must be assigned the Attribute Log Reader or Attribute Log Administrator role. By default, a Global Administrator doesn't have access to these audit logs.

### Self-service sign-ups (Microsoft Entra External ID)

The [sign-ups report](../resources/selfservicesignup.md) helps you see all the sign-up attempts (failed and successful) in Microsoft Entra External ID.

### Sign-ins

The [sign-in logs](../resources/signin.md) help you determine who or what performed the tasks reported by directory audit logs. The logs include interactive user sign-ins, non-interactive user sign-ins, service principal sign-ins, and managed identity sign-ins.

The sign-ins report helps you answer questions like:

- What is the sign in pattern of a user?
- How many users signed in the last week?
- What's the status of these sign-ins?

### Provisioning

The [provisioning logs](../resources/provisioningobjectsummary.md) help you see all the actions performed by the Microsoft Entra provisioning service. The provisioning report helps you answer questions like:

- What groups were successfully created in ServiceNow?
- What roles were imported from Amazon Web Services?
- What users were unsuccessfully created from Workday?

### Audit Activity Types

The [auditActivityType](../resources/auditactivitytype.md) provide you with a list of all available audit activity types and their corresponding service and category.

### Sign In Events App Summary

The [signInEventsAppActivity](../resources/signineventsappactivity.md) helps you see the total number of sign in events for a specific application in the past 30 days.

### Sign In Events Summary

The [signInEventsActivity](../resources/signineventsactivity.md) helps you see the total number of sign in events for a specific day.

### Summarized Sign In Events Summary

The [summarizedSignIn](../resources/summarizedsignin.md) helps you see the summary of sign-in event counts for specific categories grouped by user, application, IP address, and time window.

## What can I do with activity reports in Microsoft Graph?

Here are popular requests for working with report data:

Operation | URL
|:----------|:----|
|GET tenant user activities | [https://graph.microsoft.com/beta/auditLogs/directoryAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/directoryAudits&version=beta)
|GET custom security attribute audit logs | [https://graph.microsoft.com/beta/auditLogs/customSecurityAttributeAudits](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/customSecurityAttributeAudits&version=beta)
|GET tenant user sign-ins | [https://graph.microsoft.com/beta/auditLogs/signIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signIns&version=beta)
|GET provisioning logs | [https://graph.microsoft.com/beta/auditLogs/provisioning](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/Provisioning&version=beta)
|GET tenant user (self-service) sign-ups | [https://graph.microsoft.com/beta/auditLogs/signUps](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signUps&version=beta)
|GET audit activity types | [https://graph.microsoft.com/beta/auditLogs/auditActivityTypes](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/auditActivityTypes&version=beta)
|GET sign in events app summary | [https://graph.microsoft.com/beta/auditLogs/signInEventsAppSummary](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signInEventsAppSummary&version=beta)
|GET sign in events summary | [https://graph.microsoft.com/beta/auditLogs/signInEventsSummary](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/signInEventsSummary&version=beta)
|GET summarized service principal sign in events summary | [https://graph.microsoft.com/beta/auditLogs/getSummarizedServicePrincipalSignIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/getSummarizedServicePrincipalSignIns(aggregationWindow='{aggregationWindow}')&version=beta)
|GET summarized non-interactive sign in events summary | [https://graph.microsoft.com/beta/auditLogs/getSummarizedNonInteractiveSignIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/getSummarizedNonInteractiveSignIns(aggregationWindow='{aggregationWindow}')&version=beta)
|GET summarized managed service identity sign in events summary | [https://graph.microsoft.com/beta/auditLogs/getSummarizedMSISignIns](https://developer.microsoft.com/graph/graph-explorer?request=auditLogs/getSummarizedMSISignIns(aggregationWindow='{aggregationWindow}')&version=beta)

## License requirements

Activity reports are available for features that you've licensed. If you have a license for a specific feature, you also have access to the reports. For more information about license requirements for the different activity reports, see [Microsoft Entra audit logs: License and role requirements](/entra/identity/monitoring-health/concept-audit-logs#license-and-role-requirements).
