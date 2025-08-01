---
title: "siteProtectionUnit resource type"
description: "Represents a SharePoint site that has a SharePoint protection policy applied."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/30/2024
---

# siteProtectionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a SharePoint site that has a [SharePoint protection policy](sharepointprotectionpolicy.md) applied.

Inherits from [protectionUnitBase](../resources/protectionunitbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-siteprotectionunits.md)|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|Get a list of [siteProtectionUnit](../resources/siteprotectionunit.md) objects and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|createdDateTime|DateTimeOffset|The time of creation of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|error|[publicError](../resources/publicerror.md)|Contains error details if enabling or disabling the protection unit fails. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|id|String|Unique identifier of the protection policy associated with this protection unit.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time the protection unit was last modified. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|policyId|String|Unique identifier of the protection policy associated with this protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|protectionSources|protectionSource|Indicates the sources by which a protection unit is currently protected. A protection unit protected by multiple sources is indicated by comma-separated values. The possible values are: `none`, `manual`, `dynamicRule`, `unknownFutureValue`. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|
|siteId|String|Unique identifier of the SharePoint site.|
|siteName|String|Name of the SharePoint site.|
|siteWebUrl|String|The web URL of the SharePoint site.|
|status|[protectionUnitStatus](../resources/protectionunitbase.md#protectionunitstatus-values)|The individual enablement/disablement/removal status of the protection unit. Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `offboardRequested`, `offboarded`, `cancelOffboardRequested`, `unknownFutureValue`.|
|offboardRequestedDateTime|DateTimeOffset|The time when protection unit offboard was requested. Inherited from [protectionUnitBase](../resources/protectionunitbase.md).|

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "policyId": "String",
  "protectionSources": "String",
  "siteId": "String",
  "siteName": "String",
  "siteWebUrl": "String",
  "status": "String",
  "offboardRequestedDateTime": "String (timestamp)",
}
```

