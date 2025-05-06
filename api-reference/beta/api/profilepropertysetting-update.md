---
title: "Update profilePropertySetting"
description: "Update the properties of a profilePropertySetting object."
author: "rwaithera"
ms.date: 05/02/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Update profilePropertySetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [profilePropertySetting](../resources/profilepropertysetting.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "profilepropertysetting-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/profilepropertysetting-update-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have the [People Administrator](https://learn.microsoft.com/entra/identity/role-based-access-control/permissions-reference#people-administrator) role.

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
|allowedAudiences|organizationAllowedAudiences|A privacy setting that reflects the allowed audience for the configured property. The possible values are: `me`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|isUserOverrideForAudienceEnabled|Boolean|Defines whether a user is allowed to override the tenant admin privacy setting.|
|name|String|Name of the property-level setting.|
|prioritizedSourceUrls|String collection|A collection of priority profile source URLs ordered by data precedence within an organization.|

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
PATCH https://graph.microsoft.com/beta/admin/people/profilePropertySettings/00000000-0000-0000-0000-000000000001
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "prioritizedSourceUrls": [
    "/external/connections/contosohr2",
    "/external/connections/contosohr1"
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
  "name": null,
  "userOverridePrivacy": null,
  "allowedAudiences": null,
  "prioritizedSourceUrls": [
    "/external/connections/contosohr2",
    "/external/connections/contosohr1"
  ]
}
```

