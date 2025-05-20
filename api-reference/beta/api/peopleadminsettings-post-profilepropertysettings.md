---
title: "Create profilePropertySetting"
description: "Create a new profilePropertySetting object."
author: "rwaithera"
ms.date: 05/02/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Create profilePropertySetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [profilePropertySetting](../resources/profilepropertysetting.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_post_profilepropertysettings" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-profilepropertysettings-permissions.md)]

>**Note:** To use delegated permissions for this operation, the signed-in user must have either the [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) role or the [People Administrator](/entra/identity/role-based-access-control/permissions-reference#people-administrator) role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/people/profilePropertySettings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|


## Request body

In the request body, supply a JSON representation of the [profilePropertySetting](../resources/profilepropertysetting.md) object.

You can specify the following properties when you create a **profilePropertySetting**.

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|organizationAllowedAudiences|A privacy setting that reflects the allowed audience for the configured property. The possible values are: `me`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|isUserOverrideForAudienceEnabled|Boolean|Defines whether a user is allowed to override the tenant admin privacy setting.|
|name|String|Name of the property-level setting.|
|prioritizedSourceUrls|String collection|A collection of prioritized profile source URLs ordered by data precedence within an organization.|

## Response

If successful, this method returns a `201 Created` response code and a [profilePropertySetting](../resources/profilepropertysetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_profilepropertysetting_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/people/profilePropertySettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')"
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profilePropertySetting",
  "id": "00000000-0000-0000-0000-000000000001",
  "name": null,
  "userOverridePrivacy": null,
  "allowedAudiences": null,
  "prioritizedSourceUrls": [
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')",
    "https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='4ce763dd-9214-4eff-af7c-da491cc3782d')"
  ]
}
```

