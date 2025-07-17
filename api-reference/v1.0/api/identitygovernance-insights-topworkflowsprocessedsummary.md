---
title: "insights: topWorkflowsProcessedSummary"
description: "Get a summary of the most processed workflows by Lifecycle Workflows in a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/28/2024
---

# insights: topWorkflowsProcessedSummary

Namespace: microsoft.graph.identityGovernance

Provide a summary of the workflows processed the most, known as top workflows, for a specified period in a tenant. Workflow basic details are given, along with run information. For information about tasks processed, see [insights: topTasksProcessedSummary](identitygovernance-insights-toptasksprocessedsummary.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-insights-topworkflowsprocessedsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-insights-topworkflowsprocessedsummary-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/insights/topWorkflowsProcessedSummary(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters

In the request URL, provide the following query parameters with values. The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date, and time, of the summary of the most workflows processed in a tenant.|
|endDateTime|DateTimeOffset|The end date, and time, of the summary of the most workflows processed in a tenant.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.identityGovernance.topWorkflowsInsightsSummary](../resources/identitygovernance-topworkflowsinsightssummary.md) collection in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "insightsthis.topworkflowsprocessedsummary"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/insights/topWorkflowsProcessedSummary(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/insightsthistopworkflowsprocessedsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/insightsthistopworkflowsprocessedsummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/insightsthistopworkflowsprocessedsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/insightsthistopworkflowsprocessedsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/insightsthistopworkflowsprocessedsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/insightsthistopworkflowsprocessedsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/insightsthistopworkflowsprocessedsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/insightsthistopworkflowsprocessedsummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.topWorkflowsInsightsSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.identityGovernance.topWorkflowsInsightsSummary)",
 "value": [
   { 
      "workflowId" : "6a98cceb-503b-709c-996c-3cg0f24481eb", 
      "workflowDisplayName" : "Pre-hire workflow", 
      "workflowCategory" : "Joiner", 
      "totalRuns" : 30 , 
      "successfulRuns" : 28 ,
      "failedRuns" : 2 , 
      "scheduledRuns" : 26, 
      "onDemandRuns" : 4, 
      "totalUsers" : 45, 
      "successfulUsers" : 38, 
      "failedUsers": 7,
      "workflowVersion" : 3 
   }, 
   { 
      "workflowId" : "8b67ddeb-603b-609c-293f-4dg0f28481ek", 
      "workflowDisplayName" : "Pre-Hire workflow", 
      "workflowCategory" : "Joiner", 
      "totalRuns" : 35 ,
      "successfulRuns" : 26 ,
      "failedUsers" : 9, 
      "scheduledRuns" : 30, 
      "onDemandRuns" : 5,  
      "totalUsers" : 56, 
      "successfulUsers" : 47 , 
      "failedUsers": 9,
      "workflowVersion" : 1  
   }, 
   { 
      "workflowId" : "1f67cceb-203b-909c-096f-6cg0f28481fg", 
      "workflowDisplayName" : "Post-Hire Workflow", 
      "workflowCategory" : "Jeaver", 
      "totalRuns" : 32  ,
      "successfulRuns" : 25 ,
      "failedRuns" : 7 , 
      "scheduldedRuns" : 15, 
      "onDemandRuns" :  17, 
      "totalUsers": 53, 
      "successfulUsers" : 45, 
      "failedUsers" : 8,
      "workflowVersion" : 2 
   }, 
   { 
      "workflowId" : "2s67ddeb-303b-709c-896f-4cg0f28481ed", 
      "workflowDisplayName" : "Pre-Hire Workflow", 
      "workflowCategory" :"Joiner" , 
      "totalRuns" : 28 ,
      "successfulRuns" : 23, 
      "failedRuns" : 5, 
      "scheduldedRuns" : 20, 
      "onDemandRuns" : 8, 
      "totalUsers" : 40, 
      "successfulUsers" : 32 , 
      "failedUsers" : 8,
      "workflowVersion" : 2  
   }, 
   { 
      "workflowId" : "7a67ddeb-503b-909d-995f-3cg0f26481eh", 
      "workflowDisplayName" : "Post-Hire Workflow", 
      "workflowCategory" : "Leaver", 
      "totalRuns" : 26 ,
      "successfulRuns" : 20 , 
      "failedRuns" : 6 , 
      "scheduldedRuns" : 12, 
      "onDemandRuns" : 14, 
      "totalUsers" : 34, 
      "successfulUsers" : 23, 
      "failedUsers" : 11,
      "workflowVersion" : 1 
   }, 
  ] 
}
```
