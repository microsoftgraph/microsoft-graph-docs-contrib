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

Create a new profilePropertySetting object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "peopleadminsettings-post-profilepropertysettings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-profilepropertysettings-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have [People Administrator](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference#people-administrator) role.

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

You can specify the following properties when creating a **profilePropertySetting**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the property-level setting.|
|allowedAudiences|organizationAllowedAudiences|A privacy setting reflecting the allowed audience for the configured property. The possible values are: `me`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|isUserOverrideForAudienceEnabled|Boolean|Defines if a user is allowed to override the tenant admin privacy setting|
|prioritizedSourceUrls|String collection|A collection of priority profile source URLs ordered in the order of data precedence in an organization.|


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
  "name": "String",
  "allowedAudiences": "String",
  "isUserOverrideForAudienceEnabled": "Boolean",
  "prioritizedSourceUrls": [
    "String"
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
  "id": "2e322404-b5d8-f816-99fa-21d7f1206a71",
  "name": "String",
  "allowedAudiences": "String",
  "isUserOverrideForAudienceEnabled": "Boolean",
  "prioritizedSourceUrls": [
    "String"
  ]
}
```

