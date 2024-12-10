---
title: "restoreArtifactsBulkRequestBase resource type"
description: "An abstract type that represents a bulk request associated with one of the restore sessions."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreArtifactsBulkRequestBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a bulk request associated with one of the restore sessions.

Base type for [siteRestoreArtifactsBulkAdditionRequests](../resources/siterestoreartifactsbulkadditionrequest.md), [mailboxRestoreArtifactsBulkAdditionRequests](../resources/mailboxrestoreartifactsbulkadditionrequest.md), and [driveRestoreArtifactsBulkAdditionRequests](../resources/driverestoreartifactsbulkadditionrequest.md).

## Properties
| Property               | Type                                   | Description                                                                 |
|:-----------------------|:---------------------------------------|:---------------------------------------------------------------------------|
| createdBy              | [identitySet](../resources/identityset.md) | The identity of the person who created the bulk request.                  |
| createdDateTime        | DateTimeOffset                         | The time when the bulk request was created.                                  |
| destinationType        | destinationType                        | Indicates the restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`. |
| displayName            | String                                 | Name of the addition request.                                              |
| error                  | [publicError](../resources/publicerror.md) | Error details are populated for resource resolution failures.     |
| id                     | String                                 | The unique identifier of the bulk request associated with the restore session. |
| lastModifiedBy         | [identitySet](../resources/identityset.md) | Identity of the person who last modified this entity.                     |
| lastModifiedDateTime   | DateTimeOffset                         | Timestamp when this entity was last modified.                         |
| protectionTimePeriod   | [timePeriod](../resources/timeperiod.md) | The start and end date and time of the protection period.                      |
| restorePointPreference | restorePointPreference                 | Indicates which restore point to return. The possible values are: `oldest`, `latest`, `unknownFutureValue`. |
| status                 | [restoreArtifactsBulkRequestStatus](restoreartifactsbulkrequestbase.md#restoreartifactsbulkrequeststatus-values)      | Determines the status of the long-running operation. The possible values area: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. |
| tags                   | restorePointTags                       | The type of the restore point. The possible values are: `none`, `fastRestore`, `unknownFutureValue`. |

### restoreArtifactsBulkRequestStatus values

|Member|Description|
|:---|:---|:---|
|unknown|The restore session is in an indeterminate state, possibly due to a temporary system issue or error.|
|active|The initial status upon creation of the entity is `active`.|
|completed|When all protection resources are added to the corresponding restore session, the status of the entity becomes `completed`. The state transition is from `active` to `completed`.|
|completedWithErrors|In case of any failures during insertion, the status of the entity becomes `completedWithErrors`. The state transition is from `active` to `completedWithErrors`.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restoreArtifactsBulkRequestBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreArtifactsBulkRequestBase",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "destinationType": "String",
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "protectionTimePeriod": {"@odata.type": "microsoft.graph.timePeriod"},
  "protectionUnitIds": ["String"],
  "restorePointPreference": "String",
  "status": "String",
  "tags": "String"
}
```

