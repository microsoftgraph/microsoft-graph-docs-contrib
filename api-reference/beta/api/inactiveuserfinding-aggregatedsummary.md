---
title: "inactiveUserFinding: aggregatedSummary"
description: "View the raw count of inactive users in the specified AWS, Azure, or GCP authorization systems."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# inactiveUserFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View the raw count of inactive users in the specified AWS, Azure, or GCP authorization systems in your multicloud environment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

Example of an AWS request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding/aggregatedSummary(authorizationSystemIds=['awsAuthSystemId'])
```

Example of an Azure request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveUserFinding/aggregatedSummary(authorizationSystemIds=['azureAuthSystemId'])
```

Example of a GCP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveUserFinding/aggregatedSummary(authorizationSystemIds=['gcpAuthSystemId'])
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that are required with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|The collection of IDs for the authorization systems against which to get the summary of records.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

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
  "name": "inactiveuserfindingthis.aggregatedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding/aggregatedSummary(authorizationSystemIds=['377596131774'])
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/inactiveuserfindingthisaggregatedsummary-javascript-snippets.md)]
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
    "totalCount": 103,
    "findingsCount": 77
}
```

