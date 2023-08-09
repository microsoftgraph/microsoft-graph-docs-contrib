---
title: "browserSite resource type"
description: "Represents a site to use in Internet Explorer mode that resides on a site list."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# browserSite resource type

Namespace: microsoft.graph

Represents a site to use in [Internet Explorer mode](/deployedge/edge-ie-mode) that resides on a [site list](../resources/browsersitelist.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSites](../api/browsersitelist-list-sites.md)|[browserSite](../resources/browsersite.md) collection|Get a list of the [browserSite](../resources/browsersite.md) objects and their properties.|
|[Create browserSite](../api/browsersitelist-post-sites.md)|[browserSite](../resources/browsersite.md)|Create a new [browserSite](../resources/browsersite.md) object in a [browserSiteList](../resources/browsersitelist.md).|
|[Get browserSite](../api/browsersite-get.md)|[browserSite](../resources/browsersite.md)|Get a [browserSite](../resources/browsersite.md) that resides on a [browserSiteList](../resources/browsersitelist.md).|
|[Update browserSite](../api/browsersite-update.md)|None|Update the properties of a [browserSite](../resources/browsersite.md) object.|
|[Delete browserSite](../api/browsersitelist-delete-sites.md)|None|Delete a [browserSite](../resources/browsersite.md) from a [browserSiteList](../resources/browsersitelist.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowRedirect|Boolean|Controls the behavior of redirected sites. If `true`, indicates that the site will open in Internet Explorer 11 or Microsoft Edge even if the site is navigated to as part of a HTTP or meta refresh redirection chain.|
|comment|String|The comment for the site.|
|compatibilityMode|browserSiteCompatibilityMode|Controls what compatibility setting is used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time when the site was created.|
|deletedDateTime|DateTimeOffset|The date and time when the site was deleted.|
|history|[browserSiteHistory](../resources/browsersitehistory.md) collection|The history of modifications applied to the site.|
|id|String|The unique identifier for the site.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the site was last modified.|
|mergeType|browserSiteMergeType|The merge type of the site. The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|status|browserSiteStatus|Indicates the status of the site. The possible values are: `published`, `pendingAdd`, `pendingEdit`, `pendingDelete`, `unknownFutureValue`.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.<br /><br />Prior to June 15, 2022, the `internetExplorer11` option would allow opening a site in the Internet Explorer 11 (IE11) desktop application. Following the retirement of IE11 on June 15, 2022, the `internetExplorer11` option will no longer open an IE11 window and will instead behave the same as the `internetExplorerMode` option.|
|webUrl|String|The URL of the site.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.browserSite",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browserSite",
  "allowRedirect": "Boolean",
  "comment": "String",
  "compatibilityMode": "String",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "history": [
    {
      "@odata.type": "microsoft.graph.browserSiteHistory"
    }
  ],
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "mergeType": "String",
  "status": "String",
  "targetEnvironment": "String",
  "webUrl": "String"
}
```

## See also

- [Internet Explorer mode (IE mode)](https://www.microsoft.com/edge/business/ie-mode)
- [What is Internet Explorer (IE) mode?](/deployedge/edge-ie-mode)
- [Cloud Site List Management for Internet Explorer (IE) mode](/deployedge/edge-ie-mode-cloud-site-list-mgmt)
