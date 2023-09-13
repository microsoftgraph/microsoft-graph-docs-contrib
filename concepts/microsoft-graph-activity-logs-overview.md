---
title: "Access Microsoft Graph activity logs (preview)"
description: "Microsoft Graph activity logs are an audit trail of all HTTP requests that the Microsoft Graph service received and processed for a tenant."
author: "FaithOmbongi"
ms.reviewer: yiheguo
ms.localizationpriority: high
ms.prod: "applications"
doc_type: conceptualPageType
ms.date: 09/12/2023
---

# Access Microsoft Graph activity logs (preview)

**Microsoft Graph activity logs** are an audit trail of all HTTP requests that the Microsoft Graph service received and processed for a tenant. Tenant administrators can enable the collection and configure downstream destinations for these logs using diagnostic settings in Azure Monitor. This allows the logs to be stored in Log Analytics for analysis, exported to Azure Storage for long-term storage, or streamed with Azure Event Hubs to external SIEM tools for alerting, analysis, or archival.

All logs for API requests made from line of business applications, API clients, SDKs, and Microsoft applications like Outlook, Teams, or the Entra portal are available.

## Prerequisites

To access the Microsoft Graph activity logs, you need the appropriate privileges.

- An Azure AD Premium P1 or P2 tenant license in your tenant.
- An administrator with one of the following Azure AD administrator roles listed in the order of least to most privileged role.
  - Security Administrator – To configure diagnostic settings and read the logs
  - Global Administrator – To configure diagnostic settings and read the logs
- An Azure subscription with one of the following log destinations are configured:
  - An Azure Log Analytics workspace to send logs to Azure Monitor
  - An Azure Storage Account that you have ListKeys permissions for
  - An Azure Event Hubs namespace to integrate with third-party solutions

## What data is available in the Microsoft Graph activity logs?

The following data relating to API requests is available for Microsoft Graph activity logs on the Logs Analytics interface.

[!INCLUDE [microsoftgraphactivitylogs-include](~/../azure-reference-other/azure-monitor-ref/includes/microsoftgraphactivitylogs-include.md)]

## Common use cases for Microsoft Graph activity logs

- Get full visibility into the transactions made by applications and other API clients that you have consented to in the tenant
- Identify the activities that a compromised user account conducted in your tenant
- Build detections and behavioral analysis to identify suspicious or anomalous use of Microsoft Graph APIs
- Investigate unexpected or unnecessarily privileged assignment of application permissions 
- Identify problematic or unexpected behaviors for client applications such as extreme call volumes
- Correlate Graph requests made by a user or app with sign in information

## Configure to receive the Microsoft Graph activity logs

You can configure to stream the logs through either the Diagnostic Setting in Entra portal or the Azure Resource Manager APIs. For more information, see the guidance in the following articles.

- [Integrate activity logs with Azure Monitor logs](/azure/active-directory/reports-monitoring/howto-integrate-activity-logs-with-log-analytics)
- [Configure diagnosticSettings through the Azure Resource Manager API](/azure/templates/microsoft.insights/diagnosticsettings?pivots=deployment-language-arm-template)

See the following aricles for guidance on configuring the storage destionantions: 

- [Azure Log Analytics Workspace](/azure/active-directory/reports-monitoring/tutorial-configure-log-analytics-workspace)
- [Azure Stroage](https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?tabs=azure-portal)
- [Azure Event Hub](https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-create)

## Cost planning estimates

If you already have an Azure AD P1 license, you need an Azure subscription to set up the Log Analytics workspace, Storage account, or Event Hubs. The Azure subscription comes at no cost, but you have to pay to utilize Azure resources.

The amount of data logged and, thus, the cost incurred, can vary significantly depending on the tenant size and the applications your organization is using that interact with Microsoft Graph APIs. Here are some estimations for log data size to aid the price calculation, note that these estimations should be used for general consideration only.

