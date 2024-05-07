---
title: "insights: workflowsProcessedByCategory"
description: "The summary of workflowsProcessedByCategory for a lifecycle workflow tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# insights: workflowsProcessedByCategory

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a summary of workflows processed in a tenant by category.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-insights-workflowsprocessedbycategory-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-insights-workflowsprocessedbycategory-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/insights/workflowsProcessedByCategory
```

## Function parameters

In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date time of the workflowsProcessedByCategory insight summary.|
|endDateTime|DateTimeOffset|The end date time of the workflowsProcessedByCategory insight summary.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [workflowsInsightsByCategory](../resources/identitygovernance-workflowsinsightsbycategory.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "insightsthis.workflowsprocessedbycategory"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/insights/workflowsProcessedByCategory(startDateTime=String (timestamp),endDateTime=String (timestamp))
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowsInsightsByCategory"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   { 
    "totalJoinerRuns" : 136, 
    "successfulJoinerRuns" : 112, 
    "failedJoinerRuns" : 24,  
    "totalMoverRuns" : 97, 
    "successfulMoverRuns" : 79, 
    "failedMoverRuns" : 18, 
    "totalLeaverRuns" : 103, 
    "successfulLeaverRuns" : 96, 
    "failedLeaverRuns" : 7,       
  }
}
```
