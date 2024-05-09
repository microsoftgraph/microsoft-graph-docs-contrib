---
title: "insights: workflowsProcessedSummary"
description: "The summary of workflows processed Lifecycle workflows within a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# insights: workflowsProcessedSummary

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a summary of all workflows processed within a tenant for a specified period. Because the amount of results for listed workflows as returned by the [List workflows](../api/identitygovernance-lifecycleworkflowscontainer-list-workflows.md) does not tell you which workflows were processed from the list of created workflows, this summary gives you a quick overview of processed status based on counts.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-insights-workflowsprocessedsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-insights-workflowsprocessedsummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/insights/workflowsProcessedSummary
```

## Function parameters

In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date, and time, of the summary report of workflows processed in a tenant.|
|endDateTime|DateTimeOffset|The end date, time, of the summary report of workflows processed in a tenant.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [workflowsInsightsSummary](../resources/identitygovernance-workflowsinsightssummary.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "insightsthis.workflowsprocessedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/insights/workflowsProcessedSummary(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowsInsightsSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.workflowsInsightsSummary", 
   "totalRuns" : 106,
   "successfulRuns" : 71,
   "failedRuns": 35,
   "totalUsers" : 150,
   "successfulUsers" : 112,
   "failedUsers" : 38 ,
   "totalTasks" : 75,
   "successfulTasks" : 56,
   "failedTasks" :19 ,   
}
```
