---
title: "Update profilePropertySetting"
description: "Update the properties of a profilePropertySetting object."
author: "rwaithera"
ms.date: 03/16/2026
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Update profilePropertySetting

Namespace: microsoft.graph



Update the properties of a [profilePropertySetting](../resources/profilepropertysetting.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "profilepropertysetting_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/profilepropertysetting-update-permissions.md)]

[!INCLUDE [rbac-peopleadmin-apis-write](../includes/rbac-for-apis/rbac-peopleadmin-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/people/profilePropertySettings/{profilePropertySettingId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the property-level setting. Optional.|
|name|String|Other name of the property-level setting. For backward compatibility. Optional.|
|prioritizedSourceUrls|String collection|A collection of prioritized profile source URLs ordered by data precedence within an organization. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [profilePropertySetting](../resources/profilepropertysetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_profilepropertysetting"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr2')"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profilePropertySetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "id": "00000000-0000-0000-0000-000000000001",
  "displayName": "Profile priority config",
  "name": "Profile priority config",
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr2')",
    "https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

