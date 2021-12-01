---
title: "Delete accessPackageAssignmentPolicy"
description: "Delete an accessPackageAssignmentPolicy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Delete accessPackageAssignmentPolicy

Namespace: microsoft.graph


In [Azure AD entitlement management](../resources/entitlementmanagement-root.md), delete an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/assignmentPolicies/{accessPackageAssignmentPolicyId}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a 204 No Content response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_accesspackageassignmentpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentPolicies/{accessPackageAssignmentPolicyId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


