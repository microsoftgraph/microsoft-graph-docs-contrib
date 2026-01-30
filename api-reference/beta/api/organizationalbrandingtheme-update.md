---
title: "Update organizationalBrandingTheme"
description: "Update the properties of an organizationalBrandingTheme object."
author: "AlexanderMars"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update organizationalBrandingTheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbrandingtheme_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-update-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

## HTTP request


<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Accept-Language|A valid ISO 639-1 locale or `0` for the default locale. Optional.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the branding theme. Required.|
|isDefaultTheme|Boolean|Indicates whether the theme is set as the default branding theme for the entire tenant and includes all applications within the tenant. When set to `true`, this theme is automatically applied to any application that does not have a specific theme assigned. This property is useful for enforcing consistent branding across multiple apps without configuring each one individually. Optional.|  



## Response

If successful, this method returns a `200 OK` response code and an updated [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingtheme"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
  "id": "88373343-0336-58fb-427c-003495dcd79d",
  "name": "ContosoTheme",
  "isDefaultTheme": true
}
```

