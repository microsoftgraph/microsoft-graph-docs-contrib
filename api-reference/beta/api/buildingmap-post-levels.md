---
title: "Create levelMap"
description: "Create a new levelMap object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Create levelMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new levelMap object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "buildingmap-post-levels-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-post-levels-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /building/map/levels
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [levelMap](../resources/levelmap.md) object.

You can specify the following properties when creating a **levelMap**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|properties|String|**TODO: Add Description** Inherited from [baseMapFeature](../resources/basemapfeature.md). Optional.|
|placeId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [levelMap](../resources/levelmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_levelmap_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/building/map/levels
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.levelMap",
  "properties": "String",
  "placeId": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.levelMap"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.levelMap",
  "id": "d812dac9-fa56-20f8-a077-3a9d09f1a3cf",
  "properties": "String",
  "placeId": "String"
}
```

