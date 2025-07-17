---
title: "featureUpdateCatalogEntry resource type"
description: "Represents metadata for a Windows 10 feature update that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# featureUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a Windows 10 feature update that you can approve for deployment.

Windows 10 feature updates are released bi-annually and contain new features for Windows 10. Installing these updates increases the Windows 10 build number and typically results in a new servicing lifecycle and end of service date. We recommend organizations regularly deploy new feature updates as part of adopting Windows as a service.

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buildNumber|String|The build number of the feature update. Read-only.|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|releaseDateTime|DateTimeOffset|The release date for the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|version|String|The version of the feature update. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
  "buildNumber": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "releaseDateTime": "String (timestamp)",
  "version": "String"
}
```
