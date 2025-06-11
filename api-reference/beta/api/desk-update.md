---
title: "Update desk"
description: "Update the properties of a desk object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update desk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a desk object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "desk-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/desk-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /desk
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|geoCoordinates|[outlookGeoCoordinates](../resources/outlookgeocoordinates.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|phone|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|placeId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|parentId|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|resourceLinks|[resourceLink](../resources/resourcelink.md) collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|tags|String collection|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|isWheelChairAccessible|Boolean|**TODO: Add Description** Inherited from [place](../resources/place.md). Required.|
|label|String|**TODO: Add Description** Inherited from [place](../resources/place.md). Optional.|
|displayDeviceName|String|**TODO: Add Description** Optional.|
|mailboxDetails|[mailboxDetails](../resources/mailboxdetails.md)|**TODO: Add Description** Optional.|
|mode|[placeMode](../resources/placemode.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [desk](../resources/desk.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_desk"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/desk
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.desk",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.desk",
  "id": "24420c90-4ee4-0d01-ce17-d46ed4282abb",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

