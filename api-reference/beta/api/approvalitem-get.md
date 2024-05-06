---
title: "Get approvalItem"
description: "Read the properties and relationships of an approvalItem object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: apiPageType
---

# Get approvalItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalItem](../resources/approvalitem.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}
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

If successful, this method returns a `200 OK` response code and an [approvalItem](../resources/approvalitem.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvalitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/{approvalItemId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.approval.approvalItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.approval.approvalItem",
    "id": "864a2951-a6cb-c407-1957-6dd2fbae7a84",
    "displayName": "String",
    "description": "String",
    "allowEmailNotification": "Boolean",
    "approvalType": "String",
    "responsePrompts": [
      "String"
    ],
    "approvers": [
      {
        "@odata.type": "microsoft.graph.approvalIdentitySet"
      }
    ],
    "state": "String",
    "allowCancel": "Boolean",
    "createdDateTime": "String (timestamp)",
    "completedDateTime": "String (timestamp)",
    "viewPoint": {
      "@odata.type": "microsoft.graph.approvalItemViewPoint"
    },
    "owner": {
      "@odata.type": "microsoft.graph.approvalIdentitySet"
    },
    "result": "String"
  }
}
```

