---
title: "siteRestoreArtifactsBulkAdditionRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# siteRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointrestoresession-list-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) collection|Get a list of the [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Create a new [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/siterestoreartifactsbulkadditionrequest-get.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|
|[Update](../api/siterestoreartifactsbulkadditionrequest-update.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Update the properties of a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/sharepointrestoresession-delete-siterestoreartifactsbulkadditionrequests.md)|None|Delete a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|destinationType|destinationType|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|protectionUnitIds|String collection|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).|
|restorePointPreference|restorePointPreference|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `latest`, `oldest`, `unknownFutureValue`.|
|siteIds|String collection|**TODO: Add Description**|
|siteWebUrls|String collection|**TODO: Add Description**|
|status|restoreArtifactsBulkRequestStatus|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|
|tags|restorePointTags|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteRestoreArtifactsBulkAdditionRequest",
  "baseType": "microsoft.graph.restoreArtifactsBulkRequestBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteRestoreArtifactsBulkAdditionRequest",
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
  "siteWebUrls": [
    "String"
  ],
  "siteIds": [
    "String"
  ]
}
```

