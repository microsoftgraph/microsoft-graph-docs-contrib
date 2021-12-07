---
title: "List customQuestions"
description: "Get the bookingCustomQuestion resources from the customQuestions navigation property."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: apiPageType
---

# List customQuestions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the bookingCustomQuestion resources from the customQuestions navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                    |
| :------------------------------------- | :----------------------------------------------------------------------------- |
| Delegated (work or school account)     | BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All |
| Delegated (personal Microsoft account) | Not supported.                                                                 |
| Application                            | Not supported.                                                                 |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /bookingBusinesses/{bookingBusinessesId}/customQuestions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookingCustomQuestion](../resources/bookingcustomquestion.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_bookingcustomquestion"
}
-->

```http
GET https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customQuestions
```

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.bookingCustomQuestion)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.bookingCustomQuestion",
      "id": "91f1ef26-ca00-451c-1c64-8f3560c80d3d",
      "displayName": "String",
      "answerInputType": "String",
      "answerOptions": [
        "String"
      ]
    }
  ]
}
```
