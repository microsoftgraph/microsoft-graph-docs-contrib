---
title: "subjectRightsRequest resource type"
description: "Represents the properties of a subject rights request."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# subjectRightsRequest resource type

Namespace: microsoft.graph

Represents the properties of a subject rights request, which is a formal request by a data subject to a controller to take an action on their personal data.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/subjectrightsrequest-list.md)|subjectRightsRequest collection|Get a list of the subjectRightsRequest objects and their properties.|
|[Create](../api/subjectrightsrequest-post.md)|subjectRightsRequest|Create a new subjectRightsRequest object.|
|[Get](../api/subjectrightsrequest-get.md)|subjectRightsRequest|Read the properties and relationships of a subjectRightsRequest object.|
|[Update](../api/subjectrightsrequest-update.md)|subjectRightsRequest|Update the properties of a subjectRightsRequest object.|
|[Get final attachment](../api/subjectrightsrequest-getfinalattachment.md)|Stream|Get the final attachment for the request. The attachment is a zip file that contains all the files that the privacy administrator included.|
|[Get final report](../api/subjectrightsrequest-getfinalreport.md)|Stream|Get the final report for the request. The report is a text file that contains information about the files that the privacy administrator included.|
|[List notes](../api/subjectrightsrequest-list-notes.md)|[authoredNote](../resources/authorednote.md) collection|Get the authoredNote resources from the notes navigation property.|
|[Create note](../api/subjectrightsrequest-post-notes.md)|[authoredNote](../resources/authorednote.md)|Create a new authoredNote object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[identity](../resources/identity.md)|Identity that the request is assigned to.|
|closedDateTime|DateTimeOffset|The date and time when the request was closed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|contentQuery|String|KQL based content query that should be used for search. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|createdBy|[identitySet](../resources/identityset.md)|Identity information for the entity that created the request.|
|createdDateTime|DateTimeOffset|The date and time when the request was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|dataSubject|[dataSubject](../resources/datasubject.md)|Information about the data subject.|
|dataSubjectType|dataSubjectType|The type of the data subject. The possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request.|
|displayName|String|The name of the request.|
|externalId|String|The external ID for the request that is immutable after creation and is used for tracking the request for the external system. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|history|[subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) collection|Collection of history change events.|
|id|String|Unique identifier for the **subjectRightsRequest** object. Inherited from [entity](../resources/entity.md).|
|includeAllVersions|Boolean|Include all versions of the documents. By default, the current copies of the documents are returned. If SharePoint sites have versioning enabled, including all versions includes the historical copies of the documents. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|includeAuthoredContent|Boolean|Include content authored by the data subject. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|insight|[subjectRightsRequestDetail](../resources/subjectrightsrequestdetail.md)|Insight about the request.|
|internalDueDateTime|DateTimeOffset|The date and time when the request is internally due. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity information for the entity that last modified the request.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the request was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|mailboxLocations|[subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md)|The mailbox locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|pauseAfterEstimate|Boolean|Pause the request after estimate has finished. By default, the data estimate runs and then pauses, allowing you to preview results and then select the option to retrieve data in the UI. You can set this property to `false` if you want it to perform the estimate and then automatically begin with the retrieval of the content. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|regulations|String collection|List of regulations that this request fulfill.|
|siteLocations|[subjectRightsRequestSiteLocation](../resources/subjectrightsrequestsitelocation.md)| The SharePoint and OneDrive site locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|stages|[subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) collection|Information about the different stages for the request.|
|status|subjectRightsRequestStatus|The status of the request. The possible values are: `active`, `closed`, `unknownFutureValue`.|
|type|subjectRightsRequestType|The type of the request. The possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approvers|[user](../resources/user.md) collection|Collection of users who can approve the request. Currently only supported for requests of **type** `delete`.|
|collaborators|[user](../resources/user.md) collection|Collection of users who can collaborate on the request.|
|notes|[authoredNote](../resources/authorednote.md) collection|List of notes associated with the request.|
|team|[team](../resources/team.md)|Information about the Microsoft Teams team that was created for the request.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.subjectRightsRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequest",
  "assignedTo": "String",
  "closedDateTime": "String (timestamp)",
  "contentQuery": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "dataSubject": {"@odata.type": "microsoft.graph.dataSubject"},
  "dataSubjectType": "String",
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "history": [{"@odata.type": "microsoft.graph.subjectRightsRequestHistory"}],
  "id": "String (identifier)",
  "includeAllVersions": "Boolean",
  "includeAuthoredContent": "Boolean",
  "insight": {"@odata.type": "microsoft.graph.subjectRightsRequestDetail"},
  "internalDueDateTime": "String (timestamp)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "mailboxLocations": {"@odata.type":"microsoft.graph.subjectRightsRequestMailboxLocation"},
  "pauseAfterEstimate":"Boolean",
  "regulations": ["String"],
  "siteLocations": {"@odata.type":"microsoft.graph.subjectRightsRequestSiteLocation"},
  "stages": [{"@odata.type": "microsoft.graph.subjectRightsRequestStageDetail"}],
  "status": "String",
  "type": "String"
}
```
