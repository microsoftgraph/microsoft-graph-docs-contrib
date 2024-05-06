---
title: "Create approvalItemResponse"
description: "Create a new approvalItemResponse object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: apiPageType
---

# Create approvalItemResponse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new approvalItemResponse object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvalitem-post-responses-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-post-responses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/approvalItems/{approvalItemId}/responses
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [approvalItemResponse](../resources/approvalitemresponse.md) object.

You can specify the following properties when creating an **approvalItemResponse**.

|Property|Type|Description|
|:---|:---|:---|
|comments|String|The comment made by approver. Optional.|
|response|String|Approver response based on the response option. Required.|


## Response

If successful, this method returns a `201 Created` response code and an [approvalItemResponse](../resources/approvalitemresponse.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_approvalitemresponse_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/approvalItems/{approvalItemId}/responses
Content-Type: application/json

{
  "@odata.type": "#microsoft.approval.approvalItemResponse",
  "comments": "String",
  "response": "String",
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.approval.approvalItemResponse"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.approval.approvalItemResponse",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.approvalIdentitySet"
  },
  "comments": "String",
  "response": "String",
  "owners": [
    {
      "@odata.type": "microsoft.graph.approvalIdentitySet"
    }
  ]
}
```

