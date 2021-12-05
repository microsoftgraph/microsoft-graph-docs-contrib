---
title: "Create bookingCustomQuestion"
description: "Create a new bookingCustomQuestion object."
author: "aswin aniyeri"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: apiPageType
---

# Create bookingCustomQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

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
POST /bookingBusinesses/{bookingBusinessesId}/customQuestions
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [bookingCustomQuestion](../resources/bookingcustomquestion.md) object.

You can specify the following properties when creating a **bookingCustomQuestion**.

| Property        | Type              | Description                                                                                                         |
| :-------------- | :---------------- | :------------------------------------------------------------------------------------------------------------------ |
| displayName     | String            | The question. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md). Required. |
| answerInputType | answerInputType   | The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`. Optional.    |
| answerOptions   | String collection | List of possible answer values. Optional.                                                                     |

## Response

If successful, this method returns a `201 Created` response code and a [bookingCustomQuestion](../resources/bookingcustomquestion.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_bookingcustomquestion_from_"
}
-->

```http
POST https://graph.microsoft.com/beta/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customQuestions/91f1ef26-ca00-451c-1c64-8f3560c80d3d
Content-Type: application/json
Content-length: 165

{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "displayName": "String",
  "answerInputType": "String",
  "answerOptions": [
    "String"
  ]
}
```

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingCustomQuestion"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.bookingCustomQuestion",
  "id": "91f1ef26-ca00-451c-1c64-8f3560c80d3d",
  "displayName": "String",
  "answerInputType": "String",
  "answerOptions": [
    "String"
  ]
}
```
