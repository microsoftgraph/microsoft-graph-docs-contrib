---
title: "siteProtectionUnit resource type"
description: "Describes a site protection unit"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# siteProtectionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

siteProtectionUnit represents the protectionUnit associated with the SharePoint site.

Inherits from [protectionUnitBase](../resources/protectionunitbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List siteProtectionUnit](../api/siteprotectionunit-list.md)|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|Get a list of the [siteProtectionUnit](../resources/siteprotectionunit.md) and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the Protection Unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the Protection Unit.  Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the enablement/disablement of Protection Unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this Protection Unit.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the Protection Unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time of last modification of the Protection Unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|policyId|String|Unique identifier of the protection policy associated with this Protection Unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|siteId|String|Unique identifier of the SharePoint site.|
|siteName|String|Name of the SharePoint site.|
|siteWebUrl|String|WebUrl of the SharePoint site.|
|status|[protectionUnitStatus](../resources/siteprotectionunit.md#protectionunitstatus-values)|The individual enablement/disablement/removal status of the Protection Unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

### protectionUnitStatus values

|Member | Description |
|:------|:------------|
|protectRequested | Protection of this unit has been requested to be enabled. This state arrives when policy is activated or new units are added to active policy.|
|protected | Protection unit is successfully enabled for protection.|
|unprotectRequested |Protection of unit has been requested to be disabled. This state arrives when policy is deactivated.|
|unprotected | Protection unit is successfully disabled for protection.|
|removeRequested |Already protected unit has been requested to be removed from policy. This state arrives when the user wants to explicitly remove units from the policy. |
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteProtectionUnit",
  "baseType": "microsoft.graph.protectionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteProtectionUnit",
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
  "siteId": "String",
  "siteName": "String",
  "siteWebUrl": "String"
}
```

