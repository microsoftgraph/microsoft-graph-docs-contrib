---
title: "Update subjectRightsRequest"
description: "Update the properties of a subjectRightsRequest object."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Update subjectRightsRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SubjectRightsRequest.ReadWrite.All*|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

>[!IMPORTANT]
>Permissions marked with an asterisk (*) are currently not available. For details, see [Known issues](/graph/known-issues#compliance).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /privacy/subjectRightsRequests/{subjectRightsRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [subjectRightsRequest](../resources/subjectRightsRequest.md) object.

The following table shows the properties that are required when you update the [subjectRightsRequest](../resources/subjectRightsRequest.md).

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[microsoft.graph.identity](../resources/identity.md)|The identity information for the user that the request is assigned to.|
|description|String|Updated description for the request.|
|displayName|String|Updated name of the request.|
|internalDueDateTime|DateTimeOffset|Updated internal due date for the request.|

## Response

If successful, this method returns a `200 OK` response code and an updated [subjectRightsRequest](../resources/subjectRightsRequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_subjectRightsRequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/privacy/subjectRightsRequests/{subjectRightsRequestId}
Content-Type: application/json
Content-length: 837

{
  "@odata.type": "#microsoft.graph.subjectRightsRequest",
  "internalDueDateTime": "2021-08-30T00:00:00Z"
}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subjectRightsRequest"
}
-->
``` http
HTTP/1.1 200 OK
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

