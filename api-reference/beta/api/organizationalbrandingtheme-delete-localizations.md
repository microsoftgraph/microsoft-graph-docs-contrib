---
title: "Delete organizationalBrandingThemeLocalization"
description: "Delete an organizationalBrandingThemeLocalization object."
author: "AlexanderMars*"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an organizationalBrandingThemeLocalization object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbrandingtheme-delete-localizations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-delete-localizations-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_organizationalbrandingthemelocalization"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR/$ref
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

