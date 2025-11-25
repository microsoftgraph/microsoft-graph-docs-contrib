---
title: "Access Microsoft Graph activity logs for tenant monitoring"
description: "Microsoft Graph activity logs provide a detailed audit trail of all API requests in your tenant, helping you monitor and investigate activities. Learn how to access and use these logs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: krbash
ms.topic: concept-article
ms.localizationpriority: high
ms.subservice: non-product-specific
ms.date: 11/25/2025

#customer intent: As an administrator, I want to learn how to track all API activities in my tenant so that I can have full visibility into tenant activities and monitor and investigate suspicious activities.
---

# Access Microsoft Graph activity logs

**Microsoft Graph activity logs** provide an audit trail of all HTTP requests that the Microsoft Graph service receives and processes for a tenant. Tenant admins can turn on log collection and set up downstream destinations by using diagnostic settings in Azure Monitor. The logs go to Log Analytics for analysis. You can export them to Azure Storage for long-term storage, or stream them with Azure Event Hubs to external SIEM tools for alerting, analysis, or archiving.

You get logs for API requests from line-of-business apps, API clients, SDKs, AI Clients querying the [Microsoft MCP Server for Enterprise](./mcp-server/overview.md), and Microsoft apps like Outlook, Microsoft Teams, or the Microsoft admin portals.

This service is available in these [national cloud deployments](/graph/deployments).

| Global service     | US Government L4   | US Government L5 (DOD) | China operated by 21Vianet |
|--------------------|--------------------|------------------------|----------------------------|
| :white_check_mark: | :white_check_mark: | :white_check_mark:     | :white_check_mark:         |

## Prerequisites

To use Microsoft Graph activity logs, you need the following privileges.

- A Microsoft Entra ID P1 or P2 tenant license.
- An admin with a supported [Microsoft Entra administrator role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). *Security Administrator* is the only least privileged admin role supported for setting up diagnostic settings.
- An Azure subscription with one of the following log destinations set up, and permissions to use data in the corresponding log destinations.
    - An Azure Log Analytics workspace to send logs to Azure Monitor
  - An Azure Storage account where you have List Keys permissions
  - An Azure Event Hubs namespace to connect with third-party solutions

## What data is available in the Microsoft Graph activity logs

This article shows the data about API requests that's available for Microsoft Graph activity logs in the Logs Analytics interface.

> [!TIP]
> Requests to the [Microsoft MCP Server for Enterprise](./mcp-server/overview.md) have a **RequestUri** that includes `/enterprise`.

[!INCLUDE [microsoftgraphactivitylogs](~/../reusable-content/ce-skilling/azure/includes/azure-monitor/reference/tables/microsoftgraphactivitylogs-include.md)]

## Common use cases for Microsoft Graph activity logs

- See all transactions made by applications and other API clients you've consented to in the tenant.
- Find activities that a compromised user account conducts in your tenant.
- Build detections and behavioral analysis to spot suspicious or unusual use of Microsoft Graph APIs.
- Investigate unexpected or suspicious privileged assignment of application permissions.
- Spot problematic or unexpected behaviors for client applications, like extreme call volumes.
- Correlate Microsoft Graph requests made by a user or app with sign-in information.

## Set up Microsoft Graph activity logs

Stream logs through Diagnostic Setting in the Azure portal or by using Azure Resource Manager APIs. For more information, see the following articles:

- [Integrate activity logs with Azure Monitor logs](/azure/active-directory/reports-monitoring/howto-integrate-activity-logs-with-log-analytics)
- [Configure diagnosticSettings through the Azure Resource Manager API](/azure/templates/microsoft.insights/diagnosticsettings?pivots=deployment-language-arm-template)

Use the following articles to set up storage destinations:

- [Azure Log Analytics Workspace](/azure/active-directory/reports-monitoring/tutorial-configure-log-analytics-workspace)
- [Azure Storage](/azure/storage/common/storage-account-create?tabs=azure-portal)
- [Azure Event Hubs](/azure/event-hubs/event-hubs-create)

## Cost planning estimates

If you already have a Microsoft Entra ID P1 license, you need an Azure subscription to set up the Log Analytics workspace, storage account, or Event Hubs. You get the Azure subscription at no cost, but you pay to use Azure resources.

The amount of data logged, and the cost incurred, can vary significantly depending on the tenant size and the applications in your tenant that interact with Microsoft Graph APIs. The following table gives estimates for log data size to help you calculate pricing. Use these estimates for general consideration only.

| Users in tenant | Storage (GiB per month) | Event Hubs messages (per month) | Azure Monitor Logs (GiB per month) |
|-----------------|------------------------|-------------------------------|-------------------------------|
| 1,000           | 14                     | 62,000                        | 15                            |
| 100,000         | 1,000                  | 4,800,000                     | 1,200                         |

See the following pricing details for each service:

