---
title: "Get virtualEventRegistrant"
description: "Read the properties and relationships of a virtualEventRegistrant object."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get virtualEventRegistrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventRegistrant](../resources/virtualeventregistrant.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|VirtualEvent.Read|
|Delegated (personal Microsoft account)|Not supported.|
|Application|VirtualEvent.Read.All|

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user.The authorized application will access registrants' information from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}
```

## Optional query parameters

This method does not support the OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventRegistrant](../resources/virtualeventregistrant.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistrant"
}
-->
``` http
GET https://graph.microsoft.com/beta//solutions/virtualEvents/webinars/{webinarId}/registration/registrants/{registrantId}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualeventregistrant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualeventregistrant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistrant"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventRegistrant",
    "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
    "userId": "String",
    "firstName": "Emilee",
    "lastName": "Pham",
    "email": "EmileeMPham@contoso.com",
    "status": "registered",
    "registrationDateTime": "2023-03-07T22:04:17",
    "cancelationDateTime": null,
    "registrationQuestionAnswers": [
      {
        "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
        "displayName": null,
        "value": null,
        "booleanValue": null,
        "multiChoiceValues": [
          "Seattle"
        ]
      },
      {
        "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
        "displayName": null,
        "value": null,
        "booleanValue": true,
        "multiChoiceValues": []
      },
      {
        "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
        "displayName": null,
        "value": null,
        "booleanValue": null,
        "multiChoiceValues": [
          "Cancun",
          "Hoboken",
          "Beijing"
        ]
      }
    ]
  }
}
```
