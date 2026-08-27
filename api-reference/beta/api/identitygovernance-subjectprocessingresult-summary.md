---
title: "subjectProcessingResult: summary"
description: "Provide a summary of a subjectProcessingResult for a lifecycle workflow."
author: "masonwolff"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/22/2026
---

# subjectProcessingResult: summary

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a [subjectSummary](../resources/identitygovernance-subjectsummary.md) for [subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) objects over a specified time period. Because the number of subject processing results returned by the list API can be overwhelming, this summary allows administrators to get a quick overview based on counts.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_subjectprocessingresult_summary" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-subjectprocessingresult-summary-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/{runId}/subjectProcessingResults/summary(startDateTime={TimeStamp},endDateTime={TimeStamp})
```

## Function parameters

In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The start date and time of the subject processing result summary. Required.|
|endDateTime|DateTimeOffset|The end date and time of the subject processing result summary. Required.|

## Optional query parameters

This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|****** Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.identityGovernance.subjectSummary](../resources/identitygovernance-subjectsummary.md) in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_subjectprocessingresultthis.summary"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/40efc576-8100-46eb-92c1-73eb43bb09a4/subjectProcessingResults/summary(startDateTime=2026-05-06T00:00:00Z,endDateTime=2026-05-13T00:00:00Z)
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.subjectSummary"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.subjectSummary",
    "failedTasks": 3,
    "failedSubjects": 2,
    "successfulSubjects": 48,
    "totalTasks": 150,
    "totalSubjects": 50
}
```
