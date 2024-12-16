---
title: "driveProtectionUnit resource type"
description: "Represents a protection unit associated with a OneDrive for Business protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# driveProtectionUnit resource type

Namespace: microsoft.graph

Represents a protection unit associated with a [OneDrive for Business protection policy](onedriveforbusinessprotectionpolicy.md).

Inherits from [protectionUnitBase](../resources/protectionunitbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-driveprotectionunits.md)|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|Get a list of the [driveProtectionUnit](../resources/driveprotectionunit.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|directoryObjectId|String|ID of the directory object.|
|displayName|String|Display name of the directory object.|
|email|String|Email associated with the directory object.|
|error|[publicError](../resources/publicerror.md)|Details of the error if the enablement/disablement of the protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time of last modification of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|status|[protectionUnitStatus](../resources/driveprotectionunit.md#protectionunitstatus-values)|The individual enablement/disablement/removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

### protectionUnitStatus values
|Member | Description |
|:------|:------------|
|protectRequested | Protection of the unit was requested. Applies when a policy is activated or new units are added to an active policy.|
|protected | Protection was successfully enabled for the unit.|
|unprotectRequested |A request was made to deactivate protection for the unit.|
|unprotected | Protection was successfully disabled for the unit.|
|removeRequested |A user requested removal of the protected unit from the policy. |
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveProtectionUnit",
  "baseType": "microsoft.graph.protectionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveProtectionUnit",
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
  },
  "directoryObjectId": "String",
  "displayName": "String",
  "email": "String"
}
```

