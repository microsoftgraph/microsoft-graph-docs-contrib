---
title: "Get accessPackageAssignmentPolicy"
description: "Retrieve the properties and relationships of an accessPackageAassignmentPolicy object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Get accessPackageAssignmentPolicy

Namespace: microsoft.graph


In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), retrieve the properties and relationships of an
 [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentPolicies/{accessPackageAssignmentPolicyId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to retrieve specific properties and the `$expand` parameter to retrieve relationships.

For example, to retrieve the access package, add `$expand=accessPackage`.
## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignmentpolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentPolicies/{accessPackageAssignmentPolicyId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageassignmentpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageassignmentpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageassignmentpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageassignmentpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageassignmentpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187",
  "displayName": "All Users",
  "description": "All users in the directory can request access.",
  "allowedTargetScope": "allDirectoryUsers",
  "createdDateTime": "2020-12-18T20:18:02.587Z",
  "modifiedDateTime": "2020-12-18T20:18:02.65Z",
  "specificAllowedTargets": [],
  "expiration": {
      "duration": "P365D",
      "type": "afterDuration"
  },
  "requestorSettings": {
      "enableTargetsToSelfAddAccess": true,
      "enableTargetsToSelfUpdateAccess": false,
      "enableTargetsToSelfRemoveAccess": true,
      "allowCustomAssignmentSchedule": true,
      "enableOnBehalfRequestorsToAddAccess": false,
      "enableOnBehalfRequestorsToUpdateAccess": false,
      "enableOnBehalfRequestorsToRemoveAccess": false
  },
  "requestApprovalSettings": {
      "isApprovalRequiredForAdd": false,
      "isApprovalRequiredForUpdate": false,
      "stages": []
  }
}
```


