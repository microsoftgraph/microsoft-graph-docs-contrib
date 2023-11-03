---
title: "Delete profileCardProperty"
description: "Delete a profileCardProperty object and remove all customizations from a profile card."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Delete profileCardProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the [profileCardProperty](../resources/profilecardproperty.md) object specified by its **directoryPropertyName** from the organization's profile card, and remove any localized customizations for that property.

[!INCLUDE [profilecardproperty-add-remove-note](../../../includes/profilecardproperty-add-remove-note.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "profilecardproperty_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/profilecardproperty-delete-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /admin/people/profileCardProperties/{id}
```

> **Note:** The `/organization/{organizationId}/settings` path is deprecated. Going forward, use the `/admin/people` path.

## Request headers

| Name          | Description    |
|:--------------|:---------------|
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows how to delete the attribute named `Fax` from the profile card for the organization.

<!-- {
  "blockType": "request",
  "name": "remove_profilecardproperty",
  "sampleKeys": ["fax"]
}-->

```http
DELETE https://graph.microsoft.com/beta/admin/people/profileCardProperties/fax
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
