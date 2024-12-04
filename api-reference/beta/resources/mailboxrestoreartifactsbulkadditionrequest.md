---
title: "mailboxRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the list of mailboxes to be added into the corresponding Exchange Restore Session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# mailboxRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a mailboxRestoreArtifactsBulkAdditionRequest associated with a [Exchange Restore Sesssion](../resources/exchangerestoresession.md). It contains a list of mailboxes to be added into the corresponding Exchange Restore Session.

Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) collection|Get a list of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/mailboxrestoreartifactsbulkadditionrequest-get.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/exchangerestoresession-delete-mailboxrestoreartifactsbulkadditionrequests.md)|None|Delete a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the bulk request associated to the restore session.
|displayName|String|name of the addition Request.
|status|RestoreArtifactsBulkRequestStatus|It determines the execution status of the long running operation being one of `Active`, 'Completed', or 'CompletedWithErrors'.
|createdDateTime|DateTimeOffset|The time of creation of the bulk request.
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the bulk request.
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.
|protectionTimePeriod|timePeriod|The start and end date time of the protection period.
|destinationType|destinationType|Indicates the restoration destination. The possible values are: new, inPlace.
|`tags|restorePointTags|The type of the restore point. The possible values are None, FastRestore, UnknownFutureValue.
|restorePointPreference|restorePointPreference|Indicates which restore point to return. The possible values are oldest, latest.
|protectionUnitIds|Collection(string)|Indicates which protection units we need to restore.
|error|[publicError]((../resources/publicerror.md))|Error details will be populated here for resource resolution failures.
|mailboxes|Collection(String)|A property which contains the list of email-addresses.

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
  "mailboxes": [
    "String"
  ]
}
```

