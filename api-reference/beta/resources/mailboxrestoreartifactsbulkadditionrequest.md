---
title: "mailboxRestoreArtifactsBulkAdditionRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mailboxRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) collection|Get a list of the [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Create a new [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/mailboxrestoreartifactsbulkadditionrequest-get.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|
|[Update](../api/mailboxrestoreartifactsbulkadditionrequest-update.md)|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md)|Update the properties of a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/exchangerestoresession-delete-mailboxrestoreartifactsbulkadditionrequests.md)|None|Delete a [mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|destinationType|destinationType|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|directoryObjectIds|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|mailboxes|String collection|**TODO: Add Description**|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|protectionUnitIds|String collection|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|restorePointPreference|restorePointPreference|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `latest`, `oldest`, `unknownFutureValue`.|
|status|restoreArtifactsBulkRequestStatus|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|
|tags|restorePointTags|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

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
  ],
  "directoryObjectIds": [
    "String"
  ]
}
```

