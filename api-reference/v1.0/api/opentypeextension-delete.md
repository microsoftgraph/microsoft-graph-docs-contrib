---
title: "Delete open extension"
description: "Delete an open extension (openTypeExtension object) from the specified instance of a resource."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: extensions
doc_type: apiPageType
ms.date: 04/17/2024
---

# Delete open extension

Namespace: microsoft.graph

Delete an open extension ([openTypeExtension](../resources/opentypeextension.md) object) from the specified instance of a resource. 

For the list of resources that support open extensions, see the table in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource you're deleting the extension from and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [device](../resources/device.md) | Directory.AccessAsUser.All | Not supported | Device.ReadWrite.All |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [group event](../resources/event.md) | Group.ReadWrite.All | Not supported | Not supported |
| [group post](../resources/post.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite | 
| [organization](../resources/organization.md) | Organization.ReadWrite.All | Not supported | Organization.ReadWrite.All |
| [personal contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |
| [todoTasklist](../resources/todotasklist.md)  | Tasks.ReadWrite | Tasks.ReadWrite | Tasks.ReadWrite.All |
| [user](../resources/user.md) | User.ReadWrite | Not supported | User.ReadWrite.All |

## HTTP request
In the request, identify the resource instance, use the **extensions** 
navigation property of that instance to identify the extension, and do a `DELETE` on that extension instance.

<!-- { "blockType": "ignored" } -->
```http
DELETE /devices/{Id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/events/{id}/extensions/{extensionId}
DELETE /groups/{id}/extensions/{extensionId}
DELETE /groups/{id}/events/{id}/extensions/{extensionId}
DELETE /groups/{id}/threads/{id}/posts/{id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/messages/{id}/extensions/{extensionId}
DELETE /organization/{Id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/contacts/{id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/extensions/{extensionId}
DELETE /me/todo/lists/{todoTaskListId}/extensions/{extensionId}
DELETE /me/todo/lists/{todoTaskListId}/tasks/{taskId}/extensions/{extensionId}
DELETE /users/{userId}/todo/lists/{todoTaskListId}/extensions/{extensionId}
DELETE /users/{userId}/todo/lists/{todoTaskListId}/tasks/{taskId}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/extensions/{extensionId}
DELETE /me/extensions/{extensionId}
```

>**Note:** The previous syntax shows some common ways to identify a resource instance, in order to delete an extension from it. 
All other syntax that allows you to identify these resource instances supports deleting open extensions from them in a similar way.

## Path parameters
|Parameter|Type|Description|
|:-----|:-----|:-----|
|extensionId|String|This can be an extension name that is a unique text identifier for the extension, or a fully qualified name which concatenates the extension type and unique text identifier. The fully qualified name is returned in the **id** property when you create the extension. Required.|
|id|String|A unique identifier for an instance in the corresponding collection. Required.|

## Request headers
| Name       | Value |
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Example
### Request
The first example references an extension by its name and deletes the extension in the specified message.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["Com.Contoso.Referral", "AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="],
  "name": "delete_opentypeextension"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===/extensions/Com.Contoso.Referral
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-opentypeextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-opentypeextension-cli-snippets.md)]
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

The second example deletes an extension in the specified group event.

<!-- { "blockType": "ignored" } -->
```http
DELETE https://graph.microsoft.com/v1.0/groups/f5480dfd-7d77-4d0b-ba2e-3391953cc74a/events/AAMkADVlN17IsAAA=/extensions/Com.Contoso.Referral
```

 

### Response
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
<!-- {
  "type": "#page.annotation",
  "description": "Delete opentypeextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
