---
title: "Delete profileSource"
description: "Delete a profileSource object."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Delete profileSource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [profileSource](../resources/profilesource.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "profilesource-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/profilesource-delete-permissions.md)]

>**Note:** To use delegated permissions for this operation, the signed-in user must have the [People Administrator](/entra/identity/role-based-access-control/permissions-reference#people-administrator) role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/people/profileSources(sourceId='{sourceId}')
```

## Function parameters

In the request URL, provide the following parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
|sourceId|String|Profile source identifier used as an [alternate key](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/alternate-key.md). Required.|

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
  "name": "delete_profilesource"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='bamboohr1')
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

