---
title: "Create photo"
description: "Create a new profilePhoto object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create photo
Namespace: microsoft.graph

Create a new profilePhoto object.

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
POST /me/photos
POST /users/{usersId}/photos
POST /groups/{groupsId}/photos
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

If successful, this method returns a `201 Created` response code and a [profilePhoto](../resources/profilephoto.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_profilephoto_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/photos
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
  "truncated": true,
  "@odata.type": "microsoft.graph.profilePhoto"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.profilePhoto",
  "id": "12567c88-7c88-1256-887c-5612887c5612",
  "height": "Integer",
  "width": "Integer"
}
```

