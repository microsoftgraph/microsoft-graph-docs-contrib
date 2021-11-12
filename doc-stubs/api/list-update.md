---
title: "Update list"
description: "Update the properties of a list object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update list
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [list](../resources/list.md) object.

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
PATCH /drive/list
PATCH /drives/{drivesId}/list
PATCH /shares/{sharesId}/list
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Required.|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Required.|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md). Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|list|[listInfo](../resources/listinfo.md)|**TODO: Add Description** Optional.|
|sharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description** Optional.|
|system|[systemFacet](../resources/systemfacet.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [list](../resources/list.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_list"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/drive/list
Content-Type: application/json
Content-length: 540

{
  "@odata.type": "#microsoft.graph.list",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "description": "String",
  "eTag": "String",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "displayName": "String",
  "list": {
    "@odata.type": "microsoft.graph.listInfo"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "system": {
    "@odata.type": "microsoft.graph.systemFacet"
  }
}
```


### Response
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
  "@odata.type": "#microsoft.graph.list",
  "id": "5f705903-5903-5f70-0359-705f0359705f",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "eTag": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "displayName": "String",
  "list": {
    "@odata.type": "microsoft.graph.listInfo"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "system": {
    "@odata.type": "microsoft.graph.systemFacet"
  }
}
```

