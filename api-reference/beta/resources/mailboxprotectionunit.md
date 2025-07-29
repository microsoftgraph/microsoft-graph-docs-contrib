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
|error|[publicError](../resources/publicerror.md)|Contains error details if enabling or disabling the protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time the protection unit was last modified. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|mailboxType|[mailboxType](../resources/enums.md#mailboxtype-values)|The type of mailbox which is assigned to the user with id: `directoryObjectId`.The possible values are: `unknown`, `user`, `shared`, `unknownFutureValue`.|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|protectionSources|protectionSource|Indicates the sources by which a protection unit is currently protected. A protection unit protected by multiple sources is indicated by comma-separated values. The possible values are: `none`, `manual`, `dynamicRule`, `unknownFutureValue`. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|status|[protectionUnitStatus](../resources/protectionunitbase.md#protectionunitstatus-values)|The individual enablement/disablement/removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `offboardRequested`, `offboarded`, `cancelOffboardRequested`, `unknownFutureValue`.
|offboardRequestedDateTime|DateTimeOffset|The time when protection unit offboard was requested. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "directoryObjectId": "String",
  "displayName": "String",
  "email": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "mailboxType": "String",
  "policyId": "String",
  "protectionSources": "String",
  "status": "String",
  "offboardRequestedDateTime": "String (timestamp)",
}
```

