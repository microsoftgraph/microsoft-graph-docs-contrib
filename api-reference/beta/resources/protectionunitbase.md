---
title: "protectionUnitBase resource type"
description: "Describes protection unit and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "backup-and-restore"
doc_type: resourcePageType
---

# protectionUnitBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Units refers to the site/drive/mailbox units that are being protected under the Protection Policy.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List protectionUnitBase objects](../api/backuprestoreroot-list-protectionunits.md)|[protectionUnitBase](../resources/protectionunitbase.md) collection|Get a list of the [protectionUnitBase](../resources/protectionunitbase.md) objects and their properties.|
|[Create protectionUnitBase](../api/backuprestoreroot-post-protectionunits.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Create a new [protectionUnitBase](../resources/protectionunitbase.md) object.|
|[Get protectionUnitBase](../api/protectionunitbase-get.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Read the properties and relationships of a [protectionUnitBase](../resources/protectionunitbase.md) object.|
|[Update protectionUnitBase](../api/protectionunitbase-update.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Update the properties of a [protectionUnitBase](../resources/protectionunitbase.md) object.|
|[Delete protectionUnitBase](../api/backuprestoreroot-delete-protectionunits.md)|None|Delete a [protectionUnitBase](../resources/protectionunitbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identitifer of the protection unit|
|policyId|String|The unique identifier of the protection policy based on which protection unit was created|
|createdBy|identitySet|The identity of person who created the protection unit|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit|
|error|publicError|Describes error occurred while creating a protection unit|
|lastModifiedBy|identitySet|The identity of person who modified|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this protection unit|
|status|[protectionUnitStatus](../resource/protectionunitbase.md#protectionunitstatus-values)|Status of the protection unit.The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

### protectionUnitStatus values
|Member | Description |
|:------|:------------|
|protectRequested | Protection of this unit has been requested to be enabled. This state arrives when policy is activated or new units are added to active policy.|
|protected | SProtection unit is successfully enabled for protection.|
|unprotectRequested |Protection of unit has been requested to be disabled. This state arrives when policy is deactivated.|
|unprotected | Protection unit is successfully disabled for protection.|
|removeRequested |Already protected unit has been requested to be removed from policy. This state arrives when the user wants to explicitly remove units from the policy. |
|unknownFutureValue | Marker value for future compatibility.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.protectionUnitBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionUnitBase",
  "id": "String (identifier)",
  "policyId": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

