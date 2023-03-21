---
title: "subjectRightsRequest resource type"
description: "Represents the properties of a subject rights request."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a subject rights request, which is a formal request by a data subject to a controller to take an action on their personal data. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List subjectRightsRequests](../api/subjectRightsRequest-list.md)|[subjectRightsRequest](../resources/subjectRightsRequest.md) collection|Get a list of the [subjectRightsRequest](../resources/subjectRightsRequest.md) objects and their properties.|
|[Create subjectRightsRequest](../api/subjectRightsRequest-post.md)|[subjectRightsRequest](../resources/subjectRightsRequest.md)|Create a new [subjectRightsRequest](../resources/subjectRightsRequest.md) object.|
|[Get subjectRightsRequest](../api/subjectRightsRequest-get.md)|[subjectRightsRequest](../resources/subjectRightsRequest.md)|Read the properties and relationships of a [subjectRightsRequest](../resources/subjectRightsRequest.md) object.|
|[Update subjectRightsRequest](../api/subjectRightsRequest-update.md)|[subjectRightsRequest](../resources/subjectRightsRequest.md)|Update the properties of a [subjectRightsRequest](../resources/subjectRightsRequest.md) object.|
|[getFinalAttachment](../api/subjectRightsRequest-getfinalattachment.md)|Stream|Get the final attachment for the request. The attachment is a zip file that contains all the files that where included by the privacy administrator.|
|[getFinalReport](../api/subjectRightsRequest-getfinalreport.md)|Stream|Get the final report for the request. The report is a text file that contains information about the files that where included by the privacy administrator.|
|[List notes](../api/subjectRightsRequest-list-notes.md)|[authoredNote](../resources/authorednote.md) collection|Get the authoredNote resources from the notes navigation property.|
|[Create authoredNote](../api/subjectRightsRequest-post-notes.md)|[authoredNote](../resources/authorednote.md)|Create a new authoredNote object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvers|[user](../resources/user.md) collection|Collection of users that can approve the request. Approvers are currently only supported for `delete` type of request.|
|assignedTo|[identity](../resources/identity.md)|Identity that the request is assigned to.|
|closedDateTime|DateTimeOffset|The date and time when the request was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|collaborators|[user](../resources/user.md) collection|Collection of users that can collaborate on the request.|
| contentQuery         | String | KQL based content query that should be used for search. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|createdBy|[identitySet](../resources/identityset.md)|Identity information for the entity that created the request.|
|createdDateTime|DateTimeOffset|The date and time when the request was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|dataSubject|[dataSubject](../resources/datasubject.md)|Information about the data subject.|
|dataSubjectType|dataSubjectType|The type of the data subject. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request.|
|displayName|String|The name of the request.|
| externalId           | String| The external ID for the request that is immutable after creation and is used for tracking the request for the external system. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|history|[subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) collection|Collection of history change events.|
| includeAllVersions   | Boolean | Include all versions of the documents. By default, the current copies of the documents will be returned. If SharePoint sites have versioning enabled, including all versions will include the historical copies of the documents. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
| includeAuthoredContent| Boolean | Include content authored by the data subject. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|insight|[subjectRightsRequestDetail](../resources/subjectrightsrequestdetail.md)|Insight about the request.|
|internalDueDateTime|DateTimeOffset|The date and time when the request is internally due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity information for the entity that last modified the request.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the request was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
| mailboxLocations     | [subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md)|The mailbox locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
| pauseAfterEstimate   | Boolean| Pause the request after estimate has finished. By default, the data estimate will run and then pause, allowing you to preview results and then select the option to retrieve data in the UI. You can set this property to `false` if you want it to perform the estimate and then automatically begin with the retrieval of the content. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|regulations|String collection|List of regulations that this request will fulfill.|
| siteLocations| [subjectRightsRequestSiteLocation](../resources/subjectrightsrequestsitelocation.md)| The SharePoint and OneDrive site locations that should be searched. This property is defined only for APIs accessed using the `\security` query path and not the `\privacy` query path.|
|stages|[subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) collection|Information about the different stages for the request.|
|status|subjectRightsRequestStatus|The status of the request. Possible values are: `active`, `closed`, `unknownFutureValue`.|
|type|subjectRightsRequestType|The type of the request. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|notes|[authoredNote](../resources/authorednote.md) collection|List of notes associated with the request.|
|team|[team](../resources/team.md)|Information about the Microsoft Teams team that was created for the request.|

## JSON representation
The following is a JSON representation of the resource.
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
    "approvers": [{
        "@odata.type": "microsoft.graph.user"
    }],
    "contentQuery": "String",
    "collaborators": [{
        "@odata.type": "microsoft.graph.user"
    }],
    "closedDateTime": "String (timestamp)",
    "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "dataSubject": {
        "@odata.type": "microsoft.graph.dataSubject"
    },
    "dataSubjectType": "customer",
    "description": "String",
    "displayName": "String",
    "externalId": "String",
    "id": "String (identifier)",
    "includeAllVersions": "Boolean",
    "includeAuthoredContent": "Boolean",
    "insight": {
        "@odata.type": "microsoft.graph.subjectRightsRequestDetail"
    },
    "internalDueDateTime": "String (timestamp)",
    "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "mailboxLocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestMailboxLocation"
    },
    "pauseAfterDownload": "Boolean",
    "regulations": [
        "String"
    ],
    "stages": [
        {
            "stage": "contentRetrieval",
            "status": "completed",
            "error": {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "contentReview",
            "status": "current",
            "error": {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "generateReport",
            "status": "notStarted",
            "error": {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "caseResolved",
            "status": "notStarted",
            "error": {
                "@odata.type": "microsoft.graph.publicError"
            }
        }
    ],
    "siteLocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestSiteLocation"
    },
    "status": "active",
    "team": {
        "@odata.type": "microsoft.graph.team"
    },
    "type": "access"
}
```

