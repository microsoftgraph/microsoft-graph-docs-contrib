---
title: "entitlementsDataCollection resource type"
description: "Returned when there are entitlements data collected."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# entitlementsDataCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returned when there are entitlements data collected. Exposes the last time entitlements were transformed, status of the entitlements, and the status of the permissions modification capability configuration.

Inherits from [entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastCollectionDateTime|DateTimeOffset|Last transformation time of entitlements.|
|permissionsModificationCapability|permissionsModificationCapability|Properties relating to the permissionsModificationCapability configuration. The possible values are: `enabled`, `notConfigured`, `noRecentDataCollected`, `unknownFutureValue`.|
|status|dataCollectionStatus|The entitlements status. The possible values are: `online`, `offline`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

