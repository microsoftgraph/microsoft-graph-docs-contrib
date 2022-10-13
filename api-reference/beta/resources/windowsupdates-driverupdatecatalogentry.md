---
title: "driverUpdateCatalogEntry resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# driverUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|deployableUntilDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|driverClass|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|manufacturer|String|**TODO: Add Description**|
|provider|String|**TODO: Add Description**|
|releaseDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md).|
|setupInformationFile|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|
|versionDateTime|DateTimeOffset|**TODO: Add Description**|

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