- [Log Analytics pricing details](/azure/azure-monitor/logs/cost-logs#pricing-model)
- [Azure Storage pricing](https://azure.microsoft.com/pricing/details/storage/blobs)
- [Event Hubs pricing](https://azure.microsoft.com/pricing/details/event-hubs/)

## Cost reduction for Log Analytics

If you ingest the logs to a Log Analytics Workspace but are only interested in logs filtered by a criteria, such as omitting certain columns or rows, you can partially reduce costs by applying a workspace transformation on the Microsoft Graph Activity Logs table. To find out more about workspace transformations, how it affects ingestion costs, and how to apply a transformation to your Microsoft Graph Activity Logs, see [Data collection transformations in Azure Monitor](/azure/azure-monitor/essentials/data-collection-transformations).

An alternative approach to reduce Log Analytics cost is to switch to the Basic log data plan which lowers the bills by providing reduced capabilities. For more information, see [Set a table's log data plan to Basic or Analytics](/azure/azure-monitor/logs/basic-logs-configure).


## Azure Monitor Logs query examples

If you send Microsoft Graph activity logs to a Log Analytics workspace, you can query the logs using Kusto Query Language (KQL). For more information about queries in Log Analytics Workspace, see [Analyze Microsoft Entra activity logs with Log Analytics](/azure/active-directory/reports-monitoring/howto-analyze-activity-logs-log-analytics). You can use these queries for data exploration, to build alert rules, build Azure dashboards, or integrate into your custom applications using the Azure Monitor Logs API or Query SDK.

The following Kusto query identifies the top 20 entities making requests to groups resources that are failing due to authorization:

```kusto
MicrosoftGraphActivityLogs
| where TimeGenerated >= ago(3d)
| where ResponseStatusCode == 401 or ResponseStatusCode == 403 
| where RequestUri contains "/groups"
| summarize UniqueRequests=count_distinct(RequestId) by AppId, ServicePrincipalId, UserId
| sort by UniqueRequests desc
| limit 20
```

The following Kusto query identifies resources queried or modified by potentially risky users:

```kusto
MicrosoftGraphActivityLogs
| where TimeGenerated > ago(30d)
| join AADRiskyUsers on $left.UserId == $right.Id
| extend resourcePath = replace_string(replace_string(replace_regex(tostring(parse_url(RequestUri).Path), @'(\/)+','/'),'v1.0/',''),'beta/','')
| summarize RequestCount=dcount(RequestId) by UserId, RiskState, resourcePath, RequestMethod, ResponseStatusCode
```

The following Kusto query allows you to correlate the Microsoft Graph activity logs and sign-in logs. Activity logs from Microsoft applications might not all have matching sign-in log entries. For more information, see [Sign-in logs known limitations](/azure/active-directory/reports-monitoring/concept-sign-ins#known-limitations).

```kusto
MicrosoftGraphActivityLogs
| where TimeGenerated > ago(7d)
| join kind=leftouter (union SigninLogs, AADNonInteractiveUserSignInLogs, AADServicePrincipalSignInLogs, AADManagedIdentitySignInLogs, ADFSSignInLogs
    | where TimeGenerated > ago(7d))
    on $left.SignInActivityId == $right.UniqueTokenIdentifier
```

The following Kusto query identifies apps that are getting throttled:

```kusto
MicrosoftGraphActivityLogs 
| where TimeGenerated > ago(3d) 
| where ResponseStatusCode == 429 
| extend path = replace_string(replace_string(replace_regex(tostring(parse_url(RequestUri).Path), @'(\/)+','//'),'v1.0/',''),'beta/','') 
| extend UriSegments =  extract_all(@'\/([A-z2]+|\$batch)($|\/|\(|\$)',dynamic([1]),tolower(path)) 
| extend OperationResource = strcat_array(UriSegments,'/')| summarize RateLimitedCount=count() by AppId, OperationResource, RequestMethod 
| sort by RateLimitedCount desc 
| limit 100 
```

The following query allows you to render a time-series chart:

```kusto
MicrosoftGraphActivityLogs 
| where TimeGenerated  between (ago(3d) .. ago(1h))  
| summarize EventCount = count() by bin(TimeGenerated, 10m) 
| render timechart 
    with ( 
    title="Recent traffic patterns", 
    xtitle="Time", 
    ytitle="Requests", 
    legend=hidden 
    )
```

## Limitations

- The Microsoft Graph activity logs feature allows the tenant administrators to collect logs for the resource tenant. This feature doesn't allow you to see the activities of a multitenant application in another tenant.
- You can't filter Microsoft Graph activity logs through diagnostic settings in Azure Monitor. However, options are available to reduce costs in Azure Log Analytics Workspace. For more information, see [Workspace transformation](/azure/azure-monitor/logs/tutorial-workspace-transformations-portal).
- In most regions, the events are available and delivered to the configuration destination within 30 minutes. In less common cases, some events might take up to 2 hours to be delivered to the destination.

## Related content

- [Azure Monitor Reference: MicrosoftGraphActivityLogs](/azure/azure-monitor/reference/tables/microsoftgraphactivitylogs)
- [Stream data from Azure Monitor to an event hub or external partner](/azure/azure-monitor/essentials/stream-monitoring-data-event-hubs)
