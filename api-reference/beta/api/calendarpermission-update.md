---
title: "Update calendarpermission"
description: "Update the properties of calendarpermission object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update calendarpermission

Update the properties of calendarpermission object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /users/{id}/calendar/calendarPermissions/{id}
PATCH /groups/{id}/calendar/calendarPermissions/{id}
PATCH /users/{id}/events/{id}/calendar/calendarPermissions/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedRoles|string collection| Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|
|emailAddress|emailAddress||
|isInsideOrganization|Boolean||
|isRemovable|Boolean||
|role|string| Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [calendarPermission](../resources/calendarpermission.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_calendarpermission"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/users/{id}/calendar/calendarPermissions/{id}
Content-type: application/json

{
  "emailAddress": {
    "name": "name-value",
    "address": "address-value"
  },
  "isRemovable": true,
  "isInsideOrganization": true,
  "role": "role-value",
  "allowedRoles": [
    "allowedRoles-value"
  ]
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "emailAddress": {
    "name": "name-value",
    "address": "address-value"
  },
  "isRemovable": true,
  "isInsideOrganization": true,
  "role": "role-value",
  "allowedRoles": [
    "allowedRoles-value"
  ],
  "id": "id-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update calendarpermission",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->