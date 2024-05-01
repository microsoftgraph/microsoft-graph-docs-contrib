---
title: "Create approvalItem"
description: "Create a new approvalItem object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "Approvals"
doc_type: apiPageType
---

# Create approvalItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [approvalItem](../resources/approvalitem.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalsolution-post-approvalitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-post-approvalitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/approvalItems
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [approvalItem](../resources/approvalitem.md) object.

You can specify the following properties when creating an **approvalItem**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The displayName of the approval request. Required.|
|description|String|This is the description of the approval request. Optional.|
|allowEmailNotification|Boolean|This property would be used for enabling email notification. Optional.|
|approvalType|approvalItemType|The approval type describes the workflow of the approvalItem. The possible values are: `basic`, `basicAwaitAll`, `custom`, `customAwaitAll`, `unknownFutureValue`. Required.|
|responsePrompts|String collection|Approval response prompts. The input length here would be minimum of 2 and maximum of 2. Optional.|
|approvers|[microsoft.approval.approvalIdentitySet](../resources/approvalidentityset.md) collection|This property is used for setting the identity of the Principals the ApprovalItem is assigned to. Required.|
|owner|[microsoft.approval.approvalIdentitySet](../resources/approvalidentityset.md)|This is the identity set of the principal who owns the approval item. The owner field would only be provided during the creation of the ApprovalItem when an application is creating an ApprovalItem on behalf of the principal, if the owner field is not provided the user information from the user context would be used. Optional.|


## Response

If successful, this method returns a `201 Created` response code and an [approvalItem](../resources/approvalitem.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_approvalitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/approvalItems
Content-Type: application/json

{
  "@odata.type": "#microsoft.approval.approvalItem",
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
  "completedDateTime": "String (timestamp)",
  "viewPoint": {
    "@odata.type": "microsoft.graph.approvalItemViewPoint"
  },
  "owner": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "result": "String"
}
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
HTTP/1.1 201 Created
Content-Type: application/json

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
```

