---
title: "Create dataSubjectRequest"
description: "Create a new dataSubjectRequest object."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: apiPageType
---

# Create dataSubjectRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [dataSubjectRequest](../resources/datasubjectrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DataSubject.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /compliance/dataSubjectRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSubjectRequest](../resources/datasubjectrequest.md) object.

The following table shows the properties that are required when you create the [dataSubjectRequest](../resources/datasubjectrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|dataSubject|[microsoft.privacyManagement.dataSubject](../resources/datasubject.md)|contains the properties for data subject for the request.|
|dataSubjectType|dataSubjectType|Data subject type. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|Description for the request.|
|displayName|String|Name of the request.|
|internalDueDateTime|DateTimeOffset|Internal due date that is used for tracking the request completion.|
|regulations|String collection|One or more regulations for the request.|
|type|dataSubjectRequestType|Type of the request. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|


## Response

If successful, this method returns a `201 Created` response code and a [dataSubjectRequest](../resources/datasubjectrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_datasubjectrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/dataSubjectRequests
Content-Type: application/json
Content-length: 849

{
    "type": "export",
    "dataSubjectType": "customer",
    "regulations": ["CCPA"],
    "displayName": "Export Case created from Graph API for Aik Chen",
    "description": "This is a new case created from graph API",
    "internalDueDateTime": "2021-08-30T00:00:00Z",
    "dataSubject": {
        "firstName": "aik",
        "lastName": "chen",
        "email": "aik.chen@live.com",
        "residency": "US",
        "phoneNumber": "16165550112",
        "SSN": "123456785"
    }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.privacyManagement.dataSubjectRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/dataSubjectRequests/$entity",
    "type": "export",
    "dataSubjectType": "customer",
    "regulations": [
        "CCPA"
    ],
    "displayName": "Export Case created from Graph API for Aik Chen",
    "description": "This is a new case created from graph API",
    "status": "active",
    "internalDueDateTime": "2021-08-30T00:00:00Z",
    "closedDateTime": null,
    "lastModifiedDateTime": "2021-07-28T21:24:10.5588319Z",
    "id": "14679787-ae79-4218-81f0-3db3ab429fae",
    "createdDateTime": "2021-07-28T21:24:10.5588319Z",
    "assignedTo": {
        "id": "",
        "displayName": "admin@contoso.onmicrosoft.com"
    },
    "history": [],
    "stages": [
        {
            "stage": "contentRetrieval",
            "status": "notStarted",
            "error": null
        },
        {
            "stage": "contentReview",
            "status": "notStarted",
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
        "itemCount": 0,
        "totalItemSize": 0,
        "itemNeedReview": 0,
        "signedOffItemCount": 0,
        "excludedItemCount": 0,
        "productItemCounts": [],
        "insightCounts": []
    },
    "createdBy": {
        "user": {
            "id": "",
            "displayName": "admin@contoso.onmicrosoft.com"
        }
    },
    "lastModifiedBy": {
        "user": {
            "id": "",
            "displayName": "admin@contoso.onmicrosoft.com"
        }
    },
    "dataSubject": {
        "firstName": "aik",
        "lastName": "chen",
        "email": "aik.chen@live.com",
        "residency": "US",
        "phoneNumber": "16165550112",
        "SSN": "123456785"
    },
    "team": {
        "id": "",
        "webUrl": null
    }
}
```

