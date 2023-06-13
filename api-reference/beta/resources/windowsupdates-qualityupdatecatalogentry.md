---
title: "qualityUpdateCatalogEntry resource type"
description: "Represents metadata for a Windows 10 quality update that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# qualityUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a Windows 10 quality update that you can approve for deployment.

Windows 10 quality updates are released one or more times per month. These updates contain both security and quality fixes and are typically released on the second Tuesday of every month, though they might be released at any time. These updates are cumulative, so later versions always contain all previous fixes. We strongly recommend keeping devices current by installing the most recent quality updates as soon as they are available. 

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment using the service. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|isExpeditable|Boolean|Indicates whether the content can be deployed as an expedited quality update. Read-only.|
|qualityUpdateClassification|microsoft.graph.windowsUpdates.qualityUpdateClassification|The classification on the quality update. Possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`. Read-only.|
|releaseDateTime|DateTimeOffset|The release date of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "deployableUntilDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isExpeditable": "Boolean",
  "qualityUpdateClassification": "String",
  "releaseDateTime": "String (timestamp)"
}
```

