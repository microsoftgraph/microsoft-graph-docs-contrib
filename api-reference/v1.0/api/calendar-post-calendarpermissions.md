---
title: "Create calendarPermission"
description: "Create the calendarpermission object."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# Create calendarPermission

Namespace: microsoft.graph

Create a [calendarPermission](../resources/calendarpermission.md) resource to specify the identity and role of the user with whom the specified calendar is being shared or delegated.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the type of calendar that the event is in and the permission type (delegated or application) requested, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Calendar | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| user calendar | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite | Calendars.Read, Calendars.ReadWrite |
| group calendar | Group.Read.All, Group.ReadWrite.All | Not supported. | Not supported. |

## HTTP request

Create the specified permissions of a user's primary calendar:
<!-- {
  "blockType": "ignored",
}-->

```http
POST /users/{id}/calendar/calendarPermissions
```

Create the specified permissions of a group calendar:
<!-- {
  "blockType": "ignored",
}-->
```http
POST /groups/{id}/calendar/calendarPermissions
```

Create the specified permissions of the user calendar that contains the identified event:
<!-- {
  "blockType": "ignored",
}-->
```http
POST /users/{id}/events/{id}/calendar/calendarPermissions
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of a [calendarPermission](../resources/calendarpermission.md) object.

## Response

If successful, this method returns a `200 OK` response code and a collection of calendarPermission objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_calendarpermissions"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/calendar/calendarPermissions

{
    "emailAddress": {
        "name": "Samantha Booth",
        "address": "samanthab@contoso.com"
    },
    "isInsideOrganization": true,
    "isRemovable": true,
    "role": "read"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-calendarpermissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-calendarpermissions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-calendarpermissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-calendarpermissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-calendarpermissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-calendarpermissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-calendarpermissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-calendarpermissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('458d4c95-124e-49da-ba9d-1dd0387e682e')/calendar/calendarPermissions/$entity",
    "id": "RXhjaGFuZ2VQdWJsaXNoZWRVc2VyLnNhbWFudGhhYkBhZGF0dW0ub25taWNyb3NvZnQuY29t",
    "isRemovable": true,
    "isInsideOrganization": true,
    "role": "read",
    "allowedRoles": [
        "freeBusyRead",
        "limitedRead",
        "read"
    ],
    "emailAddress": {
        "name": "Samantha Booth",
        "address": "samanthab@contoso.com"
    }
}
```
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed99
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create calendarPermission",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  } -->
