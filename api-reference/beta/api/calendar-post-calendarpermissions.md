---
title: "Create calendarPermissions"
description: "Create the calendarpermissions object."
localization_priority: Normal
author: "sochowdh"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Create calendarPermissions

Namespace: microsoft.graph

Create a calendarPermissions resource (../resources/calendarpermissions.md) to specify the identity and role of the user with whom the specified calendar is being shared or delegated.

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
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [calendarPermissions](../resources/calendarpermission.md) object.

## Response

If successful, this method returns a `200 OK` response code and a calendarPermissions object[calendarPermissions](../resources/calendarpermission.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- { 
  "blockType": "request",
  "name": "create_calendarpermissions"
}-->

```http
POST https://graph.microsoft.com/beta/users/{id}/calendar/calendarPermissions
```

### Response

The following is an example of the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('458d4c95-124e-49da-ba9d-1dd0387e682e')/calendar/calendarPermissions",
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
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed99
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create calendarPermissions",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
  } -->