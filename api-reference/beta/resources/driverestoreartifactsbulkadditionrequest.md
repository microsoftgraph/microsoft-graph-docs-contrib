---
title: "driveRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the properties of a driveRestoreArtifactsBulkAdditionRequest associated with a OneDrive for work or school restore sesssion."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 12/11/2024
---

# driveRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a **driveRestoreArtifactsBulkAdditionRequest** associated with a [OneDrive for work or school restore sesssion](../resources/onedriveforbusinessrestoresession.md). It contains a list of drives that are added to the corresponding OneDrive for work or school restore session in a bulk operation.

Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessrestoresession-list-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) collection|Get a list of the [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) objects associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|
|[Create](../api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Create a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|
|[Get](../api/driverestoreartifactsbulkadditionrequest-get.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Get a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object by its **id**, associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|
|[Delete](../api/driverestoreartifactsbulkadditionrequest-delete.md)|None|Delete a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object associated with a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| createdBy              | [identitySet](../resources/identityset.md)                            | The identity of the person who created the bulk request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).       |
| createdDateTime        | DateTimeOffset                                                       | The time when the bulk request was created. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).                    |
| destinationType        | destinationType                                                      | Indicates the restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| displayName            | String                                                               | Name of the addition request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).                                 |
| drives                 | String collection                                                    | The list of email addresses that are added to the corresponding OneDrive for work or school restore session.                                                                                                          |
| error                  | [publicError](../resources/publicerror.md)                            | Error details are populated for resource resolution failures. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| id                     | String                                                               | The unique identifier of the bulk request associated with the restore session. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| lastModifiedBy         | [identitySet](../resources/identityset.md)                            | Identity of the person who last modified this entity. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).        |
| lastModifiedDateTime   | DateTimeOffset                                                       | Timestamp when this entity was last modified. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).               |
| protectionTimePeriod   | [timePeriod](../resources/timeperiod.md)                             | The start and end date time of the protection period. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).         |
| restorePointPreference | restorePointPreference                                               | Indicates which restore point to return. The possible values are: `oldest`, `latest`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| status                 | [restoreArtifactsBulkRequestStatus](restoreartifactsbulkrequestbase.md#restoreartifactsbulkrequeststatus-values) | The status of the long-running operation. The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| tags                   | restorePointTags                                                     | The type of the restore point. The possible values are: `none`, `fastRestore`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "destinationType": "String",
  "displayName": "String",
  "drives": ["String"],
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "protectionTimePeriod": {"@odata.type": "microsoft.graph.timePeriod"},
  "restorePointPreference": "String",
  "status": "String",
  "tags": "String"
}
```

