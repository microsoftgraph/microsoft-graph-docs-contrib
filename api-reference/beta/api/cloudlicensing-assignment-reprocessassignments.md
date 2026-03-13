---
title: "assignment: reprocessAssignments"
description: "Reprocess existing license assignments for a user by posting to the user's assignments reprocessAssignments action."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# assignment: reprocessAssignments

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reprocess existing license [assignments](../resources/cloudlicensing-assignment.md) for a user by calling the **reprocessAssignments** action on a user's assignments. Depending on the steps taken to resolve licensing errors, it might be necessary to manually trigger the processing of a user to update their state. For example, after you resolve a dependency violation error for an affected user, you need to trigger reprocessing to apply the changes.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-assignment-reprocessassignments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignment-reprocessassignments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{userId}/cloudLicensing/assignments/reprocessAssignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "assignmentthis.reprocessassignments"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/43fe5b38-7328-40b9-a2f6-85d86ae8c34d/cloudLicensing/assignments/reprocessAssignments
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

