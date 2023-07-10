---
title: "Update bookingbusiness"
description: "Update the properties of a bookingBusiness object."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: apiPageType
---

# Update bookingbusiness

Namespace: microsoft.graph

Update the properties of a [bookingBusiness](../resources/bookingbusiness.md) object.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /solutions/bookingBusinesses/{id}
```
## Request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|[physicalAddress](../resources/physicaladdress.md)|The street address of the business. The attribute **type** of physicalAddress is not supported in v1.0. Internally we map the addresses to the type `others`.|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|The hours of operation for the business.|
|businessType|String|The type of business.|
|defaultCurrencyIso|String|The code for the currency that the business operates in on Microsoft Bookings.|
|displayName|String|A name for the business that interfaces with customers.|
|email|String|The email address for the business.|
|phone|String|The telephone number for the business.|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|Specifies how bookings can be created for this business.|
|webSiteUrl|String|The URL of the business web site.|

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
## Example
### Request
The following example updates the business email address and scheduling policy, to change the business default booking time slot to an hour, and advance booking up to 30 days.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name" : "bookingbusinesupdate",
  "sampleKeys": ["fabrikam@contoso.onmicrosoft.com"]
}-->
```http
PATCH https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/fabrikam@contoso.onmicrosoft.com
Content-type: application/json

{
  "email": "admin@fabrikam.com",
  "schedulingPolicy": {
      "timeSlotInterval": "PT60M",
      "minimumLeadTime": "P1D",
      "maximumAdvance": "P30D",
      "sendConfirmationsToOwner": true,
      "allowStaffSelection": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bookingbusinesupdate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/bookingbusinesupdate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/bookingbusinesupdate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bookingbusinesupdate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bookingbusinesupdate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/bookingbusinesupdate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/bookingbusinesupdate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/bookingbusinesupdate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update bookingbusiness",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


