---
title: "run: summary"
description: "Get a summary of runs for a specified time period."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.topic: reference
---

# run: summary

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a summary of [runs](identitygovernance-run-get.md) for a specified time period. Because the amount of runs returned by the List API call can be overwhelming, this summary allows the administrator to get a quick overview based on counts.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_run_summary" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-run-summary-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/summary(startDateTime={timestamp},endDateTime={timestamp})
```

## Function parameters

In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date and time of the workflow run|
|endDateTime|DateTimeOffset|The end date and time of the workflow run|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.identityGovernance.runSummary](../resources/identitygovernance-runsummary.md) in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_runthis.summary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/summary(startDateTime=2022-08-01T00:00:00Z,endDateTime=2022-08-31T00:00:00Z)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-runthissummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-runthissummary-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-runthissummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-runthissummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-runthissummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-runthissummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-runthissummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-runthissummary-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.runSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.runSummary",
    "failedRuns": 0,
    "failedTasks": 0,
    "successfulRuns": 1,
    "totalRuns": 2,
    "totalTasks": 4,
    "totalUsers": 2
}
```
