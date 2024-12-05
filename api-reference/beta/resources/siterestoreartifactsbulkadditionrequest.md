---
title: "siteRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the list of SharePoint site URLs to be added into the corresponding SharePoint Restore Session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# siteRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a siteRestoreArtifactsBulkAdditionRequest associated with a [SharePoint Restore Sesssion](../resources/sharepointrestoresession.md). It contains a list of SharePoint site URL to be added into the corresponding SharePoint Restore Session.
Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointrestoresession-list-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) collection|Get a list of the [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) objects and their properties.|
|[Create](../api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Create a new [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|
|[Get](../api/siterestoreartifactsbulkadditionrequest-get.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Read the properties and relationships of a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|
|[Delete](../api/sharepointrestoresession-delete-siterestoreartifactsbulkadditionrequests.md)|None|Delete a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the bulk request associated to the restore session.|
|displayName|String|Name of the addition Request.|
|status|RestoreArtifactsBulkRequestStatus|It determines the execution status of the long running operation being one of `unkown`, `active`, `completed`, `completedWithErrors` or `unkonwnFutureValue`.|
|createdDateTime|DateTimeOffset|The time of creation of the bulk request.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the bulk request.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.|
|protectionTimePeriod|timePeriod|The start and end date time of the protection period.|
|destinationType|destinationType|Indicates the restoration destination. The possible values are: new, inPlace.|
|`tags|restorePointTags|The type of the restore point. The possible values are none, fastRestore, unknownFutureValue.|
|restorePointPreference|restorePointPreference|Indicates which restore point to return. The possible values are oldest, latest.|
|protectionUnitIds|Collection(string)|Indicates which protection units we need to restore.|
|error|[publicError]((../resources/publicerror.md))|Error details will be populated here for resource resolution failures.|
|siteWebUrls|Collection(String)|A property which contains the list of SharePoint site URLs.|

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
  ]
}
```

