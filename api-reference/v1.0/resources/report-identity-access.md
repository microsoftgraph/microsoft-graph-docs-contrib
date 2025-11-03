---
title: "Identity and access reports API overview"
description: "Access identity and access reports to monitor, investigate, and troubleshoot all activities in your tenant."
ms.localizationpriority: medium
ms.subservice: entra-monitoring-health
author: faithombongi
ms.author: ombongifaith
ms.reviewer: egreenberg
doc_type: conceptualPageType
ms.date: 12/30/2024
---

# Identity and access reports API overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can programmatically access identity and access reports to monitor and troubleshoot all activities in your tenant. In addition, you can analyze these logs with Azure Monitor logs and Log Analytics, or stream to third-party SIEM tools for further investigations.

The availability of all Microsoft Entra identity and access reports is governed by the [Microsoft Entra data retention policies](/entra/identity/monitoring-health/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

For more information about identity and access reports, see [Microsoft Entra monitoring and health](/entra/identity/monitoring-health) and [Microsoft Entra monitoring and health licensing information](/entra/fundamentals/licensing#microsoft-entra-monitoring-and-health).

## Available reports

### Application activity reports

#### AD FS application activity

The AD FS application activity report provides information about how a relying party is configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Microsoft Entra ID. For more information, see the [relyingPartyDetailedSummary](/graph/api/resources/applicationsigninsummary) resource.

#### Authentication methods registration and usage activity

Authentication methods activity reports provide information on the registration and usage of [authentication methods](../resources/authenticationmethods-overview.md) in your tenant. For example, how many users are registered for an authentication method, how any are capable for MFA or SSPR, and so on. You can determine which authentication methods are more successful for your organization, what types of errors end users are running into, and what campaign you need to run to help your end users adopt the use of SSPR and MFA.

For more information, see [authentication method usage APIs](../resources/authenticationmethods-usage-insights-overview.md).

### Microsoft Entra audit logs

Audit logs are available for sign-ins, activities in the directory, and provisioning. For more information, see [Microsoft Entra audit logs](../resources/azure-ad-auditlog-overview.md).

## Reports in preview only

The following reports are available on the `beta` endpoint only:

- [Application credential sign-in activity](/graph/api/resources/appcredentialsigninactivity?view=graph-rest-beta&preserve-view=true)
- [Service principal sign-in activity](/graph/api/resources/serviceprincipalsigninactivity?view=graph-rest-beta&preserve-view=true)
- Application sign-in reports: [summarized count](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta&preserve-view=true) or [detailed report](/graph/api/resources/applicationsignindetailedsummary?view=graph-rest-beta&preserve-view=true)
- Application user activity for Microsoft Entra External ID: [daily insights](/graph/api/resources/dailyuserinsightmetricsroot?view=graph-rest-beta&preserve-view=true) and [monthly insights](/graph/api/resources/monthlyuserinsightmetricsroot?view=graph-rest-beta&preserve-view=true)
- Health reports: [SLA attainment](/graph/api/azureadauthentication-get?view=graph-rest-beta&preserve-view=true), [service activity](/graph/api/resources/serviceactivity?view=graph-rest-beta&preserve-view=true), and [health monitoring](/graph/api/resources/healthmonitoring-overview?view=graph-rest-beta&preserve-view=true)
- The following authentication methods registration and usage reports
  - [Credential usage summary](/graph/api/resources/credentialusagesummary?view=graph-rest-beta&preserve-view=true)
  - [Credential user registration count](/graph/api/resources/credentialuserregistrationcount?view=graph-rest-beta&preserve-view=true)
  - [User credential usage details](/graph/api/resources/usercredentialusagedetails?view=graph-rest-beta&preserve-view=true)
- [Microsoft Entra recommendations](/graph/api/resources/recommendations-api-overview?view=graph-rest-beta&preserve-view=true)

## Related content

- For more information about these reports, see [Microsoft Entra monitoring and health](/entra/identity/monitoring-health)
