---
title: "Create UsageRight"
description: "Create a new UsageRight object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create UsageRight
Namespace: microsoft.graph

Create a new UsageRight object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /users/{usersId}/usageRights
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [UsageRight](../resources/usageright.md) object.

The following table shows the properties that are required when you create the [UsageRight](../resources/usageright.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|catalogId|String|**TODO: Add Description**|
|serviceIdentifier|String|**TODO: Add Description**|
|state|usageRightState|**TODO: Add Description**. Possible values are: `active`, `inactive`, `warning`, `suspended`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and an [UsageRight](../resources/usageright.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_usageright_from_usagerights"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/usageRights
Content-Type: application/json
Content-length: 147

{
  "@odata.type": "#Microsoft.Commerce.Licensing.UsageRight",
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
  "@odata.type": "Microsoft.Commerce.Licensing.UsageRight"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Commerce.Licensing.UsageRight",
  "id": "011669b0-69b0-0116-b069-1601b0691601",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

