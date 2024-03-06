---
title: "driverUpdateCatalogEntry resource type"
description: "Represents the metadata for driver update content that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# driverUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the metadata for driver update content that you can approve for deployment.

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment using the service. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|description|String|The description of the content.|
|displayName|String|The display name of the content. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|driverClass|String|The classification of the driver.|
|id|String|The unique identifier for this catalog entry. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|manufacturer|String|The manufacturer of the driver.|
|provider|String|The provider of the driver.|
|releaseDateTime|DateTimeOffset|The release date for the content. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md).|
|setupInformationFile|String|The setup information file of the driver.|
|version|String|The unique version of the content.|
|versionDateTime|DateTimeOffset|The date and time when a new version of content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
  "deployableUntilDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "driverClass": "String",
  "id": "String (identifier)",
  "manufacturer": "String",
  "provider": "String",
  "releaseDateTime": "String (timestamp)",
  "setupInformationFile": "String",
  "version": "String",
  "versionDateTime": "String (timestamp)"
}
```
