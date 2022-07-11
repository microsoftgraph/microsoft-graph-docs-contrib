---
title: "browserSiteHistory resource type"
description: "Represents the history of modifications made to a browserSite."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# browserSiteHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The history of modifications made to a browserSite.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowRedirect|Boolean|An attribute that controls the behavior of redirected sites|
|comment|String|The comment for the site|
|compatibilityMode|browserSiteCompatibilityMode|Controls what compatibility setting is used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site.|
|mergeType|browserSiteMergeType|The merge type of the site.The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|publishedDateTime|DateTimeOffset|The date and time the site was last published.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.browserSiteHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browserSiteHistory",
  "allowRedirect": "Boolean",
  "comment": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "compatibilityMode": "String",
  "mergeType": "String",
  "targetEnvironment": "String",
  "publishedDateTime": "String (timestamp)"
}
```

