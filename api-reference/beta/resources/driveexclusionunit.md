---
title: "driveExclusionUnit resource type"
description: "Represents a OneDrive drive that is excluded from a OneDrive for work or school protection policy configured for full workload backup."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Drive exclusion unit
ms.date: 03/26/2026
---

# driveExclusionUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a OneDrive drive that is excluded from a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md) configured for full workload backup.

Inherits from [exclusionUnitBase](../resources/exclusionunitbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessprotectionpolicy-list-driveexclusionunits.md)|[driveExclusionUnit](../resources/driveexclusionunit.md) collection|Get a list of [drive exclusion units](../resources/driveexclusionunit.md) associated with a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Get](../api/driveexclusionunit-get.md)|[driveExclusionUnit](../resources/driveexclusionunit.md)|Get a [drive exclusion unit](../resources/driveexclusionunit.md) associated with a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the exclusion unit. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|createdDateTime|DateTimeOffset|The date and time when the exclusion unit was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBase](../resources/exclusionunitbase.md).|
|directoryObjectId|String|The unique identifier of the directory object (user) associated with the drive.|
|displayName|String|The display name of the user associated with the drive.|
|email|String|The email address of the user associated with the drive.|
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
  "@odata.type": "microsoft.graph.driveExclusionUnit",
  "baseType": "microsoft.graph.exclusionUnitBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveExclusionUnit",
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
