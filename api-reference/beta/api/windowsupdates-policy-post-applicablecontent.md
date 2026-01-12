---
title: "Create applicableContent"
description: "Create a new applicableContent object."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create applicableContent

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [applicableContent](../resources/windowsupdates-applicablecontent.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policy-post-applicablecontent-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-post-applicablecontent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/applicableContent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [applicableContent](../resources/windowsupdates-applicablecontent.md) object.

You can specify the following properties when you create an **applicableContent** object.

|Property|Type|Description|
|:---|:---|:---|
|catalogEntryId|String| ID of the catalog entry for the applicable content. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_applicablecontent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/applicableContent
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContent",
  "catalogEntryId": "bf214084-819f-bd9c-e540-0dcbe8b8c6f0"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContent",
  "catalogEntryId": "bf214084-819f-bd9c-e540-0dcbe8b8c6f0"
}
```

