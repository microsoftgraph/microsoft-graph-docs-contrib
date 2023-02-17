---
title: "dataSourceContainer resource type"
description: "Base class for custodians and non-custodial data sources."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# dataSourceContainer resource type

Namespace: microsoft.graph.security



Base class for the [eDiscoveryCustodian](../resources/security-ediscoverycustodian.md) and [eDiscoveryNonCutodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) resources.

This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Created date and time of the dataSourceContainer entity.|
|displayName|String|Display name of the dataSourceContainer entity.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the dataSourceContainer. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|id|String|Unique identifier of the dataSourceContainer. Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the dataSourceContainer.|
|releasedDateTime|DateTimeOffset|Date and time that the dataSourceContainer was released from the case.|
|status|microsoft.graph.security.dataSourceContainerStatus|Latest status of the dataSourceContainer. Possible values are: `Active`, `Released`.|

### dataSourceContainerStatus values

|Member|Description|
|:----|-----------|
| active| Data source container is active.|
| release | Data source container has been released.|

### dataSourceHoldStatus values

|Member|Description|
|:----|-----------|
| notApplied | Data source container is not on hold.|
| applied | Data source container is on hold.|
| applying | Data source container is in applying hold state (applyHold operation triggered).|
| removing | Data source container is in removing the hold state (removeHold operation triggered).|
| partial | Data source container is in mixed state where some sources are on hold and some not on hold or error state.|
## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSourceContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSourceContainer",
  "id": "String (identifier)",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

