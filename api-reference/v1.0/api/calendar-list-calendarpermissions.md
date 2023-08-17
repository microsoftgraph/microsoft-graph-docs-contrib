---
title: "List calendarPermissions"
description: "Get a collection of calendarPermission resources that describe the identity and roles of users with whom the specified calendar has been shared or delegated. "
ms.localizationpriority: medium
author: "iamgirishck"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# List calendarPermissions

Namespace: microsoft.graph

Get a collection of [calendarPermission](../resources/calendarpermission.md) resources that describe the identity and roles of users with whom the specified calendar has been shared or delegated. Here, the calendar can be a user calendar or group calendar.

## Permissions

Depending on the type of calendar that the event is in and the permission type (delegated or application) requested, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Calendar | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| user calendar | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite |
| group calendar | Group.Read.All, Group.ReadWrite.All | Not supported. | Not supported. |

## HTTP request

List the specified permissions of a user's primary calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/calendar/calendarPermissions
```

List the specified permissions of a group calendar:
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{id}/calendar/calendarPermissions
```

List the specified permissions of the user calendar that contains the identified event:
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/events/{id}/calendar/calendarPermissions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of **calendarPermission** objects in the response body.

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "calendar_list_calendarpermissions_get"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/{id}/calendar/calendarPermissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/calendar-list-calendarpermissions-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/calendar-list-calendarpermissions-get-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/calendar-list-calendarpermissions-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/calendar-list-calendarpermissions-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/calendar-list-calendarpermissions-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/calendar-list-calendarpermissions-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/calendar-list-calendarpermissions-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/calendar-list-calendarpermissions-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('458d4c95-124e-49da-ba9d-1dd0387e682e')/calendar/calendarPermissions",
    "value": [
        {
            "id": "RXhjaGFuZ2VQdWJsaXNoZWRVc2VyLmFkbWluQE0zNjVCODc3NzE5Lm9ubWljcm9zb2Z0LmNvbQ==",
            "isRemovable": true,
            "isInsideOrganization": false,
            "role": "read",
            "allowedRoles": [
                "freeBusyRead",
                "limitedRead",
                "read"
            ],
            "emailAddress": {
                "name": "admin@M365B877719.onmicrosoft.com",
                "address": "admin@M365B877719.onmicrosoft.com"
            }
        },
        {
            "id": "RGVmYXVsdA==",
            "isRemovable": false,
            "isInsideOrganization": true,
            "role": "freeBusyRead",
            "allowedRoles": [
                "none",
                "freeBusyRead",
                "limitedRead",
                "read",
                "write"
            ],
            "emailAddress": {
                "name": "My Organization"
            }
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get calendarPermission",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
