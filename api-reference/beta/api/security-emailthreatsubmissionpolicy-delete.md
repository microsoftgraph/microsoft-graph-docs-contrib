---
title: "Delete emailThreatSubmissionPolicy"
description: "Delete an emailThreatSubmissionPolicy object."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.topic: reference
---

# Delete emailThreatSubmissionPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_emailthreatsubmissionpolicy_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-emailthreatsubmissionpolicy-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/threatSubmission/emailThreatSubmissionPolicies/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_emailthreatsubmissionpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolices/{id}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

