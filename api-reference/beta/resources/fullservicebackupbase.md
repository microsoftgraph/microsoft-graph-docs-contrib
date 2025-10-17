---
title: "fullServiceBackupBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# fullServiceBackupBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/fullservicebackupbase-list.md)|[fullServiceBackupBase](../resources/fullservicebackupbase.md) collection|Get a list of the fullServiceBackupBase objects and their properties.|
|[Get](../api/fullservicebackupbase-get.md)|[fullServiceBackupBase](../resources/fullservicebackupbase.md)|Read the properties and relationships of [fullServiceBackupBase](../resources/fullservicebackupbase.md) object.|
|[Update](../api/fullservicebackupbase-update.md)|[fullServiceBackupBase](../resources/fullservicebackupbase.md)|Update the properties of a fullServiceBackupBase object.|
|[Delete](../api/fullservicebackupbase-delete.md)|None|Delete a fullServiceBackupBase object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionOnExistingPolicy|fullServiceBackupDisableMode|**TODO: Add Description**. The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description**|
|policyId|String|**TODO: Add Description**|
|status|fullServiceBackupStatus|**TODO: Add Description**. The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fullServiceBackupBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fullServiceBackupBase",
  "id": "String (identifier)",
  "policyId": "String",
  "status": "String",
  "actionOnExistingPolicy": "String",
  "lastRunDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

