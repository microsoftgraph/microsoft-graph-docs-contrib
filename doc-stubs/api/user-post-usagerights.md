---
title: "Create usageRight"
description: "Create a new usageRight object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create usageRight
Namespace: microsoft.graph

Create a new usageRight object.

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
POST /me/usageRights
POST /users/{usersId}/usageRights
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [usageRight](../resources/usageright.md) object.

The following table shows the properties that are required when you create the [usageRight](../resources/usageright.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|catalogId|String|**TODO: Add Description**|
|serviceIdentifier|String|**TODO: Add Description**|
|state|usageRightState|**TODO: Add Description**. Possible values are: `active`, `inactive`, `warning`, `suspended`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and an [usageRight](../resources/usageright.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_usageright_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/usageRights
Content-Type: application/json
Content-length: 134

{
  "@odata.type": "#microsoft.graph.usageRight",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.usageRight"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.usageRight",
  "id": "2b58b2e4-b2e4-2b58-e4b2-582be4b2582b",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

