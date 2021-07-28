---
title: "Update dataSubjectRequest"
description: "Update the properties of a dataSubjectRequest object."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "Privacy Management"
doc_type: apiPageType
---

# Update dataSubjectRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.

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
PATCH /compliance/dataSubjectRequests/{dataSubjectRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSubjectRequest](../resources/datasubjectrequest.md) object.

The following table shows the properties that are required when you update the [dataSubjectRequest](../resources/datasubjectrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[microsoft.privacyManagement.identity](../resources/identity.md)|The identity information for the user that the request is assigned to.|
|description|String|Updated description for the request.|
|displayName|String|Updated name of the request.|
|internalDueDateTime|DateTimeOffset|Updated internal due date for the request.|

## Response

If successful, this method returns a `200 OK` response code and an updated [dataSubjectRequest](../resources/datasubjectrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_datasubjectrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}
Content-Type: application/json
Content-length: 837

{
  "@odata.type": "#microsoft.graph.dataSubjectRequest",
  "internalDueDateTime": "2021-08-30T00:00:00Z"
}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

