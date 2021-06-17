---
title: "Create relyingPartyDetailedSummary"
description: "Create a new relyingPartyDetailedSummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create relyingPartyDetailedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for Microsoft.AAD.Reporting.relyingPartyDetailedSummary not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object.

The following table shows the properties that are required when you create the [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|relyingPartyId|String|**TODO: Add Description**|
|serviceId|String|**TODO: Add Description**|
|relyingPartyName|String|**TODO: Add Description**|
|successfulSignInCount|Int64|**TODO: Add Description**|
|failedSignInCount|Int64|**TODO: Add Description**|
|totalSignInCount|Int64|**TODO: Add Description**|
|signInSuccessRate|Double|**TODO: Add Description**|
|uniqueUserCount|Int64|**TODO: Add Description**|
|migrationStatus|migrationStatus|**TODO: Add Description**. Possible values are: `ready`, `needsReview`, `additionalStepsRequired`, `unknownFutureValue`.|
|migrationValidationDetails|[Microsoft.AAD.Reporting.keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description**|
|replyUrls|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_relyingpartydetailedsummary_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.AAD.Reporting.relyingPartyDetailedSummary not found
Content-Type: application/json
Content-length: 520

{
  "@odata.type": "#Microsoft.AAD.Reporting.relyingPartyDetailedSummary",
  "relyingPartyId": "String",
  "serviceId": "String",
  "relyingPartyName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "totalSignInCount": "Integer",
  "signInSuccessRate": "Double",
  "uniqueUserCount": "Integer",
  "migrationStatus": "String",
  "migrationValidationDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "replyUrls": [
    "String"
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.relyingPartyDetailedSummary"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.relyingPartyDetailedSummary",
  "id": "6de6b00e-b00e-6de6-0eb0-e66d0eb0e66d",
  "relyingPartyId": "String",
  "serviceId": "String",
  "relyingPartyName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "totalSignInCount": "Integer",
  "signInSuccessRate": "Double",
  "uniqueUserCount": "Integer",
  "migrationStatus": "String",
  "migrationValidationDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "replyUrls": [
    "String"
  ]
}
```

