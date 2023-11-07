---
title: "entitlementsDataCollection resource type"
description: "Represents data collection details for entitlements."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# entitlementsDataCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data collection details for entitlements.

Inherits from [entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastCollectionDateTime|DateTimeOffset|Date and time of the last data collection.|
|permissionsModificationCapability|permissionsModificationCapability|The possible values are: `enabled`, `notConfigured`, `noRecentDataCollected`, `unknownFutureValue`.|
|status|dataCollectionStatus|Data collection status of the entitlement.The possible values are: `online`, `offline`, `unknownFutureValue`.|

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

