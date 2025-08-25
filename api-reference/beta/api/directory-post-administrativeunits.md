---
title: "Create administrativeUnit"
description: "Create a new administrativeUnit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/30/2024
---

# Create administrativeUnit

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [administrativeUnit](../resources/administrativeunit.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "directory_post_administrativeunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-post-administrativeunits-permissions.md)]

[!INCLUDE [rbac-admin-units-apis-write](../includes/rbac-for-apis/rbac-admin-units-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /administrativeUnits
POST /directory/administrativeUnits
```

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of an [administrativeUnit](../resources/administrativeunit.md) object.

You can specify the following properties when you create an **administrativeUnit**.

| Property   | Type |Description|
|:---------------|:--------|:----------|
| description | String | Description for the administrative unit. Optional. |
| displayName | String | Display name for the administrative unit. Required. |
| isMemberManagementRestricted | Boolean | `true` if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. If not set, the default value is `null` and the default behavior is false. Use this property to define administrative units with roles that don't inherit from tenant-level administrators, and management of individual member objects is limited to administrators scoped to a restricted management administrative unit. This property is immutable and can't be changed later. Optional. |
| membershipRule | String | The dynamic membership rule for the administrative unit. For more information about the rules you can use for dynamic administrative units and dynamic groups, see [Manage rules for dynamic membership groups in Microsoft Entra ID](/entra/identity/users/groups-dynamic-membership). Optional.|
| membershipRuleProcessingState | String | Controls whether the dynamic membership rule is actively processed. Set to `On` to activate the dynamic membership rule, or `Paused` to stop updating membership dynamically. Optional. |
| membershipType | String | Indicates the membership type for the administrative unit. The possible values are: `dynamic`, `assigned`. If not set, the default value is `null` and the default behavior is assigned. Optional. |
| visibility | String | The visibility of the administrative unit. If not set, the default value is `null` and the default behavior is public. It can be set to `HiddenMembership` to hide the membership from nonmembers. Optional. |

The **administrativeUnit** resource supports [extensions](/graph/extensibility-overview), which allows you to use the `POST` operation to add custom properties with your own data when you create the administrative unit.

## Response

If successful, this method returns a `201 Created` response code and an [administrativeUnit](../resources/administrativeunit.md) object in the response body.

## Examples

### Example 1: Create an administrative unit

The following example creates a new administrative unit with a dynamic membership rule to include all users whose country is United States.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_administrativeunit_from_administrativeunits"
}-->
```http
POST https://graph.microsoft.com/beta/administrativeUnits
Content-type: application/json

{
    "displayName": "Seattle District Technical Schools",
    "description": "Seattle district technical schools administration",
    "membershipType": "Dynamic",
    "membershipRule": "(user.country -eq \"United States\")",
    "membershipRuleProcessingState": "On"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-administrativeunit-from-administrativeunits-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-administrativeunit-from-administrativeunits-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-administrativeunit-from-administrativeunits-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-administrativeunit-from-administrativeunits-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-administrativeunit-from-administrativeunits-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-administrativeunit-from-administrativeunits-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-administrativeunit-from-administrativeunits-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.administrativeUnit"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#administrativeUnits/$entity",
    "id": "49eb93f2-a5a2-4567-ad66-76a3ebd01d84",
    "deletedDateTime": null,
    "displayName": "Seattle District Technical Schools",
    "description": "Seattle district technical schools administration",
    "membershipRule": "(user.country -eq \"United States\")",
    "membershipType": "Dynamic",
    "membershipRuleProcessingState": "On"
}
```

### Example 2: Create a restricted management administrative unit

The following example shows hot to create a new restricted management administrative unit. The **isMemberManagementRestricted** property is immutable and can't be changed later.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_administrativeunit_restricted"
}-->
```http
POST https://graph.microsoft.com/beta/administrativeUnits
Content-type: application/json

{
    "displayName": "Executive Division",
    "description": "Executive division administration",
    "isMemberManagementRestricted": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-administrativeunit-restricted-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-administrativeunit-restricted-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-administrativeunit-restricted-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-administrativeunit-restricted-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-administrativeunit-restricted-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-administrativeunit-restricted-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-administrativeunit-restricted-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.administrativeUnit"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#administrativeUnits/$entity",
    "id": "2sd35b05-ae71-48ab-9e7d-4r41a28te37d",
    "deletedDateTime": null,
    "displayName": "Executive Division",
    "description": "Executive division administration",
    "isMemberManagementRestricted": true,
    "visibility": null
}
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
  "description": "Create administrativeUnit",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
