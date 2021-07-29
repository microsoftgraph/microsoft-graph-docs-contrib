---
title: "Get dataSubjectRequest"
description: "Read the properties and relationships of a dataSubjectRequest object."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: apiPageType
---

# Get dataSubjectRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DataSubject.Read.All, DataSubject.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/dataSubjectRequests/{dataSubjectRequestId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [dataSubjectRequest](../resources/datasubjectrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_datasubjectrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}
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
HTTP/1.1 200 OK
Content-Type: application/json

    {
        "type": "export",
        "dataSubjectType": "other",
        "regulations": ["CCPA"],
        "displayName": "latest case Aik Chen created from API",
        "description": "Description for the case",
        "status": "active",
        "internalDueDateTime": "2021-05-17T00:00:00Z",
        "lastModifiedDateTime": "2021-03-17T21:55:18.8132884Z",
        "id": "7bfe36b4-2395-44df-b702-7f22cffc1e0e",
        "createdDateTime": "2021-03-17T21:33:52.6289558Z",
        "assignedTo": {
            "id": "",
            "displayName": "admin@contoso.onmicrosoft.com"
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
            "itemCount": 1202,
            "totalItemSize": 93815683,
            "itemNeedReview": 1202,
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
            "residency": "USA",
            "phoneNumber": "14257001234"
        },
        "team": {
            "id": "57e55a65-34a2-41e2-88ec-fddf3a8aca17",
            "webUrl": "https://teams.microsoft.com/l/team/teamsUrl"
        }
    }
```

