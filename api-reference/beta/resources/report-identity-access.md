---
title: "Identity and access reports API overview"
description: "Access identity and access reports to monitor, investigate, and troubleshoot all activities in your tenant."
ms.localizationpriority: medium
ms.subservice: entra-monitoring-health
author: faithombongi
ms.author: ombongifaith
ms.reviewer: egreenberg
doc_type: conceptualPageType
ms.date: 01/07/2025
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

#### Application credential sign-in activity (preview)

This report is available through the [appCredentialSignInActivity resource type](/graph/api/resources/appcredentialsigninactivity) and details the usage of an app credential (secret, certificate, or federated identity credential) in your tenant.

#### Service principal sign-in activity (preview)

This report is available through the [servicePrincipalSignInActivity resource type](/graph/api/resources/serviceprincipalsigninactivity) and details the sign-in activity for a service principal in your tenant. The sign-in activity can be delegated or application-only scenarios. For application-only scenarios, the [application credential activity](#application-credential-sign-in-activity-preview) provides additional information on the credential usage.

#### Application sign-in (preview)

Evaluate the usage of application sign-ins in your tenant using either [a summary report](../resources/applicationsigninsummary.md) or [a report that provides details of sign-ins](../resources/applicationsignindetailedsummary.md), such as the number of sign-ins and whether any errors occurred during sign-in.

#### Application user activity (preview)

In Microsoft Entra External ID for external tenants where you have registered apps that customers sign-in to, you can track sign-in and sign-up user activities. You can query and analyze data for daily active users, monthly active users, total users, new users, authentications, requests, and multifactor authentication usage. For more information, see the [dailyUserInsightMetricsRoot resource type](/graph/api/resources/dailyuserinsightmetricsroot) and [monthlyUserInsightMetricsRoot resource type](/graph/api/resources/monthlyuserinsightmetricsroot).

### Health reports (preview)

- Monitor [Microsoft Entra availability and SLA compliance](../api/azureadauthentication-get.md). This report is available on the Microsoft Entra admin center through **Monitoring and health** tab group > **Health** > **SLA attainment**
- Monitor the health of various Microsoft Entra and Microsoft 365 services through the [serviceActivity resource type](../resources/serviceactivity.md) and its associated API operations. For example:
  - Success and failure metrics for important events within your tenant such as MFA sign-in success and failure metrics, and Conditional Access sign-in metrics for managed and compliant devices. These reports are available on the Microsoft Entra admin center through **Monitoring and health** tab group > **Health** > **Scenario Monitoring**
  - Health status for Microsoft 365 services including Exchange Online, Teams, and different Microsoft 365 apps like Word, PowerPoint, Visio, and Excel
-  Retrieve signals for different alerts relating to Microsoft Entra services with [Microsoft Entra Health monitoring APIs](../resources/healthmonitoring-overview.md)

### Authentication methods registration and usage

Authentication methods activity reports provide information on the registration and usage of [authentication methods](../resources/authenticationmethods-overview.md) in your tenant. For example, how many users are registered for an authentication method, how any are capable for MFA or SSPR, and so on. You can determine which authentication methods are more successful for your organization, what types of errors end users are running into, and what campaign you need to run to help your end users adopt the use of SSPR and MFA.

For more information, see [authentication method usage APIs](../resources/authenticationmethods-usage-insights-overview.md).

### Microsoft Entra audit logs

Audit logs are available for sign-ins, activities in the directory including those relating to custom security attributes, and provisioning. For more information, see [Microsoft Entra audit logs](../resources/azure-ad-auditlog-overview.md).

### Microsoft Entra recommendations (preview)

Microsoft Entra recommendations are insights into your tenant state that fall into two categories: best practice recommendations or the Identity Secure Score. Best practice recommendations include detected usage of deprecated or retired features, MFA recommendations, and inactive guests. For more information, see [Microsoft Entra recommendations APIs](../resources/recommendations-api-overview.md)

## Related content

- For more information about these reports, see:
  - [Microsoft Entra monitoring and health](/entra/identity/monitoring-health)
  - [Microsoft 365 monitoring](/microsoft-365/enterprise/microsoft-365-monitoring)
