---
title: "Delete bookingCustomQuestion"
description: "Deletes a bookingCustomQuestion object."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: apiPageType
---

# Delete bookingCustomQuestion

Namespace: microsoft.graph

Deletes the specified [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                    |
| :------------------------------------- | :----------------------------------------------------------------------------- |
| Delegated (work or school account)     | BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All |
| Delegated (personal Microsoft account) | Not supported.                                                                 |
| Application                            | Not supported.                                                                 |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /bookingBusinesses/{bookingBusinessesId}/customQuestions/{bookingCustomQuestionId}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "delete_bookingcustomQuestions"
}
-->

```http
DELETE https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customQuestions/80b5ddda-1e3b-4c9d-abe2-d606cc075e2e
```

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
