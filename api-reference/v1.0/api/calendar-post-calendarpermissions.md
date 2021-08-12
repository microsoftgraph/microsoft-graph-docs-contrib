---
title: "Create calendarPermissions"
description: "Create the calendarpermission object."
localization_priority: Normal
author: "harini84"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# Create calendarPermissions

Namespace: microsoft.graph

Create a [calendarPermission](../resources/calendarpermission.md) resource to specify the identity and role of the user with whom the specified calendar is being shared or delegated.

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

In the request body, supply a JSON representation of a [calendarPermission](../resources/calendarpermission.md) object.

## Response

If successful, this method returns a `200 OK` response code and a collection of calendarPermission objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- { 
  "blockType": "request",
  "sampleKeys": ["458d4c95-124e-49da-ba9d-1dd0387e682e"],
  "name": "create_calendarpermissions"
}-->

```http
POST https://graph.microsoft.com/v1.0/users/458d4c95-124e-49da-ba9d-1dd0387e682e?/calendar/calendarPermissions

{
    "allowedRoles": [
        "read"
    ],
    "emailAddress": {
        "name": "Samantha Booth",
        "address": "samanthab@adatum.onmicrosoft.com"
    },
    "id": "AAMkADBmYTFkMzUyLTgxODQtNDA0YS05YzdlLWRkYjJlY2U4NTljZgBGAAAAAACdCqnIfBTiS7nPzH--j6RvBwDvenXPVP3FQpzwdU3ADBy_AAAAAAEGAADvenXPVP3FQpzwdU3ADBy_AAAB7bC1AAA=",
    "isInsideOrganization": true,
    "isRemovable": true,
    "role": "read"
}

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('458d4c95-124e-49da-ba9d-1dd0387e682e')/calendar/calendarPermissions/$entity",
    "id": "RXhjaGFuZ2VQdWJsaXNoZWRVc2VyLnNhbWFudGhhYkBhZGF0dW0ub25taWNyb3NvZnQuY29t",
    "isRemovable": true,
    "isInsideOrganization": false,
    "role": "read",
    "allowedRoles": [
        "freeBusyRead",
        "limitedRead",
        "read"
    ],
    "emailAddress": {
        "name": "Samantha Booth",
        "address": "samanthab@adatum.onmicrosoft.com"
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
