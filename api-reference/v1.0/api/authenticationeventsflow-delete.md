---
title: "Delete authenticationEventsFlow"
description: "Delete an authenticationEventsFlow object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete authenticationEventsFlow
Namespace: microsoft.graph

Delete a specific [authenticationEventsFlow](../resources/authenticationeventsflow.md) resource by ID. The following derived subtypes are supported:
- [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md)

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationeventsflow_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationeventsflow-delete-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/
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
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_authenticationeventsflow"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e
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
