---
title: "Update customAppScope"
description: "Update an existing customAppScope object."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Update customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [customAppScope](../resources/customappscope.md) object of an RBAC provider.

## Permissions

Depending on the RBAC provider and the permission type (delegated or application) that is needed, choose from the following table the least privileged permission required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

### For an Exchange Online provider

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  RoleManagement.ReadWrite.Exchange   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

To update an existing customAppScope for the Exchange Online provider:
<!-- { "blockType": "ignored" } -->

```http
PATCH /roleManagement/exchange/customAppScopes/{id}
```

## Request headers

| Name | Description |
|:---- |:----------- |
| Authorization | Bearer {token}. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Example 1: Update an existing custom app scope object for Exchange Online Provider

#### Request

The following is an example of the request.


```http
PATCH https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes/d101e64d-4684-4970-ba7b-735b6b27628f
Content-type: application/json

{
    "customAttributes": {
        "RecipientFilter": "City -eq 'Seattle'"
    }
}
```

#### Response

The following is an example of the response.

```http
HTTP/1.1 204 No Content
```