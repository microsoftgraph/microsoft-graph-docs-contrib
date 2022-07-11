---
title: "browserSiteList resource type"
description: "Represents an Internet Explorer Mode site list which contains one or more browserSite or browserSharedCookie resources."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# browserSiteList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Internet Explorer Mode site list which contains one or more [browserSite](../resources/browsersite.md) or [browserSharedCookie](../resources/browsersharedcookie.md) resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSiteLists](../api/internetexplorermode-list-sitelists.md)|[browserSiteList](../resources/browsersitelist.md) collection|Get a list of the [browserSiteList](../resources/browsersitelist.md) objects and their properties.|
|[Create browserSiteList](../api/internetexplorermode-post-sitelists.md)|[browserSiteList](../resources/browsersitelist.md)|Create a new [browserSiteList](../resources/browsersitelist.md) object.|
|[Get browserSiteList](../api/browsersitelist-get.md)|[browserSiteList](../resources/browsersitelist.md)|Read the properties and relationships of a [browserSiteList](../resources/browsersitelist.md) object.|
|[Update browserSiteList](../api/browsersitelist-update.md)|None|Update the properties of a [browserSiteList](../resources/browsersitelist.md) object.|
|[Delete browserSiteList](../api/internetexplorermode-delete-sitelists.md)|None|Deletes a [browserSiteList](../resources/browsersitelist.md) object.|
|[Publish a browserSiteList](../api/browsersitelist-publish.md)|[browserSiteList](../resources/browsersitelist.md)|Publish a [browserSiteList](../resources/browsersitelist.md) for devices to download.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the site list.|
|displayName|String|The name of the site list.|
|id|String|The unique identifier for the site list.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site list.|
|lastModifiedDateTime|DateTimeOffset|The date and time that the site list was last modified.|
|publishedBy|[identitySet](../resources/identityset.md)|The user who published the site list.|
|publishedDateTime|DateTimeOffset|The date and time that the site list was published.|
|revision|String|The currrent revision of the site list.|
|status|browserSiteListStatus|The current status of the site list. The possible values are: `draft`, `published`, `pending`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sharedCookies|[browserSharedCookie](../resources/browsersharedcookie.md) collection|A colletion of shared cookies defined for the site list.|
|sites|[browserSite](../resources/browsersite.md) collection|A colletion of sites defined for the site list.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.browserSiteList",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browserSiteList",
  "id": "String (identifier)",
  "description": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "publishedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "publishedDateTime": "String (timestamp)",
  "status": "String",
  "revision": "String"
}
```

