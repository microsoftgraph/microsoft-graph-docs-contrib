---
title: "Remove profileCardProperty"
description: "Remove a profileCardProperty object and remove all customizations from a profile card."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Remove profileCardProperty

Namespace: microsoft.graph

Remove the [profileCardProperty](../resources/profilecardproperty.md) object specified by its **directoryPropertyName** from the organization's profile card, and remove any localized customizations for that property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PeopleSettings.ReadWrite.All                |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /admin/people/profileCardProperties/{id}
```

## Request headers

| Name          | Description    |
|:--------------|:---------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following example shows how to remove the attribute named `Fax` from the profile card for the organization.

<!-- {
  "blockType": "request",
  "name": "remove_profilecardproperty",
  "sampleKeys": ["fax"]
}-->

```http
DELETE https://graph.microsoft.com/v1.0/admin/people/profileCardProperties/fax
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
