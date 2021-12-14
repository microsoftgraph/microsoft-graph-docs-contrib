---
title: "List customQuestions"
description: "Get the bookingCustomQuestion resources associated with a bookingBusiness."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: apiPageType
---

# List customQuestions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [bookingCustomQuestion](../resources/bookingcustomquestion.md) resources associated with a [bookingBusiness](../resources/bookingbusiness.md).

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

This method supports some of the OData query parameters to help customize the response. For general information, see see [OData query parameters](/graph/query-parameters).

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
GET https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M0000000000.onmicrosoft.com/customQuestions
```

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingCustomQuestion",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.bookingCustomQuestion",
      "id": "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
      "displayName": "What is your age?",
      "answerInputType": "text",
      "answerOptions": []
    }
  ]
}
```
