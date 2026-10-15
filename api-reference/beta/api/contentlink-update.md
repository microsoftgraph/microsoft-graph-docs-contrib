---
title: "Update contentLink"
description: "Update the properties of a contentLink object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update contentLink

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a contentLink object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentlink-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentlink-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/links/{contentLinkId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/links/{contentLinkId}
PATCH /me/planner/plans_v2/{planId}/tasks/{taskId}/links/{contentLinkId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/links/{contentLinkId}
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
|displayName|String|Display label for the link. Optional.|
|linkType|contentLinkType|Type of content the link points to. The possible values are: `documentReference`, `webReference`, `unknownFutureValue`. Optional.|
|webUrl|String|URL the link points to. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [contentLink](../resources/contentlink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_contentlink"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/links/{contentLinkId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.contentLink",
  "displayName": "Design specs",
  "linkType": "documentReference",
  "webUrl": "https://www.contoso.com/docs/design-specs.docx",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentLink"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.contentLink",
  "id": "eb8b65f4-318a-9e90-8af9-67a53027e563",
  "displayName": "String",
  "linkType": "String",
  "webUrl": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.contentLinkCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

