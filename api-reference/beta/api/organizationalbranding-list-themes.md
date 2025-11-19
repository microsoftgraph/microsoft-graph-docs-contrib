---
title: "List organizationalBrandingTheme objects"
description: "Get a list of the organizationalBrandingTheme objects and their properties."
author: "AlexanderMars"
ms.date: 10/28/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List organizationalBrandingTheme objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbranding-list-themes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbranding-list-themes-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/themes
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

If successful, this method returns a `200 OK` response code and a collection of [organizationalBrandingTheme](../resources/organizationalbrandingtheme.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_organizationalbrandingtheme"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.organizationalBrandingTheme",
      "id": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
      "name": "ContosoTheme",
      "isDefaultTheme": true 
    }
  ]
}
```

