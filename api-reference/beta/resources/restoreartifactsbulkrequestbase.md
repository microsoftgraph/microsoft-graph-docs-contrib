---
title: "restoreArtifactsBulkRequestBase resource type"
description: "Represents a bulk Request associated to one of the Restore Session"
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storge"
doc_type: resourcePageType
---

# restoreArtifactsBulkRequestBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a bulk Request associated to one of the Restore Session.

This abstract type is the base type for [siteRestoreArtifactsBulkAdditionRequests](../resources/siterestoreartifactsbulkadditionrequest.md), [mailboxRestoreArtifactsBulkAdditionRequests](../resources/mailboxrestoreartifactsbulkadditionrequest.md) and [driveRestoreArtifactsBulkAdditionRequests](../resources/driverestoreartifactsbulkadditionrequest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the bulk request associated to the restore session.|
|displayName|String|Name of the addition Request.|
|status|RestoreArtifactsBulkRequestStatus	|It determines the execution status of the long running operation being one of Active, Completed, or CompletedWithErrors.|
|createdDateTime|DateTimeOffset|The time of creation of the bulk request.|
|createdBy|[identitySet](../resources/intune-identityset.md)|The identity of person who created the bulk request.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|Identity of the person who last modified this entity.|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|The start and end date time of the protection period|
|destinationType|destinationType|Indicates the restoration destination. The possible values are: new, inPlace.|
|tags|restorePointTags|	The type of the restore point. The possible values are None, FastRestore, UnknownFutureValue|
|restorePointPreference|restorePointPreference|Indicates which restore point to return. The possible values are oldest, latest.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here for resource resolution failures|

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
  "id": "String (identifier)",
  "status": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "protectionTimePeriod": {
    "@odata.type": "microsoft.graph.timePeriod"
  },
  "restorePointPreference": "String",
  "tags": "String",
  "destinationType": "String",
  "protectionUnitIds": [
    "String"
  ],
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

