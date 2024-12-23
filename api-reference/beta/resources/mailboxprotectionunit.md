---
title: "mailboxProtectionUnit resource type"
description: "Represents an Exchange mailbox that has an Exchange protection policy applied."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/30/2024
---

# mailboxProtectionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Exchange mailbox that has an [Exchange protection policy](exchangeprotectionpolicy.md) applied.

Inherits from [protectionUnitBase](../resources/protectionunitbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-mailboxprotectionunits.md)|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|Get a list of the [mailboxProtectionUnit](../resources/mailboxprotectionunit.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|directoryObjectId|String|The ID of the directory object.|
|displayName|String|Display name of the directory object.|
|email|String|Email address associated with the directory object.|
|mailboxType|[mailboxType](../resources/mailboxprotectionunit.md#mailboxtype-values)|The type of mailbox which is assigned to the user with id: `directoryObjectId`.The possible values are: `unknown`, `user`, `shared`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if enabling or disabling the protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time the protection unit was last modified. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|status|[protectionUnitStatus](../resources/mailboxprotectionunit.md#protectionunitstatus-values)|The individual enable, disable, or removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

### protectionUnitStatus values
|Member | Description |
|:------|:------------|
|protectRequested | Protection of the unit was requested. Applies when a policy is activated or new units are added to an active policy.|
|protected | Protection was successfully enabled for the unit.|
|unprotectRequested |A request was made to deactivate protection for the unit.|
|unprotected | Protection was successfully disabled for the unit.|
|removeRequested |A user requested removal of the protected unit from the policy. |
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

### mailboxType values
|Member | Description |
|:------|:------------|
|unknown | Represents the mailboxes which are not valid. |
|user | The type of mailbox which is assigned to a particular user. |
|shared | The type of mailbox which is accessed by multiple users at the same time. |
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxProtectionUnit",
  "baseType": "microsoft.graph.protectionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxProtectionUnit",
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
  "email": "String",
  "mailboxType": "String"
}
```

