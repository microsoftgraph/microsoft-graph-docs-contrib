---
title: "Get organizationalBrandingTheme"
description: "Read the properties and relationships of organizationalBrandingTheme object."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get organizationalBrandingTheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbrandingtheme_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-get-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}
```

## Optional query parameters

This method supports only the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingtheme"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05
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
  "value": {
    "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
    "id": "88373343-0336-58fb-427c-003495dcd79d",
    "name": "ContosoTheme",
    "isDefaultTheme": true
  }
}
```

