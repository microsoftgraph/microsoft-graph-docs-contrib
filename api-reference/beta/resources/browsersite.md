---
title: "browserSite resource type"
description: "Represents a IE mode site that resides on a site list."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# browserSite resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A `browserSite` represents a IE mode site that resides on a site list.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSites](../api/browsersitelist-list-sites.md)|[browserSite](../resources/browsersite.md) collection|Get a list of the [browserSite](../resources/browsersite.md) objects and their properties.|
|[Create browserSite](../api/browsersitelist-post-sites.md)|[browserSite](../resources/browsersite.md)|Create a new [browserSite](../resources/browsersite.md) object.|
|[Get browserSite](../api/browsersite-get.md)|[browserSite](../resources/browsersite.md)|Read the properties and relationships of a [browserSite](../resources/browsersite.md) object.|
|[Update browserSite](../api/browsersite-update.md)|None|Update the properties of a [browserSite](../resources/browsersite.md) object.|
|[Delete browserSite](../api/browsersitelist-delete-sites.md)|None|Deletes a [browserSite](../resources/browsersite.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowRedirect|Boolean|An attribute that controls the behavior of redirected sites|
|comment|String|The comment for the site|
|compatibilityMode|browserSiteCompatibilityMode|Controls what compatibility setting is used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time that the site was created|
|deletedDateTime|DateTimeOffset|The date and time that the site was deleted|
|history|[browserSiteHistory](../resources/browsersitehistory.md) collection|The history of modifications made to the site.|
|id|String|The unique identifier of the site|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site.|
|lastModifiedDateTime|DateTimeOffset|The date and time that the site was last modified.|
|mergeType|browserSiteMergeType|The merge type of the site. The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|status|browserSiteStatus|Indicates the status of the site. The possible values are: `published`, `pendingAdd`, `pendingEdit`, `pendingDelete`, `unknownFutureValue`.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.|
|webUrl|String|The URL of the site|

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
  "id": "String (identifier)",
  "allowRedirect": "Boolean",
  "createdDateTime": "String (timestamp)",
  "compatibilityMode": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.browserSiteHistory"
    }
  ],
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "mergeType": "String",
  "targetEnvironment": "String",
  "status": "String",
  "webUrl": "String",
  "comment": "String",
  "deletedDateTime": "String (timestamp)"
}
```

