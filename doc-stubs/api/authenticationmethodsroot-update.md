---
title: "Update authenticationMethodsRoot"
description: "Update the properties of an authenticationMethodsRoot object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update authenticationMethodsRoot
Namespace: microsoft.graph

Update the properties of an [authenticationMethodsRoot](../resources/authenticationmethodsroot.md) object.

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
PATCH /reports/authenticationMethods
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodsRoot](../resources/authenticationmethodsroot.md) object.

The following table shows the properties that are required when you update the [authenticationMethodsRoot](../resources/authenticationmethodsroot.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [authenticationMethodsRoot](../resources/authenticationmethodsroot.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationmethodsroot"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/reports/authenticationMethods
Content-Type: application/json
Content-length: 67

{
  "@odata.type": "#microsoft.graph.authenticationMethodsRoot"
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
  "@odata.type": "#microsoft.graph.authenticationMethodsRoot",
  "id": "4d3cc6d0-c6d0-4d3c-d0c6-3c4dd0c63c4d"
}
```

