---
title: "mailboxRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the properties of a mailboxRestoreArtifactsBulkAdditionRequest associated with an Exchange restore session."
author: "nupur-munda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/20/2025
---

# mailboxRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

Represents the properties of a **mailboxRestoreArtifactsBulkAdditionRequest** associated with an [Exchange restore session](../resources/exchangerestoresession.md). It contains a list of mailboxes that are added to the corresponding Exchange restore session in a bulk operation.

Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) collection|Get a list of the [maiboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) objects associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).|
|[Create](../api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).|
|[Get](../api/mailboxrestoreartifactsbulkadditionrequest-get.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Get a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object by its **id**, associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).|
|[Delete](../api/mailboxrestoreartifactsbulkadditionrequest-delete.md)|None|Delete a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object associated with an [exchangeRestoreSession](../resources/exchangerestoresession.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| createdBy                  | [identitySet](../resources/identityset.md) | The identity of the person who created the bulk request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| createdDateTime            | DateTimeOffset            | The time when the bulk request was created. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).           |
| destinationType            | destinationType           | Indicates the restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| directoryObjectIds         | String collection         | The list of directory object IDs that are added to the corresponding Exchange restore session in a bulk operation.           |
| displayName                | String                    | Name of the addition request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).                        |
| error                      | [publicError](../resources/publicerror.md) | Error details are populated for resource resolution failures. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| id                         | String                    | The unique identifier of the bulk request associated with the restore session. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| lastModifiedBy             | [identitySet](../resources/identityset.md) | Identity of the person who last modified this entity. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| lastModifiedDateTime       | DateTimeOffset            | Timestamp when this entity was last modified. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).   |
| mailboxes                  | String collection         | The list of email addresses that are added to the corresponding Exchange restore session in a bulk operation. |
| protectionTimePeriod       | [timePeriod](../resources/timeperiod.md)                | The start and end date time of the protection period. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| protectionUnitIds      | String collection                     | Indicates which protection units to restore. This property isn't implemented yet. Future value; don't use. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).   |
| restorePointPreference     | restorePointPreference    | Indicates which restore point to return. The possible values are: `oldest`, `latest`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| status                     | [restoreArtifactsBulkRequestStatus](restoreartifactsbulkrequestbase.md#restoreartifactsbulkrequeststatus-values)   | The status of the long-running operation. The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| tags                       | restorePointTags          | The type of the restore point. The possible values are: `none`, `fastRestore`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest",
  "baseType": "microsoft.graph.restoreArtifactsBulkRequestBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "destinationType": "String",
  "directoryObjectIds": ["String"],
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "mailboxes": ["String"],
  "protectionTimePeriod": {"@odata.type": "microsoft.graph.timePeriod"},
  "protectionUnitIds": ["String"],
  "restorePointPreference": "String",
  "status": "String",
  "tags": "String"
}
```

