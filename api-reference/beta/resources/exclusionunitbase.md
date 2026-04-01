---
title: "exclusionUnitBase resource type"
description: "Represents the abstract base entity for an exclusion unit that specifies artifacts to be excluded from full workload backup."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Exclusion unit
ms.date: 03/26/2026
---

# exclusionUnitBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base entity for an exclusion unit that specifies artifacts to be excluded from full workload backup.

This resource is the base type for [siteExclusionUnit](../resources/siteexclusionunit.md), [driveExclusionUnit](../resources/driveexclusionunit.md), and [mailboxExclusionUnit](../resources/mailboxexclusionunit.md).

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the exclusion unit.|
|createdDateTime|DateTimeOffset|The date and time when the exclusion unit was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the exclusion unit is in a failed state.|
|id|String|The unique identifier of the exclusion unit. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the exclusion unit.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the exclusion unit was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|policyId|String|The unique identifier of the protection policy that contains this exclusion unit.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exclusionUnitBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exclusionUnitBase",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "policyId": "String"
}
```
