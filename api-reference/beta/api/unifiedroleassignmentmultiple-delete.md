---
title: "Delete unifiedRoleAssignmentMultiple"
description: "Delete a unifiedRoleAssignmentMultiple object."
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Delete unifiedRoleAssignmentMultiple

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object. This is applicable for a RBAC application that supports multiple principals and scopes. Microsoft Intune and cloud PC are such application.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Supported provider      | Delegated (work or school account)  | Delegated (personal Microsoft account) | Application |
|:-----------------------|:------------------------------------|:---------------------------------------|:------------|
| cloud PC | RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All | Not supported. | RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All |
| intune | DeviceManagementRBAC.ReadWrite.All | Not supported.| DeviceManagementRBAC.ReadWrite.All |

## HTTP request

To delete a unifiedRoleAssignmentMultiple for cloud PC provider
<!-- { "blockType": "ignored" } -->

```http
DELETE /roleManagement/cloudPC/roleAssignments/{id}
```

To delete a unifiedRoleAssignmentMultiple for Intune provider
<!-- { "blockType": "ignored" } -->

```http
DELETE /roleManagement/deviceManagement/roleAssignments/{id}
```

## Request headers

| Name | Description |
|:---- |:----------- |
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Example 1: Delete a unifiedRoleAssignmentMultiple in Intune

### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_unifiedroleassignmentMultiple"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-unifiedroleassignmentmultiple-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-unifiedroleassignmentmultiple-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-unifiedroleassignmentmultiple-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-unifiedroleassignmentmultiple-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Delete a unifiedRoleAssignmentMultiple in cloud PC

### Request

<!-- {
  "blockType": "request",
  "name": "delete_unifiedroleassignmentMultiple_cloudpc"
}-->

```http
DELETE https://graph.microsoft.com/beta/roleManagement/cloudPC/roleAssignments/id
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete unifiedRoleAssignmentMultiple",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


