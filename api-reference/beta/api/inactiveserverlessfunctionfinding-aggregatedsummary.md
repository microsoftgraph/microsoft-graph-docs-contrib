---
title: "inactiveServerlessFunctionFinding: aggregatedSummary"
description: "A raw count of inactive serverless functions in the specified AWS, Azure, or GCP authorization systems."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# inactiveServerlessFunctionFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View the raw count of inactive serverless functions in the specified AWS, Azure, or GCP authorization systems in your multicloud environment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request
Example of an AWS request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['{{awsAuthSystemId}}'])
```

Example of an Azure request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['{{azureAuthSystemId}}'])
```

Example of a GCP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveServerlessFunctionFinding/aggregatedSummary(authorizationSystemIds=['{{gcpAuthSystemId}}'])
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|List of authorization system IDs.|


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
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "inactiveserverlessfunctionfindingthis.aggregatedsummary"
}
-->
``` http
GET https://canary.graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveServerlessFunctionFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['377596131774','956987887735'])
```


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
    "@odata.context": "https://canary.graph.microsoft.com/beta/$metadata#microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary",
    "totalCount": 25,
    "findingsCount": 21
}
```
