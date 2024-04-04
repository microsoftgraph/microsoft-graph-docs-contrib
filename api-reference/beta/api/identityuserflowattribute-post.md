---
title: "Create identityUserFlowAttribute"
description: "Create a new custom identityUserFlowAttribute object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "nanguil"
ms.subservice: "entra-sign-in"
ms.topic: reference
---

# Create identityUserFlowAttribute

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new custom [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityuserflowattribute_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityuserflowattribute-post-permissions.md)]

[!INCLUDE [rbac-user-flows-attributes-apis](../includes/rbac-for-apis/rbac-user-flows-attributes-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identity/userFlowAttributes
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of [identityUserFlowAttribute](../resources/identityuserflowattribute.md).

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the user flow attribute. This is a read-only attribute that is automatically created.|
|displayName|String|The display name of the user flow attribute.|
|description|String|The description of the user flow attribute. It's shown to the user at the time of sign-up.|
|userFlowAttributeType|String|The type of the user flow attribute. This is a read-only attribute that is automatically set. Depending on the type of attribute, the values for this property are `builtIn` or `custom`.|
|dataType|String|The data type of the user flow attribute. This can't be modified once the custom user flow attribute is created. The supported values for **dataType** are:<br/><ul><li>`string` : denotes that the dataType for the identityUserFlowAttribute is a string. </li><li>`boolean` : denotes that the dataType for the identityUserFlowAttribute is a boolean.</li><li>`int64` : denotes that the dataType for the identityUserFlowAttribute is an integer.</li></ul>|

## Response

If successful, this method returns a `201 Created` response code and [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object in the response body. If unsuccessful, a `4xx` error is returned with specific details.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_userFlowAttribute_from_userFlowAttributes"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/userFlowAttributes
Content-type: application/json

{
  "displayName": "Hobby",
  "description": "Your hobby",
  "dataType": "string"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-userflowattribute-from-userflowattributes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-userflowattribute-from-userflowattributes-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-userflowattribute-from-userflowattributes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-userflowattribute-from-userflowattributes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-userflowattribute-from-userflowattributes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-userflowattribute-from-userflowattributes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-userflowattribute-from-userflowattributes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-userflowattribute-from-userflowattributes-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityUserFlowAttribute"
} -->

```http
HTTP/1.1 201 Created
Location: "/identity/userFlowAttributes('extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby')"
Content-type: application/json

{
    "id": "extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby",
    "displayName": "Hobby",
    "description": "Your hobby",
    "userFlowAttributeType": "custom",
    "dataType": "string"
}
```
