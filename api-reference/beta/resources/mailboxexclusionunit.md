---
title: "mailboxExclusionUnit resource type"
description: "Represents an Exchange mailbox that is excluded from an Exchange protection policy configured for full workload backup."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Mailbox exclusion unit
ms.date: 03/26/2026
---

# mailboxExclusionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Exchange mailbox that is excluded from an [Exchange protection policy](../resources/exchangeprotectionpolicy.md) configured for full workload backup.

Inherits from [exclusionUnitBase](../resources/exclusionunitbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangeprotectionpolicy-list-mailboxexclusionunits.md)|[mailboxExclusionUnit](../resources/mailboxexclusionunit.md) collection|Get a list of [mailbox exclusion units](../resources/mailboxexclusionunit.md) associated with an [Exchange protection policy](../resources/exchangeprotectionpolicy.md).|
|[Get](../api/mailboxexclusionunit-get.md)|[mailboxExclusionUnit](../resources/mailboxexclusionunit.md)|Get a [mailbox exclusion unit](../resources/mailboxexclusionunit.md) associated with an [Exchange protection policy](../resources/exchangeprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|createdDateTime|DateTimeOffset|The date and time when the exclusion unit was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|directoryObjectId|String|The unique identifier of the directory object (user) associated with the mailbox.|
|displayName|String|The display name of the mailbox.|
|email|String|The email address of the mailbox.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the exclusion unit is in a failed state. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|id|String|The unique identifier of the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the exclusion unit was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|policyId|String|The unique identifier of the protection policy that contains this exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxExclusionUnit",
  "baseType": "microsoft.graph.exclusionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxExclusionUnit",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "directoryObjectId": "String",
  "displayName": "String",
  "email": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "policyId": "String"
}
```
