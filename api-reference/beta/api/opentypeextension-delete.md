---
title: "Delete openTypeExtension"
description: "Delete an open extension (openTypeExtension object) from the specified instance of a resource."
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: apiPageType
ms.subservice: extensions
ms.date: 04/17/2024
---

# Delete openTypeExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Delete an open extension ([openTypeExtension](../resources/opentypeextension.md) object) from the specified instance of a resource. 

For the list of resources that support open extensions, see the table in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource you're deleting the extension from and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [device](../resources/device.md) | Directory.AccessAsUser.All | Not supported. | Device.ReadWrite.All |
| [driveItem](../resources/driveitem.md) | Files.ReadWrite | Files.ReadWrite | Not supported. |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported. | Group.ReadWrite.All |
| [group event](../resources/event.md) | Group.ReadWrite.All | Not supported. | Not supported |
| [group post](../resources/post.md) | Group.ReadWrite.All | Not supported. | Group.ReadWrite.All |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite | 
| [organization](../resources/organization.md) | Organization.ReadWrite.All | Not supported. | Organization.ReadWrite.All |
| [personal contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [site](../resources/site.md) | Sites.ReadWrite.All | Not supported. | Not supported. |
| [todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |
| [todoTasklist](../resources/todotasklist.md)  | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |
| [user](../resources/user.md) | User.ReadWrite | Not supported. | User.ReadWrite.All |
| [baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |
| [baseTasklist](../resources/basetasklist.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |

## HTTP request

In the request, identify the resource instance, use the **extensions** 
navigation property of that instance to identify the extension, and do a `DELETE` on that extension instance.

<!-- { "blockType": "ignored" } -->
```http
DELETE /administrativeUnits/{administrativeUnitId}/extensions/{extensionId}
DELETE /devices/{deviceId}/extensions/{extensionId}
DELETE /users/{userId|userPrincipalName}/events/{eventId}/extensions/{extensionId}
DELETE /groups/{groupId}/extensions/{extensionId}
DELETE /groups/{groupId}/events/{eventId}/extensions/{extensionId}
DELETE /groups/{groupId}/threads/{threadIid}/posts/{postId}/extensions/{extensionId}
DELETE /users/{userIid|userPrincipalName}/messages/{messageId}/extensions/{extensionId}
DELETE /organization/{organizationId}/extensions/{extensionId}
DELETE /users/{userId|userPrincipalName}/contacts/{contactId}/extensions/{extensionId}
DELETE /users/{userId|userPrincipalName}/extensions/{extensionId}
DELETE /users/me/todo/lists/{listId}/extensions/{extensionId}
DELETE /users/me/todo/lists/{listId}/tasks/{taskId}/extensions/{extensionId}
DELETE /users/me/tasks/lists/{listId}/extensions/{extensionId}
DELETE /users/me/tasks/lists/{listId}/tasks/{taskId}/extensions/{extensionId}
DELETE /drive/items/{itemId}/extensions/{extensionId}
DELETE /sites/{site-id}/extensions/{extensionId}
```

>**Note:** The previous syntax shows some common ways to identify a resource instance, in order to delete an extension from it. 
All other syntax that allows you to identify these resource instances supports deleting open extensions from them in a similar way.

## Request headers
| Name       | Value |
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request 1
The first example references an extension by its name and deletes the extension in the specified message.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_opentypeextension",
  "sampleKeys": ["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===", "Com.Contoso.Referral"]
}-->
```http
DELETE https://graph.microsoft.com/beta/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===/extensions/Com.Contoso.Referral/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-opentypeextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-opentypeextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-opentypeextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-opentypeextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-opentypeextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-opentypeextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-opentypeextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 1
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

****

### Request 2

The second example deletes an extension in the specified group event.

<!-- { "blockType": "ignored" } -->
```http
DELETE https://graph.microsoft.com/beta/groups/f5480dfd-7d77-4d0b-ba2e-3391953cc74a/events/AAMkADVlN17IsAAA=/extensions/Com.Contoso.Referral
```

### Response 2
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

****

### Request 3

The following example shows how to delete an extension by its name from the specified **driveItem**.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_opentypeextension_3",
  "sampleKeys": ["01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ", "Com.Contoso.Referral"]
}-->
```http
DELETE https://graph.microsoft.com/beta/drive/items/01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ/extensions/Com.Contoso.Referral
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-opentypeextension-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-opentypeextension-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-opentypeextension-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-opentypeextension-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-opentypeextension-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-opentypeextension-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-opentypeextension-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 3
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

****

### Request 4

The following example shows how to delete an extension by its name from the specified **site**.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_opentypeextension_4",
  "sampleKeys": ["8f52f9ad-4f4f-4739-b682-7c0283207937", "Com.Contoso.Referral"]
}-->
```http
DELETE https://graph.microsoft.com/beta/sites/8f52f9ad-4f4f-4739-b682-7c0283207937/extensions/Com.Contoso.Referral
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-opentypeextension-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-opentypeextension-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-opentypeextension-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-opentypeextension-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-opentypeextension-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-opentypeextension-4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 4
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete opentypeextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
