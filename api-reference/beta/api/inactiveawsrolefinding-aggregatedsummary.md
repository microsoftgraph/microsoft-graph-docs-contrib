---
title: "inactiveAwsRoleFinding: aggregatedSummary"
description: "Retrieve the raw count of inactive roles relative to the total roles in an AWS authorization system onboarded to Permissions Management."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# inactiveAwsRoleFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the raw count of inactive roles relative to the total roles in an AWS authorization system onboarded to Permissions Management.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveAwsRoleFinding/aggregatedSummary(authorizationSystemIds=['awsAuthSystemId'])
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
  "name": "inactiveawsrolefindingthis.aggregatedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveAwsRoleFinding/aggregatedSummary(authorizationSystemIds=['377596131774'])
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/inactiveawsrolefindingthisaggregatedsummary-javascript-snippets.md)]
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
```HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary",
    "totalCount": 364,
    "findingsCount": 295
}
```
