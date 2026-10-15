---
title: "Create contentLink for a plan"
description: "Create a new contentLink object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create contentLink for a plan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new contentLink object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-post-links-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-post-links-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/planner/plans_v2/{planId}/links
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [contentLink](../resources/contentlink.md) object.

You can specify the following properties when creating a **contentLink**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display label for the link. Optional.|
|linkType|contentLinkType|Type of content the link points to. The possible values are: `documentReference`, `webReference`, `unknownFutureValue`. Optional.|
|webUrl|String|URL the link points to. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [contentLink](../resources/contentlink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "plan_post_links"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/planner/plans_v2/{planId}/links
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
HTTP/1.1 201 Created
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

