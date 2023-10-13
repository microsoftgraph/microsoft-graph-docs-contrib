---
title: "superAzureServicePrincipalFinding: aggregatedSummary"
description: "**TODO: Add Description**"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# superAzureServicePrincipalFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
 
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.superAzureServicePrincipalFinding not found/aggregatedSummary
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|list authorization systems|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "superazureserviceprincipalfindingthis.aggregatedsummary"
}
-->
``` http
GET GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/azure/findings/graph.superAzureServicePrincipalFinding/aggregatedSummary(authorizationSystemIds=[
  "String"
])
```


### Response
The following is an example of the response
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
  "value": {
    "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary"
  }
}
```
