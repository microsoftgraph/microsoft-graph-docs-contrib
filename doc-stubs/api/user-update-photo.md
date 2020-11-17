---
title: "Update photo"
description: "Update the properties of a photo object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update photo
Namespace: microsoft.graph

Update the properties of a photo object.

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
PATCH /me/photo
PATCH /users/{usersId}/photo
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [profilePhoto](../resources/profilephoto.md) object.

The following table shows the properties that are required when you create the [profilePhoto](../resources/profilephoto.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|height|Int32|**TODO: Add Description**|
|width|Int32|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [profilePhoto](../resources/profilephoto.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_photo"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/photo
Content-Type: application/json
Content-length: 101

{
  "@odata.type": "#microsoft.graph.profilePhoto",
  "height": "Integer",
  "width": "Integer"
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
  "@odata.type": "#microsoft.graph.profilePhoto",
  "id": "12567c88-7c88-1256-887c-5612887c5612",
  "height": "Integer",
  "width": "Integer"
}
```

