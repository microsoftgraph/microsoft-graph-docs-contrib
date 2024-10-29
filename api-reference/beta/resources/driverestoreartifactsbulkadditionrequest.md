---
title: "driveRestoreArtifactsBulkAdditionRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# driveRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessrestoresession-list-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) collection|Get a list of the [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Create a new [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/driverestoreartifactsbulkadditionrequest-get.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|
|[Update](../api/driverestoreartifactsbulkadditionrequest-update.md)|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md)|Update the properties of a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/onedriveforbusinessrestoresession-delete-driverestoreartifactsbulkadditionrequests.md)|None|Delete a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|destinationType|destinationType|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|directoryObjectIds|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|drives|String collection|**TODO: Add Description**|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
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
  ],
  "directoryObjectIds": [
    "String"
  ]
}
```

