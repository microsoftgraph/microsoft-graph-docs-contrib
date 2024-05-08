---
title: "siteProtectionUnit resource type"
description: "Describes a site protection unit"
author: "tkanaujia, maniksingh"
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
|[List siteProtectionUnit objects](../api/sharepointprotectionpolicy-list-siteprotectionunits.md)|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|Get a list of the [siteProtectionUnit](../resources/siteprotectionunit.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit.  Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the enablement/disablement of protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time of last modification of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|siteId|String|Unique identifier of the SharePoint site.|
|siteName|String|Name of the SharePoint site.|
|siteWebUrl|String|WebUrl of the SharePoint site.|
|status|protectionUnitStatus|The individual enablement/disablement/removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteProtectionUnit",
  "baseType": "microsoft.backupRestore.protectionUnitBase",
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

