---
title: "dataCollectionInfo resource type"
description: "Represents the different statuses of an authorizationSystem related to Microsoft Entra Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# dataCollectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details and status of the data collection process for the authorizationSystem that you've onboarded to Microsoft Entra Permissions Management.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entitlements|[entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md)|Represents the combination of an assigned permission that grants an identity access to an authorized system resource, the associated identity, and an optional source identity where the assigned permission was inherited. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

