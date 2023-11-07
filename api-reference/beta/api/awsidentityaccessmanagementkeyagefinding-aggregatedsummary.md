---
title: "awsIdentityAccessManagementKeyAgeFinding: aggregatedSummary"
description: "Get a raw count of AWS IAM Access Keys and their ages"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# awsIdentityAccessManagementKeyAgeFinding: aggregatedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a raw count of AWS IAM Access Keys and their ages in an AWS environment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAccessManagementKeyAgeFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['awsAuthSystemId'])

```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authorizationSystemIds|String collection|List the authorization system IDs.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [permissionsAnalyticsAggregatedIamKeySummary](../resources/permissionsanalyticsaggregatediamkeysummary.md) in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "awsidentityaccessmanagementkeyagefindingthis.aggregatedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAccessManagementKeyAgeFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['377596131774'])
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIamKeySummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#microsoft.graph.permissionsAnalyticsAggregatedIamKeySummary",
    "totalCount": 16,
    "findingsCountOverLimit": 15
}
```
