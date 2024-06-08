---
title: "Update uxSetting"
description: "Update the properties of an uxSetting object."
author: "skashyap7"
ms.localizationpriority: medium
ms.service: "entra-management-admin"
doc_type: apiPageType
---

# Update uxSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [uxSetting](../resources/uxsetting.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "uxsetting-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/uxsetting-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/entra/uxSetting
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|restrictNonAdminAccess|nonAdminSetting|If the nonAdminSetting is set to true, it restricts non-administrators from browsing the Microsoft Entra administration portal. Non-administrators who are owners of groups or applications are unable to use the Azure portal to manage their owned resources. If the nonAdminSetting is set to false, it lets non-administrators browse the Microsoft Entra administration portal. The possible values are: `true`, `false`. Required.|



## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_uxsetting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/entra/uxSetting
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.uxSetting",
  "restrictNonAdminAccess": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.uxSetting",
  "restrictNonAdminAccess": "String"
}
```

