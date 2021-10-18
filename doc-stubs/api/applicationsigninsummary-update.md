---
title: "Update applicationSignInSummary"
description: "Update the properties of an applicationSignInSummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update applicationSignInSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [applicationSignInSummary](../resources/applicationsigninsummary.md) object.

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
PATCH /applicationSignInSummary
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description** Required.|
|appDisplayName|String|**TODO: Add Description** Required.|
|successfulSignInCount|Int64|**TODO: Add Description** Optional.|
|failedSignInCount|Int64|**TODO: Add Description** Optional.|
|successPercentage|Double|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [applicationSignInSummary](../resources/applicationsigninsummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_applicationsigninsummary"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applicationSignInSummary
Content-Type: application/json
Content-length: 227

{
  "@odata.type": "#microsoft.graph.applicationSignInSummary",
  "appId": "String",
  "appDisplayName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "successPercentage": "Double"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.applicationSignInSummary",
  "appId": "String",
  "appDisplayName": "String",
  "successfulSignInCount": "Integer",
  "failedSignInCount": "Integer",
  "successPercentage": "Double"
}
```

