---
title: "Update UsageRight"
description: "Update the properties of an UsageRight object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update UsageRight
Namespace: microsoft.graph

Update the properties of an [UsageRight](../resources/usageright.md) object.

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
PATCH /usageRights/{usageRightsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [UsageRight](../resources/usageright.md) object.

The following table shows the properties that are required when you update the [UsageRight](../resources/usageright.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|catalogId|String|**TODO: Add Description**|
|serviceIdentifier|String|**TODO: Add Description**|
|state|usageRightState|**TODO: Add Description**. Possible values are: `active`, `inactive`, `warning`, `suspended`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [UsageRight](../resources/usageright.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_usageright"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/usageRights/{usageRightsId}
Content-Type: application/json
Content-length: 134

{
  "@odata.type": "#microsoft.graph.UsageRight",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.UsageRight",
  "id": "011669b0-69b0-0116-b069-1601b0691601",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

