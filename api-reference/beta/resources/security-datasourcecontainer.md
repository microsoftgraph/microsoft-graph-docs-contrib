---
title: "dataSourceContainer resource type"
description: "Base class for Custodians and Non-Custodial data sources."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# dataSourceContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base class for [eDiscoveryCustodian](../resources/security-ediscoverycustodian.md) and [eDiscoveryNonCutodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)
This is an abstract type.
Inherits from [entity](../resources/entity.md).

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|holdStatus|String|The hold status of the dataSourceContainer.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|createdDateTime|DateTimeOffset|Created date and time of the dataSourceContainer entity.|
|displayName|String|Display name of the dataSourceContainer entity.|
|id|String|Unique identifier of the dataSourceContainer. Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the dataSourceContainer.|
|releasedDateTime|DateTimeOffset|Date and time that the dataSourceContainer was released from the case.|
|status|String|Latest status of the dataSourceContainer. Possible values are: `Active`, `Released`.|

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

