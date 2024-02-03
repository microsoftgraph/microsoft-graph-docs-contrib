---
title: "Create profileCardProperty"
description: "Create a new profileCardProperty resource for an organization."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create profileCardProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. The new property is identified by its **directoryPropertyName** property.

For more information about how to add properties to the profile card for an organization, see [Add or remove custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard).

[!INCLUDE [profilecardproperty-add-remove-note](../../../includes/profilecardproperty-add-remove-note.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_post_profilecardproperties" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-profilecardproperties-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /admin/people/profileCardProperties
```

> **Note:** The `/organization/{organizationId}/settings` path is deprecated. Going forward, use the `/admin/people` path.

## Request headers

| Name          |Description                  |
|:--------------|:----------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

In the request body, supply a JSON representation of a [profileCardProperty](../resources/profilecardproperty.md) object.

You can specify the following properties when you create a **profileCardProperty** for an organization.

|Property|Type|Description|
|:---|:---|:---|
|annotations|[profileCardAnnotation](../resources/profilecardannotation.md) collection|Any alternative or localized labels that an administrator has chosen to specify.|
|directoryPropertyName|String|The name of the directory property that is intended to surface on the profile card.|

## Response

If successful, this method returns a `201 Created` response code and a new [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_profilecardproperty"
}-->
```http
POST https://graph.microsoft.com/beta/admin/people/profileCardProperties
Content-type: application/json; charset=utf-8

{
  "directoryPropertyName": "CustomAttribute1",
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "ru-RU",
          "displayName": "центр затрат"
        }
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-profilecardproperty-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-profilecardproperty-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-profilecardproperty-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-profilecardproperty-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-profilecardproperty-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-profilecardproperty-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-profilecardproperty-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-profilecardproperty-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileCardProperty"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json; charset=utf-8

{
  "directoryPropertyName": "CustomAttribute1",
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "ru-RU",
          "displayName": "центр затрат"
        }
      ]
    }
  ]
}
```
