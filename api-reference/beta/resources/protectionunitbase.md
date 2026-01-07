---
title: "protectionUnitBase resource type"
description: "Represents a site, drive, or mailbox that's protected by a protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection unit
ms.date: 08/24/2024
---

# protectionUnitBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a site, drive, or mailbox that's protected by a [protection policy](protectionpolicybase.md). All the protection units in a protection policy have the same retention period by default.

This resource is an abstract type.

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/protectionunitbase-get.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Read the properties and relationships of a [protectionUnitBase](../resources/protectionunitbase.md) object.|
|[Offboard](../api/protectionunitbase-offboard.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Offboard a [protectionUnitBase](../resources/protectionunitbase.md).|
|[Cancel offboard](../api/protectionunitbase-canceloffboard.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Cancel the offboarding of a [protectionUnitBase](../resources/protectionunitbase.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit.|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit.|
|error|[publicError](../resources/publicerror.md)|Contains error details if an error occurred while creating a protection unit.|
|id|String|The unique identifier of the protection unit. Inherited from [entity](entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification of this protection unit.|
|policyId|String|The unique identifier of the protection policy based on which protection unit was created.|
|protectionSources|protectionSource|Indicates the sources by which a protection unit is currently protected. A protection unit protected by multiple sources is indicated by comma-separated values. The possible values are: `none`, `manual`, `dynamicRule`, `unknownFutureValue`.|
|status|[protectionUnitStatus](../resources/protectionunitbase.md#protectionunitstatus-values)|The status of the protection unit. The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|
|offboardRequestedDateTime|DateTimeOffset|The time when protection unit offboard was requested.|

### protectionUnitStatus values
|Member | Description |
|:------|:------------|
|protectRequested | Protection of the unit was requested. |
|protected | The protection unit is successfully enabled.|
|unprotectRequested | Disabling protection of the unit was requested. |
|unprotected | The protection unit is successfully disabled.|
|removeRequested |A request to remove the protected unit from the policy was made. |
|offboardRequested |A request to offboard the protection unit. |
|offboarded |The protection unit is successfully offboarded. |
|cancelOffboardRequested |A request to cancel protection unit offboarding. |
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "policyId": "String",
  "protectionSources": "String",
  "status": "String",
  "offboardRequestedDateTime": "String (timestamp)",
}
```
