---
title: "Get virtualEventRegistration"
description: "Read the properties and relationships of a virtualEventRegistration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventRegistration
Namespace: microsoft.graph



Read the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /virtualEventRegistration
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

If successful, this method returns a `200 OK` response code and a [virtualEventRegistration](../resources/virtualeventregistration.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/virtualEventRegistration
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventRegistration",
    "id": "34d6f3f4-8ace-b7df-db7f-ede79594f7b5",
    "userId": "String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "status": "String",
    "registrationDateTime": "String (timestamp)",
    "cancelationDateTime": "String (timestamp)",
    "registrationQuestionAnswers": [
      {
        "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
      }
    ]
  }
}
```

