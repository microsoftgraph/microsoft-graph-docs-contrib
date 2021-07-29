---
title: "dataSubjectRequest resource type"
description: "Represents the properties for the data subject request"
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# dataSubjectRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for the data subject request.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSubjectRequests](../api/datasubjectrequest-list.md)|[dataSubjectRequest](../resources/datasubjectrequest.md) collection|Get a list of the [dataSubjectRequest](../resources/datasubjectrequest.md) objects and their properties.|
|[Create dataSubjectRequest](../api/datasubjectrequest-create.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Create a new [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[Get dataSubjectRequest](../api/datasubjectrequest-get.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Read the properties and relationships of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[Update dataSubjectRequest](../api/datasubjectrequest-update.md)|[dataSubjectRequest](../resources/datasubjectrequest.md)|Update the properties of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.|
|[getFinalAttachment](../api/datasubjectrequest-getfinalattachment.md)|Stream|Get the final attachment for the request. The attachment is a zip file that contains all the files that where included by the privacy administrator.|
|[getFinalReport](../api/datasubjectrequest-getfinalreport.md)|Stream|Get the final report for the request. The report is a text file that contains information about the files that where included by the privacy administrator.|
|[List notes](../api/datasubjectrequest-list-notes.md)|[authoredNote](../resources/authorednote.md) collection|Get the authoredNote resources from the notes navigation property.|
|[Create authoredNote](../api/datasubjectrequest-post-notes.md)|[authoredNote](../resources/authorednote.md)|Create a new authoredNote object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[identity](../resources/identity.md)|Identity that the request is assigned to|
|closedDateTime|DateTimeOffset|The date and time when the request was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|createdBy|[identitySet](../resources/identityset.md)|Identity information for the entity that created the request.|
|createdDateTime|DateTimeOffset|The date and time when the request was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|dataSubject|[dataSubject](../resources/datasubject.md)|Information about the data subject.|
|dataSubjectType|dataSubjectType|The type of the data subject. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request|
|displayName|String|The name of the request.|
|history|[dataSubjectRequestHistory](../resources/datasubjectrequesthistory.md) collection|Collection of history change events.|
|insight|[dataSubjectRequestDetail](../resources/datasubjectrequestdetail.md)|Insight about the request.|
|internalDueDateTime|DateTimeOffset|The date and time when the request is internally due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity information for the entity that last modified the request.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the request was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|regulations|String collection|List of regulations that this request will fulfill.|
|stages|[dataSubjectRequestStageDetail](../resources/datasubjectrequeststagedetail.md) collection|Information about the different stages for the request.|
|status|dataSubjectRequestStatus|The status of the request.. Possible values are: `active`, `closed`, `unknownFutureValue`.|
|type|dataSubjectRequestType|The type of the request. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|notes|[authoredNote](../resources/authorednote.md) collection|List of notes associcated with the request|
|team|[team](../resources/team.md)|Information about the Microsoft Teams that was created for the request.|

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
    "type": "access",
    "dataSubjectType": "customer",
    "regulations": [
        "CCPA"
    ],
    "displayName": "Request ID 60d07f919f5069000c0f309e",
    "description": "This is a new case created from graph API",
    "status": "active",
    "internalDueDateTime": "2021-07-06T12:02:47.235Z",
    "closedDateTime": null,
    "lastModifiedDateTime": "2021-06-21T12:38:46.7446808Z",
    "id": "43a29ff4-4d70-4c91-ac5c-fe82cf1f9f07",
    "createdDateTime": "2021-06-21T12:03:40.1644015Z",
    "assignedTo": {
        "id": "",
        "displayName": "user@contoso.onmicrosoft.com"
    },
    "history": [],
    "stages": [
        {
            "stage": "contentRetrieval",
            "status": "completed",
            "error": null
        },
        {
            "stage": "contentReview",
            "status": "current",
            "error": null
        },
        {
            "stage": "generateReport",
            "status": "notStarted",
            "error": null
        },
        {
            "stage": "caseResolved",
            "status": "notStarted",
            "error": null
        }
    ],
    "insight": {
        "itemCount": 1,
        "totalItemSize": 13670,
        "itemNeedReview": 1,
        "signedOffItemCount": 0,
        "excludedItemCount": 0,
        "productItemCounts": [],
        "insightCounts": []
    },
    "createdBy": {
        "user": {
            "id": "",
            "displayName": "user@contoso.onmicrosoft.com"
        }
    },
    "lastModifiedBy": {
        "user": {
            "id": "",
            "displayName": "user@contoso.onmicrosoft.com"
        }
    },
    "dataSubject": {
        "firstName": "Aik",
        "lastName": "Chen",
        "email": "aikchen@hotmail.com",
        "residency": "USA",
        "phoneNumber": "0987654321",
        "SSN": "8798765454"
    },
    "team": {
        "id": "",
        "webUrl": null
    }
}
```

