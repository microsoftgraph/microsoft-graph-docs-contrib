---
title: "siteRestoreArtifactsBulkAdditionRequest resource type"
description: "Represents the properties of a siteRestoreArtifactsBulkAdditionRequest associated with a SharePoint restore session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 12/11/2024
---

# siteRestoreArtifactsBulkAdditionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a **siteRestoreArtifactsBulkAdditionRequest** associated with a [SharePoint restore session](../resources/sharepointrestoresession.md). It includes a list of SharePoint site URLs that are added to the corresponding SharePoint restore session in a bulk operation.

Inherits from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointrestoresession-list-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) collection|Get a list of the [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) objects associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[Create](../api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Create a new [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[Get](../api/siterestoreartifactsbulkadditionrequest-get.md)|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md)|Get a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object by its **id**, associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[Delete](../api/siterestoreartifactsbulkadditionrequest-delete.md)|None|Delete a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object associated with a [sharepointRestoreSession](../resources/sharepointrestoresession.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| createdBy                  | [identitySet](../resources/identityset.md) | The identity of the person who created the bulk request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| createdDateTime            | DateTimeOffset            | The time when the bulk request was created. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).           |
| destinationType            | destinationType           | Indicates the restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| displayName                | String                    | Name of the addition request. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).                        |
| error                      | [publicError](../resources/publicerror.md) | Error details are populated for resource resolution failures. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| id                         | String                    | The unique identifier of the bulk request associated with the restore session. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| lastModifiedBy             | [identitySet](../resources/identityset.md) | Identity of the person who last modified this entity. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| lastModifiedDateTime       | DateTimeOffset            | Timestamp when this entity was last modified. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).   |
| protectionTimePeriod       | [timePeriod](../resources/timeperiod.md)                | The start and end date time of the protection period. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| protectionUnitIds      | String collection                     | Indicates which protection units to restore. This property isn't implemented yet. Future value; don't use. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md).    |
| restorePointPreference     | [restoreArtifactsBulkRequestStatus](restoreartifactsbulkrequestbase.md#restoreartifactsbulkrequeststatus-values)    | Indicates which restore point to return. The possible values are `oldest`, `latest`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| siteIds                    | String collection         | The list of SharePoint site IDs that are added to the corresponding SharePoint restore session in a bulk operation. This property isn't implemented yet. Future value; don't use.          |
| siteWebUrls                | String collection         | The list of SharePoint site URLs that are added to the corresponding SharePoint restore session in a bulk operation.                                                                                     |
| status                     | RestoreArtifactsBulkRequestStatus | The status of the long-running operation. The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |
| tags                       | restorePointTags          | The type of the restore point. The possible values are: `none`, `fastRestore`, `unknownFutureValue`. Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). |

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
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "destinationType": "String",
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "protectionTimePeriod": {"@odata.type": "microsoft.graph.timePeriod"},
  "protectionUnitIds": ["String"],
  "restorePointPreference": "String",
  "siteIds": ["String"],
  "siteWebUrls": ["String"],
  "status": "String",
  "tags": "String"
}
```

