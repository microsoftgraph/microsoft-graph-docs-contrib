---
title: "Update groupSetting"
description: "Update the properties of a specific group setting object."
author: "psaffaie"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: apiPageType
---

# Update groupSetting

Namespace: microsoft.graph

Update the properties of a [groupSetting](../resources/groupsetting.md) object for tenant-wide [group](../resources/group.md) settings or a specific group setting.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For all settings except the Consent Policy Settings object

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Directory.ReadWrite.All |

### For the Consent Policy Settings object

The following permissions are required to update the "Consent Policy Settings" **directorySetting** object.

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Policy.ReadWrite.Authorization    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Policy.ReadWrite.Authorization |

## HTTP request

<!-- { "blockType": "ignored" } -->

Update a tenant-wide setting.

```http
PATCH /groupSettings/{groupSettingId}
```

<!-- { "blockType": "ignored" } -->

Update a group-specific setting.

```http
PATCH /groups/{groupId}/settings/{groupSettingId}
```

## Request headers

| Name          | Description        |
| :------------ | :----------------- |
| Authorization | {token}. Required. |
| Content-Type  | application/json   |

## Request body

In the request body, supply the values for relevant fields that should be updated.

| Property | Type                                                    | Description                                                                                                      |
| :------- | :------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------- |
| values   | [settingValue](../resources/settingvalue.md) collection | The updated set of values. You must include the entire collection set. You cannot update a single set of values. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a tenant-wide group setting

In this example, `84af2ca5-c274-41bf-86e4-6e374ec4def6` is the identifier of the tenant-wide **groupSetting** object.

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_tenant_groupsetting"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/groupSettings/84af2ca5-c274-41bf-86e4-6e374ec4def6
Content-type: application/json

{
    "values": [
        {
            "name": "AllowToAddGuests",
            "value": "false"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-tenant-groupsetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-tenant-groupsetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-tenant-groupsetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-tenant-groupsetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-tenant-groupsetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Update a specific group setting

In this example, `0167b5af-f3d1-4910-82d2-398747fa381c` is the identifier of the group, and `fa6df613-159b-4f94-add2-7093f961900b` is the identifier of the groupSetting object.

#### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_groupsetting"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/groups/0167b5af-f3d1-4910-82d2-398747fa381c/settings/fa6df613-159b-4f94-add2-7093f961900b
Content-type: application/json

{
  "values": [
    {
      "name": "AllowToAddGuests",
      "value": "true"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-groupsetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-groupsetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-groupsetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-groupsetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-groupsetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
  "description": "Update groupSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
