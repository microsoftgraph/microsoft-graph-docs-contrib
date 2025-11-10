---
title: "Delete entraIdProtectionRiskyUserApproval"
description: "Delete an entraIdProtectionRiskyUserApproval object."
author: "OWinfreyATL"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2025
---

# Delete entraIdProtectionRiskyUserApproval

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/entraIdProtectionRiskyUserApprovals/{entraIdProtectionRiskyUserApprovalId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|****** Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_entraidprotectionriskyuserapproval"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/entraIdProtectionRiskyUserApprovals/{entraIdProtectionRiskyUserApprovalId}
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
