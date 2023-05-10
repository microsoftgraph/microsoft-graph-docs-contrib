---
title: "Update adminTodo"
description: "Update the properties of a microsoft.graph.tenantAdmin.adminTodo object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update adminTodo
Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.tenantAdmin.adminTodo](../resources/tenantadmin-admintodo.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**OrgSettings-Todo.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not supported.**|
|Application|**OrgSettings-Todo.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/todo
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
|settings|[microsoft.graph.tenantAdmin.todoSettings](../resources/tenantadmin-todosettings.md)|**Company wide settings for Microsoft Todo** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.tenantAdmin.adminTodo](../resources/tenantadmin-admintodo.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_admintodo"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/todo
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminTodo",
  "settings": {
    "@odata.type": "microsoft.graph.tenantAdmin.todoSettings",
    "isPushNotificationEnabled": true,
    "isExternalJoinEnabled": false,
    "isExternalShareEnabled": true
  }
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
Content-Type: text/plain

```

