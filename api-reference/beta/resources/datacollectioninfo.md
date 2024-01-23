---
title: "dataCollectionInfo resource type"
description: "Represents the details and status of the data collection process for the authorization system onboarded to Microsoft Entra Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# dataCollectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details and status of the data collection process for the authorization system onboarded to Microsoft Entra Permissions Management.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entitlements|[entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md)|Represents the details and status of data collection about permissions assigned to an identity in the authorization system. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataCollectionInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataCollectionInfo",
  "entitlements": {
    "@odata.type": "microsoft.graph.entitlementsDataCollectionInfo"
  }
}
```

