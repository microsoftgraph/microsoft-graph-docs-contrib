---
title: "siteExclusionUnit resource type"
description: "Represents a SharePoint site that is excluded from a SharePoint protection policy configured for full workload backup."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Site exclusion unit
ms.date: 03/26/2026
---

# siteExclusionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a SharePoint site that is excluded from a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md) configured for full workload backup.

Inherits from [exclusionUnitBase](../resources/exclusionunitbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointprotectionpolicy-list-siteexclusionunits.md)|[siteExclusionUnit](../resources/siteexclusionunit.md) collection|Get a list of [siteExclusionUnit](../resources/siteexclusionunit.md) objects associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|
|[Get](../api/siteexclusionunit-get.md)|[siteExclusionUnit](../resources/siteexclusionunit.md)|Get a [siteExclusionUnit](../resources/siteexclusionunit.md) object associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|createdDateTime|DateTimeOffset|The date and time when the exclusion unit was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|error|[publicError](../resources/publicerror.md)|Contains error details if the exclusion unit is in a failed state. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|id|String|The unique identifier of the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the exclusion unit was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|policyId|String|The unique identifier of the protection policy that contains this exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|siteId|String|The unique identifier of the SharePoint site.|
|siteName|String|The display name of the SharePoint site.|
|siteWebUrl|String|The URL of the SharePoint site.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteExclusionUnit",
  "baseType": "microsoft.graph.exclusionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteExclusionUnit",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "policyId": "String",
  "siteId": "String",
  "siteName": "String",
  "siteWebUrl": "String"
}
```
