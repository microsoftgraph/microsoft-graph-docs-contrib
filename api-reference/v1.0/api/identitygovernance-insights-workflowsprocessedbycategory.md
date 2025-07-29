---
title: "insights: workflowsProcessedByCategory"
description: "Provide a summary of workflows processed in a tenant by the workflow category."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/28/2024
---

# insights: workflowsProcessedByCategory

Namespace: microsoft.graph.identityGovernance

Provide a summary of workflows processed, by category, in a tenant. This allows you to quickly get category information, by numerical value, bypassing other information found in the [WorkflowsProcessedSummary](identitygovernance-insights-workflowsprocessedsummary.md) call.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-insights-workflowsprocessedbycategory-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-insights-workflowsprocessedbycategory-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/insights/workflowsProcessedByCategory(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters

In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date, and time, of the insight summary for workflows processed by category in a tenant.|
|endDateTime|DateTimeOffset|The end date, and time, of the insight summary for workflows processed by category in a tenant.|

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "insightsthis.workflowsprocessedbycategory"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/insights/workflowsProcessedByCategory(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/insightsthisworkflowsprocessedbycategory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/insightsthisworkflowsprocessedbycategory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/insightsthisworkflowsprocessedbycategory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/insightsthisworkflowsprocessedbycategory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/insightsthisworkflowsprocessedbycategory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/insightsthisworkflowsprocessedbycategory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/insightsthisworkflowsprocessedbycategory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
```
