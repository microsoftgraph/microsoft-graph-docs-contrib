---
title: "Create administrativeUnit"
description: "Use this API to create a new administrativeUnit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Create administrativeUnit

Namespace: microsoft.graph

Use this API to create a new [administrativeUnit](../resources/administrativeunit.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "directory_post_administrativeunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-post-administrativeunits-permissions.md)]

In delegated scenarios, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the `microsoft.directory/administrativeUnits/allProperties/allTasks` role permission. *Privileged Role Administrator* is the least privileged role for this operation.

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

You can specify the following properties when creating an **administrativeUnit**.

| Property   | Type |Description|
|:---------------|:--------|:----------|
| description | String | Description for the administrative unit. Optional. |
| displayName | String | Display name for the administrative unit. Required. |
| membershipRule | String | Dynamic membership rule for the administrative unit. For more about the rules that you can use for dynamic administrative units and dynamic groups, see [Using attributes to create advanced rules](https://azure.microsoft.com/documentation/articles/active-directory-accessmanagement-groups-with-advanced-rules/). Optional. |
| membershipRuleProcessingState | String | Used to control whether the dynamic membership rule is actively processed. Set to `On` when you want the dynamic membership rule to be active and `Paused` if you want to stop updating membership dynamically. Optional. |
| membershipType | String | Membership type for the administrative unit. Can be `dynamic` or `assigned`. Optional. |
| visibility |String | Visibility for the administrative unit. If not set, then the default is `public`. Can be set to `HiddenMembership`, which hides the membership from non-members. Optional. |

Because the **administrativeUnit** resource supports [extensions](/graph/extensibility-overview), you can use the `POST` operation and add custom properties with your own data to the administrative unit while creating it.

## Response

If successful, this method returns a `201 Created` response code and an [administrativeUnit](../resources/administrativeunit.md) object in the response body.

## Example

The following example creates a new administrative unit with a dynamic membership rule to include all users whose country is United States.

### Request

<!-- {
  "blockType": "request",
  "name": "create_administrativeunit_from_administrativeunits"
}-->
```http
POST https://graph.microsoft.com/v1.0/administrativeUnits
Content-type: application/json

{
    "displayName": "Seattle District Technical Schools",
    "description": "Seattle district technical schools administration",
    "membershipType": "Dynamic",
    "membershipRule": "(user.country -eq \"United States\")",
    "membershipRuleProcessingState": "On"
}
```

### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#administrativeUnits/$entity",
    "id": "49eb93f2-a5a2-4567-ad66-76a3ebd01d84",
    "deletedDateTime": null,
    "displayName": "Seattle District Technical Schools",
    "description": "Seattle district technical schools administration",
    "membershipRule": "(user.country -eq \"United States\")",
    "membershipType": "Dynamic",
    "membershipRuleProcessingState": "On"
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
