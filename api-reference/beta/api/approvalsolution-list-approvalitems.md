---
title: "List approvalItem objects"
description: "Get a list of the approvalItem objects and their properties."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "Approvals"
doc_type: apiPageType
---

# List approvalItem objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [approvalItem](../resources/approvalitem.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalsolution-list-approvalitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-list-approvalitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems
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

If successful, this method returns a `200 OK` response code and a collection of [approvalItem](../resources/approvalitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_approvalitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.approval.approvalItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
  ]
}
```

