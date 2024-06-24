---
title: "entitlementsDataCollection resource type"
description: "Represents the details and status of data collection about permissions assigned to an identity in the authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# entitlementsDataCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details and status of data collection about permissions assigned to an identity in the authorization system. The API returns this object when it collects data from the authorization system.

Inherits from [entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastCollectionDateTime|DateTimeOffset|Last transformation time of entitlements.|
|permissionsModificationCapability|permissionsModificationCapability|Defines whether permissions can be modified in the authorization system. The possible values are: `enabled`, `notConfigured`, `noRecentDataCollected`, `unknownFutureValue`.|
|status|dataCollectionStatus|The entitlements status. The possible values are: `online`, `offline`, `unknownFutureValue`.|

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