| Users in tenant | Storage GiB/month | EventHubs Messages/month | Azure Monitor Logs GiB/month | 
|-----------------|----------------|--------------------------|----------------|
| 1000    | 14                     | 62K         | 15         |
| 100000 | 1000                     | 4.8M       | 1200      |

See pricing calculations for respective services:

- [Log Analytics pricing details](/azure/azure-monitor/logs/cost-logs#pricing-model).
- [Azure Storage pricing](https://azure.microsoft.com/pricing/details/storage/blobs).
- [Event Hubs pricing](https://azure.microsoft.com/pricing/details/event-hubs/)

## Latency expectations

The latency is measured from the time the Microsoft Graph request is made to the time it's available in the Azure Monitor logs. 95th percentile latency for Microsoft Graph activity logs is approximately two minutes while the 99th percentile latency is approximately five minutes.

## Azure Monitor Logs query examples

If you send Microsoft Graph Activity Logs to a Log Analytics workspace, you can build queries for the logs in Kusto Query Language (KQL). For more information about queries in Log Analytics Workspace, see [Analyze Azure AD activity logs with Log Analytics](azure/active-directory/reports-monitoring/howto-analyze-activity-logs-log-analytics). You can use these queries for data exploration, to build alert rules, build Azure dashboards, or integrate into your custom applications using the Azure Monitor Logs API or Query SDK.

The following Kusto query identifies the top 20 entities making failing with requests to groups resources:
```
MicrosoftGraphActivityLogs
| where TimeGenerated >= ago(3d)
| where ResponseStatusCode==403
| where RequestUri contains "/groups"
| summarize UniqueRequests=count_distinct(RequestId) by AppId, ServicePrincipalId, UserId
| sort by UniqueRequests desc
| limit 20
```

The following Kusto query identifies resources queried or modified by potentially risky users:
```
MicrosoftGraphActivityLogs
| where TimeGenerated > ago(30d)
| join AADRiskyUsers on $left.UserId == $right.Id
| extend resourcePath = replace_string(replace_string(replace_regex(tostring(parse_url(RequestUri).Path), @'(\/)+','/'),'v1.0/',''),'beta/','')
| summarize RequestCount=dcount(RequestId) by UserId, RiskState, resourcePath, RequestMethod, ResponseStatusCod
```

The following Kusto query allows you to correlate the Microsoft Graph activity logs and sign-in logs:
```
MicrosoftGraphActivityLogs
| where TimeGenerated > ago(7d)
| join kind=leftouter (union SigninLogs, AADNonInteractiveUserSignInLogs, AADServicePrincipalSignInLogs, AADManagedIdentitySignInLogs, ADFSSignInLogs
    | where TimeGenerated > ago(7d)
    )
    on $left.SignInActivityId == $right.UniqueTokenIdentifier
```

## Limitations
<!--
- Some Microsoft Graph services communicate with other Microsoft services through Microsoft Graph APIs for background data reads or writes. Currently, the Microsoft Graph activity logs include logs for all requests to Microsoft Graph APIs for resources in your tenant. While the Microsoft Graph activity logs give you insights into the use of Microsoft Graph APIs in your tenant, we recommend using Azure AD and Microsoft 365 audit logs to analyze changes to tracked resources in your tenant, regardless of the source of the request. 
-->
- The Microsoft Graph Activity Log feature allows the tenant administrators to collect logs for the resource tenant. Meaning that if you have a multi-tenant application, this feature would not allow you to see the activities your application is performing in another tenant
- The Microsoft Graph Activity Log feature exposed through Diagnostic Setting does not include a filtering capability. However, options are available to reduce costs in Azure Log Analytics Workspace, see: [Workspact transformation] (/azure/azure-monitor/logs/tutorial-workspace-transformations-portal)

## See also

- [Azure Monitor Reference: MicrosoftGraphActivityLogs](/azure/azure-monitor/reference/tables/microsoftgraphactivitylogs)
- [Stream data from Azure Monitor to an event hub or external partner](/azure/azure-monitor/essentials/stream-monitoring-data-event-hubs)
