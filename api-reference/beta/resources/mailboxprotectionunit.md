---
title: "mailboxProtectionUnit resource type"
description: "Describes an exchange mailbox protection unit"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# mailboxProtectionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a protectionUnit associated with Exchange Mailbox.

Inherits from [protectionUnitBase](../resources/protectionunitbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxProtectionUnit objects](../api/exchangeprotectionpolicy-list-mailboxprotectionunits.md)|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|Get a list of the [mailboxProtectionUnit](../resources/mailboxprotectionunit.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit.  Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|directoryObjectId|String|Id of the Directory Object.|
|displayName|String|Display name of the Directory Object.|
|email|String|Email associated with the Directory Object.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the enablement/disablement of protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time of last modification of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|mailboxType|mailboxType|Identifies the type of mailbox. The possible values are: `userMailbox`, `sharedMailbox`, `unknownFutureValue`.|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|status|protectionUnitStatus|The individual enablement/disablement/removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxProtectionUnit",
  "baseType": "microsoft.backupRestore.protectionUnitBase",
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

