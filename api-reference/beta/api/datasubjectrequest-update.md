---
title: "Update dataSubjectRequest"
description: "Update the properties of a dataSubjectRequest object."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
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
|assignedTo|[microsoft.graph.identity](../resources/identity.md)|The identity information for the user that the request is assigned to.|
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
  "truncated": true,
  "@odata.type": "microsoft.graph.dataSubjectRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "type": "microsoft.graph.dataSubjectRequestType",
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
    }
}
```

