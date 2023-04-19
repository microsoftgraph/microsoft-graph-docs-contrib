---
title: "Get bookingCustomQuestion"
description: "Read the properties and relationships of a bookingCustomQuestion object."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: apiPageType
---

# Get bookingCustomQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                       |
| :------------------------------------- | :------------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | Bookings.Read.All, BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All |
| Delegated (personal Microsoft account) | Not supported.                                                                                    |
| Application                            | BookingsAppointment.ReadWrite.All, Bookings.Read.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /bookingBusinesses/{bookingBusinessesId}/customQuestions/{bookingCustomQuestionId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see $count and $expand [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_bookingcustomquestion",
  "sampleKeys": ["contosolunchdelivery@contoso.onmicrosoft.com", "3bc6fde0-4ad3-445d-ab17-0fc15dba0774"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/customQuestions/3bc6fde0-4ad3-445d-ab17-0fc15dba0774
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-bookingcustomquestion-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-bookingcustomquestion-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-bookingcustomquestion-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-bookingcustomquestion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-bookingcustomquestion-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-bookingcustomquestion-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingCustomQuestion"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.bookingCustomQuestion",
    "id": "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
    "displayName": "What is your age?",
    "answerInputType": "text",
    "answerOptions": []
  }
}
```
