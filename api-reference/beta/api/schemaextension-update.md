---
title: "Update schemaExtension"
description: "Update properties in the definition of the specified schemaExtension."
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: apiPageType
ms.subservice: extensions
ms.date: 07/29/2024
---

# Update schemaExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties in the definition of the specified [schemaExtension](../resources/schemaextension.md). Additive updates to the extension can only be made when the extension is in the `InDevelopment` or `Available` status. This means custom properties or target resource types cannot be removed from the definition, but new custom properties can be added and the description of the extension changed.

The update applies to all the resources that are included in the **targetTypes** property of the extension. These resources are among the [supporting resource types](/graph/extensibility-overview#supported-resources).

For delegated flows, the signed-in user can update a schema extension as long as the **owner** property of the extension is set to the **appId** of an application the signed-in user owns. That application can be the one that initially created the extension, or some other application owned by the signed-in user. 

This criteria for the **owner** property allows a signed-in user to make updates through other applications they don't own, such as Microsoft Graph Explorer. When using Graph Explorer to update a **schemaExtension** resource, include the **owner** property in the PATCH request body.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/schemaextension-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /schemaExtensions/{id}
```

## Optional request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property   | Type    |Description|
|:---------------|:--------|:----------|
|description|String|Description for the schema extension.|
|properties|[extensionSchemaProperty](../resources/extensionschemaproperty.md) collection|The collection of property names and types that make up the schema extension definition. Only additive changes are permitted. |
|status|String|The lifecycle state of the schema extension. The initial state upon creation is `InDevelopment`. Possible states transitions are from `InDevelopment` to `Available` and `Available` to `Deprecated`.|
|targetTypes|String collection|Set of Microsoft Graph types (that can support extensions) that the schema extension can be applied to.  Only additive changes are permitted.|

## Response

If successful, this method returns a `204 No Content` response code. Attempting to run this request from an application which you don't own (and without setting the **owner** property to the **appId** of an application you own) returns a `403 Forbidden` response code.

## Example

### Request

The following example shows a request. You must include the **owner** property if you're running the request from an application which you don't own. In this case, set the **owner** property to the **appId** of an application you own.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_schemaextension_forcourse",
  "sampleKeys": ["exto6x7sfft_courses"]
}-->
```http
PATCH https://graph.microsoft.com/beta/schemaExtensions/exto6x7sfft_courses
Content-type: application/json

{
    "owner": "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        },
        {
            "name": "courseSupervisors",
            "type": "String"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-schemaextension-forcourse-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-schemaextension-forcourse-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-schemaextension-forcourse-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-schemaextension-forcourse-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-schemaextension-forcourse-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-schemaextension-forcourse-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-schemaextension-forcourse-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-schemaextension-forcourse-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update schemaextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


