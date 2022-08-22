---
title: "List bookingBusinesses"
description: "Get a collection of bookingBusiness objects that have been created for the tenant."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: apiPageType
---

# List bookingBusinesses

Namespace: microsoft.graph

Get a collection of [bookingBusiness](../resources/bookingbusiness.md) objects that has been created for the tenant.

This operation returns only the **id** and **displayName** of each Microsoft Bookings business in the collection. For performance considerations, it does not return other properties. You can get the other properties of a Bookings business by specifying its **id** in a [GET](bookingbusiness-get.md) operation.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.Read.All, BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /solutions/bookingBusinesses
```

## Optional query parameters

This method supports the $count and $expand [OData query parameters](/graph/query-parameters) to help customize the response.

This method also supports the `query` parameter which accepts a string value. This parameter limits the GET results to businesses that match the specified string. For more details, see [example](#request-2).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookingBusiness](../resources/bookingbusiness.md) objects in the response body.

## Examples

### Example 1: Get Bookings businesses in a tenant

#### Request 1

The following example gets the Bookings businesses in a tenant.

<!-- {
  "blockType": "request"
}-->
```http
GET https://graph.microsoft.com/v1.0/solutions/bookingBusinesses
```

#### Response 1

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingBusiness",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/solutions/$metadata#bookingBusinesses",
    "value":[
        {
            "id":"Contosolunchdelivery@contoso.onmicrosoft.com",
            "displayName":"Contoso lunch delivery",
        },
        {
            "id":"Fabrikam@contoso.onmicrosoft.com",
            "displayName":"Fabrikam",
        }
    ]
}
```

### Example 2: Use 'query' to get one or more matching Bookings businesses in a tenant

#### Request 2

The following example shows how to use the `query` parameter to get one or more matching Bookings businesses in the tenant.

<!-- {
  "blockType": "request"
}-->
```http
GET https://graph.microsoft.com/v1.0/solutions/bookingBusinesses?query=Adventure
```

#### Response 2

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingBusiness",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/solutions/$metadata#bookingBusinesses",
    "value":[
        {
            "id":"AdventureWorksCycles@M365B960066.onmicrosoft.com",
            "displayName":"Adventure Works Cycles",
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List bookingBusinesses",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
