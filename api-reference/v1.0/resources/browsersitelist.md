---
title: "browserSiteList resource type"
description: "Represents an enterprise site list in a compliant cloud location that specifies sites to be opened in Internet Explorer mode."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# browserSiteList resource type

Namespace: microsoft.graph

Represents an enterprise site list in a compliant cloud location that specifies sites to be opened in [Internet Explorer mode](/deployedge/edge-ie-mode). The site list contains one or more [browserSite](../resources/browsersite.md) and [browserSharedCookie](../resources/browsersharedcookie.md) resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSiteLists](../api/internetexplorermode-list-sitelists.md)|[browserSiteList](../resources/browsersitelist.md) collection|Get a list of the [browserSiteList](../resources/browsersitelist.md) objects and their properties.|
|[Create browserSiteList](../api/internetexplorermode-post-sitelists.md)|[browserSiteList](../resources/browsersitelist.md)|Create a new [browserSiteList](../resources/browsersitelist.md) object to support [Internet Explorer mode](/deployedge/edge-ie-mode).|
|[Get browserSiteList](../api/browsersitelist-get.md)|[browserSiteList](../resources/browsersitelist.md)|Get a [browserSiteList](../resources/browsersitelist.md) that contains [browserSite](../resources/browsersite.md) and [browserSharedCookie](../resources/browsersharedcookie.md) resources.|
|[Update browserSiteList](../api/browsersitelist-update.md)|None|Update the properties of a [browserSiteList](../resources/browsersitelist.md) object.|
|[Delete browserSiteList](../api/internetexplorermode-delete-sitelists.md)|None|Delete a [browserSiteList](../resources/browsersitelist.md) object.|
|[Publish a browserSiteList](../api/browsersitelist-publish.md)|[browserSiteList](../resources/browsersitelist.md)|Publish the specified [browserSiteList](../resources/browsersitelist.md) for devices to download.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the site list.|
|displayName|String|The name of the site list.|
|id|String|The unique identifier for the site list.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site list.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the site list was last modified.|
|publishedBy|[identitySet](../resources/identityset.md)|The user who published the site list.|
|publishedDateTime|DateTimeOffset|The date and time when the site list was published.|
|revision|String|The current revision of the site list.|
|status|browserSiteListStatus|The current status of the site list. The possible values are: `draft`, `published`, `pending`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sharedCookies|[browserSharedCookie](../resources/browsersharedcookie.md) collection|A collection of shared cookies defined for the site list.|
|sites|[browserSite](../resources/browsersite.md) collection|A collection of sites defined for the site list.|

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
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "publishedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "publishedDateTime": "String (timestamp)",
  "revision": "String",
  "status": "String"
}
```

## See also

- [Internet Explorer mode (IE mode)](https://www.microsoft.com/edge/business/ie-mode)
- [What is Internet Explorer (IE) mode?](/deployedge/edge-ie-mode)
- [Cloud Site List Management for Internet Explorer (IE) mode](/deployedge/edge-ie-mode-cloud-site-list-mgmt)
