---
title: "Update softwareOathAuthenticationMethod"
description: "Update the properties of a softwareOathAuthenticationMethod object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update softwareOathAuthenticationMethod
Namespace: microsoft.graph

Update the properties of a [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.

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
PATCH /user/authentication/oathMethods/{softwareOathAuthenticationMethodId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.

The following table shows the properties that are required when you update the [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|secretKey|String|**TODO: Add Description**|
|timeIntervalInSeconds|Int32|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_softwareoathauthenticationmethod"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/authentication/oathMethods/{softwareOathAuthenticationMethodId}
Content-Type: application/json
Content-length: 139

{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethod",
  "secretKey": "String",
  "timeIntervalInSeconds": "Integer"
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
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethod",
  "id": "a92b7c4b-7c4b-a92b-4b7c-2ba94b7c2ba9",
  "secretKey": "String",
  "timeIntervalInSeconds": "Integer"
}
```

