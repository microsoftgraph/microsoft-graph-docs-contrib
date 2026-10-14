---
title: "List checklist"
description: "Get a list of the checklistItemV4 objects on the task."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List checklist

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [checklistItemV4](../resources/checklistitemv4.md) objects on the task.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "task-list-checklist-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/task-list-checklist-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/checklist
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [checklistItemV4](../resources/checklistitemv4.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_checklistitemv4"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/checklist
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.checklistItemV4"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.checklistItemV4",
      "id": "0d03366e-da38-ca6d-a60b-f3f6d8a68345",
      "displayName": "String",
      "isChecked": "Boolean",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "completedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "completedDateTime": "String (timestamp)",
      "capabilities": {
        "@odata.type": "microsoft.graph.checklistCapability"
      },
      "extensions": {
        "@odata.type": "microsoft.graph.extensionFieldCollection"
      }
    }
  ]
}
```

