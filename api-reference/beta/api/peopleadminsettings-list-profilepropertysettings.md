---
title: "List profilePropertySettings"
description: "Get a collection of profilePropertySetting objects that define the configuration for user profile properties in an organization."
author: "rwaithera"
ms.date: 05/02/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# List profilePropertySettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of [profilePropertySetting](../resources/profilepropertysetting.md) objects that define the configuration for user profile properties in an organization. The **id** property identifies each resource object uniquely.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_list_profilepropertysettings" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-list-profilepropertysettings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/people/profilePropertySettings
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [profilePropertySetting](../resources/profilepropertysetting.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_profilepropertysetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/people/profilePropertySettings
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.profilePropertySetting)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.profilePropertySetting",
      "id": "00000000-0000-0000-0000-000000000001",
      "name": null,
      "userOverridePrivacy": null,
      "allowedAudiences": null,
      "prioritizedSourceUrls": [
        "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
      ]
    }
  ]
}
```

