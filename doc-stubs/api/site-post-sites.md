---
title: "Create site"
description: "Create a new site object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create site
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [site](../resources/site.md) object.

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
POST /sites
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [site](../resources/site.md) object.

You can specify the following properties when creating a **site**.

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
|deleted|[deleted](../resources/deleted.md)|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|root|[root](../resources/root.md)|**TODO: Add Description** Optional.|
|sharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description** Optional.|
|siteCollection|[siteCollection](../resources/sitecollection.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [site](../resources/site.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_site_from_sites"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites
Content-Type: application/json
Content-length: 615

{
  "@odata.type": "#microsoft.graph.site",
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
  "deleted": {
    "@odata.type": "microsoft.graph.deleted"
  },
  "displayName": "String",
  "root": {
    "@odata.type": "microsoft.graph.root"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "siteCollection": {
    "@odata.type": "microsoft.graph.siteCollection"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.site"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.site",
  "id": "7ef2a104-a104-7ef2-04a1-f27e04a1f27e",
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
  "deleted": {
    "@odata.type": "microsoft.graph.deleted"
  },
  "displayName": "String",
  "root": {
    "@odata.type": "microsoft.graph.root"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "siteCollection": {
    "@odata.type": "microsoft.graph.siteCollection"
  }
}
```

