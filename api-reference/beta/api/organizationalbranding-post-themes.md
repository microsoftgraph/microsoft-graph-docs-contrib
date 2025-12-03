---
title: "Create organizationalBrandingTheme"
description: "Create a new organizationalBrandingTheme object."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create organizationalBrandingTheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbranding-post-themes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbranding-post-themes-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/branding/themes
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.

You can specify the following properties when creating an **organizationalBrandingTheme**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the branding theme. Required.|
|isDefaultTheme|Boolean|Indicates whether the theme is set as the default branding theme for the entire tenant and includes all applications within the tenant. When set to `true`, this theme is automatically applied to any application that does not have a specific theme assigned. This property is useful for enforcing consistent branding across multiple apps without configuring each one individually. Optional.|  



## Response

If successful, this method returns a `201 Created` response code and an [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_organizationalbrandingtheme_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
  "name": "ContosoTheme",
  "isDefaultTheme": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingTheme"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
  "id": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
  "name": "ContosoTheme",
  "isDefaultTheme": true
}
```

