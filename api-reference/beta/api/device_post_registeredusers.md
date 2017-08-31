# Create registeredUser

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Add a registered user for the device.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /devices/{id}/registeredUsers/$ref
```

## Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of [user](../resources/user.md) to be added.

## Response

If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example

##### Request

In the request body, supply a reference to the [user](../resources/user.md) to be added.

<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_device"
}-->

```http
POST https://graph.microsoft.com/beta/devices/{id}/registeredUsers/$ref
Content-type: application/json
Content-length: 97

{
  "@odata.id":"https://graph.microsoft.com/beta/users/af9f55cc-78ad-4476-be6e-f9bb86a3dddd"
}
```

##### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create registeredUser",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->