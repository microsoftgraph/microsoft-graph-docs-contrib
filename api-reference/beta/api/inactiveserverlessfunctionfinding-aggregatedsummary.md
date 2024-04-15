---
title: "inactiveServerlessFunctionFinding: aggregatedSummary"
description: "A raw count of inactive serverless functions in the specified AWS, Azure, or GCP authorization systems."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# inactiveServerlessFunctionFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View the raw count of inactive serverless functions in the specified AWS, Azure, or GCP authorization systems.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactiveserverlessfunctionfinding_aggregatedsummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveserverlessfunctionfinding-aggregatedsummary-permissions.md)]

## HTTP request
For an AWS authorization system:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['awsAuthSystemId'])
```

For an Azure authorization system:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['azureAuthSystemId'])
```

For a GCP authorization system:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['gcpAuthSystemId'])
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|The collection of IDs for the authorization systems against which to get the summary of records.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md) in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "inactiveserverlessfunctionfindingthis.aggregatedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['377596131774'])
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/inactiveserverlessfunctionfindingthisaggregatedsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary",
    "totalCount": 25,
    "findingsCount": 21
}
```
