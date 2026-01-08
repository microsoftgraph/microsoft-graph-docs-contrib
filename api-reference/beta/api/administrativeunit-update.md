---
title: "Update administrativeUnit"
description: "Update the properties of an administrativeUnit object."
author: "DougKirschner"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/30/2024
---

# Update administrativeUnit

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [administrativeUnit](../resources/administrativeunit.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "administrativeunit_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/administrativeunit-update-permissions.md)]

[!INCLUDE [rbac-admin-units-apis-write](../includes/rbac-for-apis/rbac-admin-units-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /administrativeUnits/{id}
PATCH /directory/administrativeUnits/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property   | Type |Description|
|:---------------|:--------|:----------|
| description | String | Description for the administrative unit.|
| displayName | String | Display name for the administrative unit. |
| membershipRule | String | The dynamic membership rule for the administrative unit. For more information about the rules you can use for dynamic administrative units and dynamic groups, see [Manage rules for dynamic membership groups in Microsoft Entra ID](/entra/identity/users/groups-dynamic-membership).|
| membershipRuleProcessingState | String | Controls whether the dynamic membership rule is actively processed. Set to `On` to activate the dynamic membership rule, or `Paused` to stop updating membership dynamically. |
| membershipType | String | Indicates the membership type for the administrative unit. The possible values are: `dynamic`, `assigned`. If not set, the default value is `null` and the default behavior is assigned. |
| visibility | String | The visibility of the administrative unit. If not set, the default value is `null` and the default behavior is public. It can be set to `HiddenMembership` to hide the membership from nonmembers. |

The **administrativeUnit** resource supports [extensions](/graph/extensibility-overview), which allows you to use the `PATCH` operation to add, update, or delete your own app-specific data in custom properties of an extension in an existing **administrativeUnit** instance.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request that sets a dynamic membership rule on an existing administrative unit to include all users whose country is the United States. It also updates the display name of the administrative unit.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_administrativeunit"
}-->
```http
PATCH https://graph.microsoft.com/beta/administrativeUnits/4d7ea995-bc0f-45c0-8c3e-132e93bf95f8
Content-type: application/json

{
    "displayName": "Executive Division",
    "membershipType": "Dynamic",
    "membershipRule": "(user.country -eq \"United States\")",
    "membershipRuleProcessingState": "On"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-administrativeunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-administrativeunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-administrativeunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-administrativeunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-administrativeunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-administrativeunit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-administrativeunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
<!--
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update administrativeunit",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
