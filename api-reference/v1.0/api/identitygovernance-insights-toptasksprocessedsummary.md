---
title: "insights: topTasksProcessedSummary"
description: "Get a summary of the most processed tasks by Lifecycle Workflows in a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/28/2024
---

# insights: topTasksProcessedSummary

Namespace: microsoft.graph.identityGovernance

Provide a summary of the most processed tasks, known as top tasks, for a specified time period in a tenant. The task definition is provided, along with numerical counts of total, successful, and failed runs. For information about workflows processed, see [insights: topWorkflowsProcessedSummary](identitygovernance-insights-topworkflowsprocessedsummary.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-insights-toptasksprocessedsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-insights-toptasksprocessedsummary-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/insights/topTasksProcessedSummary(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters

In the request URL, provide the following query parameters with values. The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date, and time, of the insight summary for most tasks processed in a tenant.|
|endDateTime|DateTimeOffset|The end date, and time, of the insight summary for most tasks processed in a tenant.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.identityGovernance.topTasksInsightsSummary](../resources/identitygovernance-toptasksinsightssummary.md) collection in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "insightsthis.toptasksprocessedsummary"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/insights/topTasksProcessedSummary(startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/insightsthistoptasksprocessedsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/insightsthistoptasksprocessedsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/insightsthistoptasksprocessedsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/insightsthistoptasksprocessedsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/insightsthistoptasksprocessedsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/insightsthistoptasksprocessedsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/insightsthistoptasksprocessedsummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.topTasksInsightsSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.identityGovernance.topTasksInsightsSummary)",
"value": [
     { 
       "taskDefinitionId" : "gbc28c8e-f522-43b1-9d30-ee62b4ee941c", 
       "taskDefinitionDisplayName" : "Disable User Account",  
       "totalTasks" : 32, 
       "successfulTasks" : 15, 
       "failedTasks" : 17, 
       "totalUsers" : 46 , 
       "successfulUsers" : 25 ,
       "failedUsers" : 21
     },
     { 
       "taskDefinitionId" : "afg23h8e-a522-53b1-5d30-ft62b4ee941d", 
       "taskDefinitionDisplayName" : "Add user to groups", 
       "totalProcessedTasks" : 30, 
       "successfulTasks" : 14, 
       "failedTasks" : 16, 
       "totalUsers" : 36  ,
       "successfulUsers" : 25 ,
       "failedUsers" : 11
     },   
     { 
       "taskDefinitionId" : "mcd28c8e-t523-83b1-3d70-jl62b4hh944g", 
       "taskDefinitionDisplayName" : "Send onboarding reminder email", 
       "totalProcessedTasks" : 28, 
       "successfulTasks" : 13, 
       "failedTasks" : 15, 
       "totalUsers" : 37 ,
       "successfulUsers" : 23 ,
       "failedUsers" : 14
     }, 
     { 
       "taskDefinitionId" : "beg28c8e-h23-53b1-8f60-kv62b4ee941c", 
       "taskDefinitionDisplayName" : "Generate TAP and Send Email", 
       "totalProcessedTasks" : 30, 
       "successfulTasks" : 18, 
       "failedTasks" : 12, 
       "totalUsers" : 35  ,
       "successfulUsers" : 24 ,
       "failedUsers" : 11
     }, 
     { 
       "taskDefinitionId" : "efc28c8e-j322-73b1-9e30-fh62b4ee941d", 
       "taskDefinitionDisplayName" : "Run a custom task extension", 
       "totalProcessedTasks" : 25, 
       "successfulTasks" : 15, 
       "failedTasks" : 10, 
       "totalUsers" : 26  ,
       "successfulUsers" : 17 ,
       "failedUsers" : 9
     }, 
     { 
       "taskDefinitionId" : "nmd28c8e-k822-53b1-3d30-ee62b4ee941e", 
       "taskDefinitionDisplayName" : "Request user access package assignment", 
       "totalProcessedTasks" : 26, 
       "successfulTasks" : 18, 
       "failedTasks" : 8, 
       "totalUsers" : 32,  
       "successfulUsers" : 24 ,
       "failedUsers" : 8
     }, 
     { 
       "taskDefinitionId" : "qbc28c8e-f522-43b1-9d30-ee62b4ee941c", 
       "taskDefinitionDisplayName" : "Send Welcome Email",  
       "totalProcessedTasks" : 25, 
       "successfulTasks" : 20, 
       "failedTasks" : 5, 
       "totalUsers" : 28  ,
       "successfulUsers" : 22 ,
       "failedUsers" : 6
     }, 
  ] 
}
```
