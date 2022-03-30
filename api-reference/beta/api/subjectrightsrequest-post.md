---
title: "Create subjectRightsRequest"
description: "Create a new subjectRightsRequest object."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Create subjectRightsRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SubjectRightsRequest.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

[!INCLUDE [subject-rights-request-privacy-deprecate](../../includes/subject-rights-request-privacy-deprecate.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/subjectRightsRequests
POST /privacy/subjectRightsRequests

```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

The following table shows the properties that are required when you create the [subjectRightsRequest](../resources/subjectRightsRequest.md).

|Property|Type|Description|
|:---|:---|:---|
|dataSubject|[microsoft.graph.dataSubject](../resources/datasubject.md)|Contains the properties for data subject for the request.|
|dataSubjectType|dataSubjectType|Data subject type. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request.|
|displayName|String|Name of the request.|
|internalDueDateTime|DateTimeOffset|Internal due date that is used for tracking the request completion.|
|regulations|String collection|One or more regulations for the request.|
|type|subjectRightsRequestType|Type of the request. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|

## New properties

The following list of properties will only be available under the /security path.

|Property|Type|Description|
|:---|:---|:---|
| includeAuthoredContent| Boolean | Include content authored by the data subject.|
| includeAllVersions   | Boolean | Include all version of the documents. By default, current copies of documents will be returned. If SharePoint sites have versioning enabled, including all versions will include historical copies of documents.|
| pauseAfterEstimate   | Boolean| Pause the request after estimate has finished. By default, the data estimate will run and then pause - allowing you to preview results and then select the option to retrieve data in the UI. You can set this property to false if you want it to perform the estimate and then automatically begin retrieval for content.|
| externalId           | String| External Id for the request, immutable after creation and is used for track request for external system.|
| contentQuery         | String | KQL based content query, that should be used for search.|
| mailboxlocations     | [subjectRightsRequestMailboxLocation](../resources/subjectRightsRequestMailboxLocation.md)|Mailbox locations that should be searched.|
| sitelocations| [subjectRightsRequestSiteLocation](../resources/subjectRightsRequestSiteLocation.md)| SharePoint and OneDrive site locations that should be searched.|

## Response

If successful, this method returns a `201 Created` response code and a [subjectRightsRequest](../resources/subjectRightsRequest.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subjectRightsRequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/privacy/subjectRightsRequests
Content-Type: application/json

{
    "type": "microsoft.graph.subjectRightsRequestType",
    "dataSubjectType": "microsoft.graph.dataSubjectType",
    "regulations": ["String"],
    "displayName": "String",
    "description": "String",
    "internalDueDateTime": "String (timestamp)",
    "dataSubject": {
        "firstName": "String",
        "lastName": "String",
        "email": "String",
        "residency": "String",
        "phoneNumber": "String",
        "SSN": "String"
    },
    "includeAllVersions": "Boolean",
    "pauseAfterEstimate": "Boolean",
    "includeAuthoredContent": "Boolean",
    "externalId": "String",
    "contentQuery": "String",
    "mailboxlocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestMailboxLocation"
    },
    "sitelocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestSiteLocation"
    }    
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-subjectrightsrequest-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-subjectrightsrequest-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-subjectrightsrequest-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-subjectrightsrequest-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subjectRightsRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "type": "microsoft.graph.subjectRightsRequestType",
    "dataSubjectType": "microsoft.graph.dataSubjectType",
    "regulations": [
        "String"
    ],
    "displayName": "String",
    "description": "String",
    "status": "active",
    "internalDueDateTime": "String",
    "lastModifiedDateTime": "String",
    "id": "String",
    "createdDateTime": "String",
    "stages": [
        {
            "stage": "contentRetrieval",
            "status": "notStarted",
            "error": 
            {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "contentReview",
            "status": "notStarted",
            "error": 
            {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "generateReport",
            "status": "notStarted",
            "error": 
            {
                "@odata.type": "microsoft.graph.publicError"
            }
        },
        {
            "stage": "caseResolved",
            "status": "notStarted",
            "error": 
            {
                "@odata.type": "microsoft.graph.publicError"
            }
        }
    ],
    "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
    },
    "dataSubject": {
        "firstName": "String",
        "lastName": "String",
        "email": "String",
        "residency": "String",
        "phoneNumber": "String",
        "SSN": "String"
    },
    "team": {
        "id": "String (identifier)",
        "webUrl": "String"
    },
    "includeAllVersions": "Boolean",
    "pauseAfterEstimate": "Boolean",
    "includeAuthoredContent": "Boolean",
    "externalId": "String",
    "contentQuery": "String",
    "mailboxlocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestMailboxLocation"
    },
    "sitelocations": {
        "@odata.type": "microsoft.graph.subjectRightsRequestSiteLocation"
    }    
}
```

