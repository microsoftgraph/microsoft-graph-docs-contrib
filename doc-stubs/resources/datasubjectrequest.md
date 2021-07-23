---
title: "dataSubjectRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSubjectRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSubjectRequests](../api/datasubjectrequest-list.md)|[dataSubjectRequest](../resources/datasubjectrequest.md) collection|Get a list of the [dataSubjectRequest](../resources/datasubjectrequest.md) objects and their properties.|
|[Create dataSubjectRequest](../api/datasubjectrequest-create.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Create a new [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[Get dataSubjectRequest](../api/datasubjectrequest-get.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Read the properties and relationships of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[Update dataSubjectRequest](../api/datasubjectrequest-update.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Update the properties of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[Delete dataSubjectRequest](../api/datasubjectrequest-delete.md)|None|Deletes a [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[getFinalAttachment](../api/datasubjectrequest-getfinalattachment.md)|Stream|**TODO: Add Description**|
|[getFinalReport](../api/datasubjectrequest-getfinalreport.md)|Stream|**TODO: Add Description**|
|[List notes](../api/datasubjectrequest-list-notes.md)|[authoredNote](../resources/authorednote.md) collection|Get the authoredNote resources from the notes navigation property.|
|[Create authoredNote](../api/datasubjectrequest-post-notes.md)|[authoredNote](../resources/authorednote.md)|Create a new authoredNote object.|
|[List team](../api/datasubjectrequest-list-team.md)|[team](../resources/team.md) collection|Get the team resources from the team navigation property.|
|[Add team](../api/datasubjectrequest-post-team.md)|[team](../resources/team.md)|Add team by posting to the team collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[identity](../resources/identity.md)|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|dataSubject|[dataSubject](../resources/datasubject.md)|**TODO: Add Description**|
|dataSubjectType|dataSubjectType|**TODO: Add Description**. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|history|[dataSubjectRequestHistory](../resources/datasubjectrequesthistory.md) collection|**TODO: Add Description**|
|insight|[dataSubjectRequestDetail](../resources/datasubjectrequestdetail.md)|**TODO: Add Description**|
|internalDueDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|regulations|String collection|**TODO: Add Description**|
|stages|[dataSubjectRequestStageDetail](../resources/datasubjectrequeststagedetail.md) collection|**TODO: Add Description**|
|status|dataSubjectRequestStatus|**TODO: Add Description**. Possible values are: `active`, `closed`, `unknownFutureValue`.|
|type|dataSubjectRequestType|**TODO: Add Description**. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|notes|[authoredNote](../resources/authorednote.md) collection|**TODO: Add Description**|
|team|[team](../resources/team.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataSubjectRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSubjectRequest",
  "assignedTo": {
    "@odata.type": "microsoft.graph.identity"
  },
  "closedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "dataSubject": {
    "@odata.type": "microsoft.graph.dataSubject"
  },
  "dataSubjectType": "String",
  "description": "String",
  "displayName": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestHistory"
    }
  ],
  "insight": {
    "@odata.type": "microsoft.graph.dataSubjectRequestDetail"
  },
  "internalDueDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "regulations": [
    "String"
  ],
  "stages": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestStageDetail"
    }
  ],
  "status": "String",
  "type": "String"
}
```

