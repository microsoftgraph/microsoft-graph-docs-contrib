---
title: "accessPackage: getApplicablePolicyRequirements"
description: "Allow callers to find requirements to request an assignment for a specific accessPackage."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# accessPackage: getApplicablePolicyRequirements
Namespace: microsoft.graph


In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), this action retrieves a list of [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) objects that the currently signed-in user can use to create an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md).  Each requirement object corresponds to an access package assignment policy that the currently signed-in user is allowed to request an assignment for.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackages/{accessPackageId}/getApplicablePolicyRequirements
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection in the response body, one object for each policy for which the user is an **allowedRequestor**. If there is a policy with no requirements, the **accessPackageAssignmentRequestRequirements** will have `false` and `null` values. If there are no policies where the user is an **allowedRequestor**, an empty collection will be returned instead.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackage_getapplicablepolicyrequirements"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/{accessPackageId}/getApplicablePolicyRequirements
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackage-getapplicablepolicyrequirements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accesspackage-getapplicablepolicyrequirements-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackage-getapplicablepolicyrequirements-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackage-getapplicablepolicyrequirements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accesspackage-getapplicablepolicyrequirements-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accesspackage-getapplicablepolicyrequirements-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequestRequirements)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.accessPackageAssignmentRequestRequirements"
    }
  ]
}
```


