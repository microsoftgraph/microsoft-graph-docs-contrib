---
title: "Update policyApproval"
description: "Update the properties of a policyApproval object."
author: "andredm7"
ms.date: 09/30/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update policyApproval

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a policyApproval object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policyapproval-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policyapproval-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/windows/updates/policies/{policyId}/approvals/{policyApprovalId}
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
|lastModifiedDateTime|DateTimeOffset|The date and time the policy approval was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Read-only. Optional.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_policyapproval"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/approvals/{ApprovalId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "String",
  "status": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
  "@odata.type": "microsoft.graph.windowsUpdates.policyApproval",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "String",
  "status": "String",
  "id": "ab3a53f0-f7aa-10b1-04d4-8680584cbbb6",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

