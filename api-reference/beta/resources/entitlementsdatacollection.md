---
title: "entitlementsDataCollection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# entitlementsDataCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastCollectionDateTime|DateTimeOffset|**TODO: Add Description**|
|permissionsModificationCapability|permissionsModificationCapability|**TODO: Add Description**.The possible values are: `enabled`, `notConfigured`, `noRecentDataCollected`, `unknownFutureValue`.|
|status|dataCollectionStatus|**TODO: Add Description**.The possible values are: `online`, `offline`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.entitlementsDataCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementsDataCollection",
  "status": "String",
  "lastCollectionDateTime": "String (timestamp)",
  "permissionsModificationCapability": "String"
}
```

