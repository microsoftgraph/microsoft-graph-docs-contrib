---
title: "restoreArtifactsBulkRequestBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# restoreArtifactsBulkRequestBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/restoreartifactsbulkrequestbase-list.md)|[restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md) collection|Get a list of the [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md) objects and their properties.|
|[Get](../api/restoreartifactsbulkrequestbase-get.md)|[restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md)|Read the properties and relationships of a [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md) object.|
|[Update](../api/restoreartifactsbulkrequestbase-update.md)|[restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md)|Update the properties of a [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md) object.|
|[Delete](../api/restoreartifactsbulkrequestbase-delete.md)|None|Delete a [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|destinationType|destinationType|**TODO: Add Description**.The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|**TODO: Add Description**|
|protectionUnitIds|String collection|**TODO: Add Description**|
|restorePointPreference|restorePointPreference|**TODO: Add Description**.The possible values are: `latest`, `oldest`, `unknownFutureValue`.|
|status|restoreArtifactsBulkRequestStatus|**TODO: Add Description**.The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|
|tags|restorePointTags|**TODO: Add Description**.The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

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

