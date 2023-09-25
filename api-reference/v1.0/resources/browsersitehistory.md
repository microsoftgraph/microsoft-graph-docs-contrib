---
title: "browserSiteHistory resource type"
description: "Represents the history of modifications applied to a browserSite."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# browserSiteHistory resource type

Namespace: microsoft.graph

The history of modifications applied to a [browserSite](../resources/browsersite.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowRedirect|Boolean|Controls the behavior of redirected sites. If `true`, indicates that the site will open in Internet Explorer 11 or Microsoft Edge even if the site is navigated to as part of a HTTP or meta refresh redirection chain.|
|comment|String|The comment for the site.|
|compatibilityMode|browserSiteCompatibilityMode|Controls what compatibility setting is used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the site.|
|mergeType|browserSiteMergeType|The merge type of the site. The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|publishedDateTime|DateTimeOffset|The date and time when the site was last published.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.<br /><br />Prior to June 15, 2022, the `internetExplorer11` option would allow opening a site in the Internet Explorer 11 (IE11) desktop application. Following the retirement of IE11 on June 15, 2022, the `internetExplorer11` option will no longer open an IE11 window and will instead behave the same as the `internetExplorerMode` option.|

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
  "compatibilityMode": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "mergeType": "String",
  "publishedDateTime": "String (timestamp)",
  "targetEnvironment": "String"
}
```

