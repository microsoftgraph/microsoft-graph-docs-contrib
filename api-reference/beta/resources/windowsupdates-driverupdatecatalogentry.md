---
title: "driverUpdateCatalogEntry resource type"
description: "Entity representing the Metadata for driver update content that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# driverUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity representing the Metadata for driver update content that you can approve for deployment.

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List driverUpdateCatalogEntries](../api/windowsupdates-driverupdatecatalogentry-list.md)|[microsoft.graph.windowsUpdates.driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) collection|Get a list of the [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) objects and their properties.|
|[Get driverUpdateCatalogEntry](../api/windowsupdates-driverupdatecatalogentry-get.md)|[microsoft.graph.windowsUpdates.driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md)|Read the properties and relationships of a [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) object.|
|[Update driverUpdateCatalogEntry](../api/windowsupdates-driverupdatecatalogentry-update.md)|[microsoft.graph.windowsUpdates.driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md)|Update the properties of a [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) object.|
|[Delete driverUpdateCatalogEntry](../api/windowsupdates-driverupdatecatalogentry-delete.md)|None|Delete a [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available to deploy using the service. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|description|String|The description of the content.|
|displayName|String|The display name of the content. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|driverClass|String|The classification of the driver.|
|id|String|Unique identifier. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|manufacturer|String|Manufacturer of the driver.|
|provider|String|Provider of the driver.|
|releaseDateTime|DateTimeOffset|The release date for the content. Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|setupInformationFile|String|The setup information file of the driver.|
|version|String|The unique version of the content.|
|versionDateTime|DateTimeOffset|The version date and time of the content.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
  "id": "String (identifier)",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "description": "String",
  "driverClass": "String",
  "provider": "String",
  "setupInformationFile": "String",
  "manufacturer": "String",
  "version": "String",
  "versionDateTime": "String (timestamp)"
}
```

