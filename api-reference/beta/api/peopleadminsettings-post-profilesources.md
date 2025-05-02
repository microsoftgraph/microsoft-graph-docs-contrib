---
title: "Create profileSource"
description: "Create a new profileSource object."
author: "ruthnjambuya"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Create profileSource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a new [profileSource](../resources/profilesource.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "peopleadminsettings-post-profilesources-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-profilesources-permissions.md)]

>**Note:** Using delegated permissions for this operation requires the signed-in user to have [People Administrator](https://learn.microsoft.com/en-us/entra/identity/role-based-access-control/permissions-reference#people-administrator) role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/people/profileSources
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

In the request body, supply a JSON representation of the [profileSource](../resources/profilesource.md) object.

You can specify the following properties when creating a **profileSource**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the profile source intended to inform users on the profile source name.|
|kind|String|Type of the profile source.|
|localizations|[profileSourceLocalization](../resources/profilesourcelocalization.md) collection|Alternative localized labels an administrator specifies.|
|sourceId|String|Profile source identifier used as an alternate-key.|
|webUrl|String|Web URL of the profile source that takes users to the page view of profile data.|



## Response

If successful, this method returns a `201 Created` response code and a [profileSource](../resources/profilesource.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_profilesource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/people/profileSources
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profileSource",
  "sourceId": "String",
  "kind": "String",
  "displayName": "String",
  "webUrl": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.profileSourceLocalization"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profileSource",
  "id": "246c78b8-1a53-f072-6bc8-5869b3e5bee0",
  "sourceId": "String",
  "kind": "String",
  "displayName": "String",
  "webUrl": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.profileSourceLocalization"
    }
  ]
}
```

