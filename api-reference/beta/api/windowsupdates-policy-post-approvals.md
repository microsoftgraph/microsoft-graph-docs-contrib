---
title: "Create policyApproval"
description: "Create a new policyApproval object."
author: "andredm7"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create policyApproval

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [policyApproval](../resources/windowsupdates-policyapproval.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_post_approvals" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-post-approvals-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/approvals
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [policyApproval](../resources/windowsupdates-policyapproval.md) object.

You can specify the following properties when you create a **policyApproval**.

|Property|Type|Description|
|:---|:---|:---|
|catalogEntryId|String|The catalog entry ID to approve. Required.|
|status|microsoft.graph.windowsUpdates.approvalStatus|The approval status. The possible values are: `approved`, `suspended`, `unknownFutureValue`. Required.|

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "post_policyapproval"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/ab3a53f0-f7aa-10b1-04d4-8680584cbbb6/approvals
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
  "status": "approved"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.policyApproval"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
  "status": "approved",
  "id": "ab3a53f0-f7aa-10b1-04d4-8680584cbbb6",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "lastModifiedDateTime": "2020-06-09T10:00:00Z"
}
```

