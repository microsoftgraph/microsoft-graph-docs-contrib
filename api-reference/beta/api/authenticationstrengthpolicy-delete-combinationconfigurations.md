---
title: "Delete authenticationCombinationConfiguration"
description: "Delete an authenticationCombinationConfiguration for a custom authenticationStrengthPolicy object."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete authenticationCombinationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)  for a custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthpolicy_delete_combinationconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthpolicy-delete-combinationconfigurations-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-write](../includes/rbac-for-apis/rbac-authenticationstrength-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations/{authenticationCombinationConfigurationId}
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
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_authenticationcombinationconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationStrength/policies/0e371351-6419-4c8a-8047-61eef0212ffb/combinationConfigurations/6cbbcfd0-5054-4a59-a10e-2d21fe09305d/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-authenticationcombinationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

