---
title: "Update authorizationSystemTypeAction"
description: "Update the properties of an authorizationSystemTypeAction object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update authorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.

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
PATCH /authorizationSystemTypeService/actions/{authorizationSystemTypeActionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Required.|
|resourceTypes|String collection|**TODO: Add Description** Optional.|
|severity|authorizationSystemActionSeverity|**TODO: Add Description**. The possible values are: `normal`, `high`, `unknownFutureValue`. Required.|
|actionType|authorizationSystemActionType|**TODO: Add Description**. The possible values are: `delete`, `read`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authorizationsystemtypeaction"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authorizationSystemTypeService/actions/{authorizationSystemTypeActionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeAction",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.authorizationSystemTypeAction",
  "id": "a1af7494-6080-0eaa-e190-fdc1e2e3a9ef",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

