---
title: "driveRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the list of drives to be added into the corresponding OneDriveForBusiness Restore Session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# driveRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a driveRestoreArtifactsBulkAdditionRequest associated with a [OneDrive For Business Restore Sesssion](../resources/onedriveforbusinessrestoresession.md). It contains a list of drives to be added into the corresponding OneDriveForBusiness Restore Session.
Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessrestoresession-list-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) collection|Get a list of the [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Create a new [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/driverestoreartifactsbulkadditionrequest-get.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/onedriveforbusinessrestoresession-delete-driverestoreartifactsbulkadditionrequests.md)|None|Delete a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the bulk request associated to the restore session.|
|displayName|String|name of the addition Request.|
|status|RestoreArtifactsBulkRequestStatus|It determines the execution status of the long running operation being one of `unkown`, `active`, `completed`, `completedWithErrors` or `unkonwnFutureValue`.|
|createdDateTime|DateTimeOffset|The time of creation of the bulk request.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the bulk request.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.|
|protectionTimePeriod|timePeriod|The start and end date time of the protection period.|
|destinationType|destinationType|Indicates the restoration destination. The possible values are: new, inPlace.|
|`tags|restorePointTags|The type of the restore point. The possible values are none, fastRestore, unknownFutureValue.
|restorePointPreference|restorePointPreference|Indicates which restore point to return. The possible values are oldest, latest.|
|protectionUnitIds|Collection(string)|Indicates which protection units we need to restore.|
|error|[publicError]((../resources/publicerror.md))|Error details will be populated here for resource resolution failures.|
|drives|Collection(String)|A property which contains the list of email-addresses.|
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveRestoreArtifactsBulkAdditionRequest",
  "baseType": "microsoft.graph.restoreArtifactsBulkRequestBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveRestoreArtifactsBulkAdditionRequest",
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
  },
  "drives": [
    "String"
  ]
}
```

