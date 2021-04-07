---
title: "qualityUpdateCatalogEntry resource type"
description: "Metadata for a Windows 10 quality update that can be approved for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# qualityUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for a Windows 10 quality update that can be approved for deployment.


Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content was or will no longer be available to deploy using the service. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md)|
|displayName|String|The display name of the content. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md)|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md)|
|isExpeditable|Boolean|Indicates whether the content can be deployed as an expedited quality update. Read-only.|
|qualityUpdateClassification|qualityUpdateClassification|The classification on the quality update. Read-only. Possible values are: `all`, `security`, `nonSecurity`.|
|releaseDateTime|DateTimeOffset|The date on which the content was or will be released. Read-only. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md)|


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
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "deployableUntilDateTime": "String (timestamp)",
  "isExpeditable": "Boolean",
  "qualityUpdateClassification": "String"
}
```

