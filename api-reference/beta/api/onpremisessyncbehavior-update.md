---
title: "Update onPremisesSyncBehavior"
description: "Update the properties of an onPremisesSyncBehavior object."
author: "rubytek-git"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Update onPremisesSyncBehavior

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an onPremisesSyncBehavior object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremisessyncbehavior-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremisessyncbehavior-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /groups/{groupsId}/onPremisesSyncBehavior
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
|isCloudManaged|Boolean|Indicates whether the object’s source of authority is set to the cloud.|



## Response

If successful, this method returns a `200 OK` response code and an updated [onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisessyncbehavior"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/groups/{groupsId}/onPremisesSyncBehavior
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
  "isCloudManaged": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
  "id": "39b4e676-e148-6060-855c-a77f67b5ac06",
  "isCloudManaged": "Boolean"
}
```

