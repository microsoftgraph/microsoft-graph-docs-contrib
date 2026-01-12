---
title: "Delete update policy approval"
description: "Delete update policy approval object."
author: "andredm7"
ms.date: 01/12/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Delete an update policy approval

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a policyApproval object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policyapproval-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policyapproval-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/windows/updates/policies/{policyId}/approvals/{policyApprovalId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the policy approval is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Optional.|
|lastModifiedDateTime|DateTimeOffset| The date and time the policy approval was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only. Optional.|


## Response

If successful, this method returns a `204 No Content` response code and an updated [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_policyapproval"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/approvals/30d62e80-4028-4b1c-a458-da06c33173b0
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
  "status": "suspended"
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

