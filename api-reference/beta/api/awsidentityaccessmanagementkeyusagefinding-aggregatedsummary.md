---
title: "awsIdentityAccessManagementKeyUsageFinding: aggregatedSummary"
description: "Get a count of the AWS IAM Access Keys that have not been used in the last 90 days."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# awsIdentityAccessManagementKeyUsageFinding: aggregatedSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a count of the AWS IAM Access Keys that have not been used in the last 90 days.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAccessManagementKeyUsageFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['{{awsAuthSystemId}}'])
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
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "awsidentityaccessmanagementkeyusagefindingthis.aggregatedsummary"
}
-->
``` http
GET https://canary.graph.microsoft.com/testprodbetaevan_schema/identityGovernance/permissionsAnalytics/aws/findings/graph.awsIdentityAccessManagementKeyUsageFinding/microsoft.graph.aggregatedSummary(authorizationSystemIds=['377596131774','956987887735'])
```

### Response
The following is an example of the response
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
    "totalCount": 22,
    "findingsCountOverLimit": 19
}
```
