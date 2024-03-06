---
title: "Get updatePolicy"
description: "Read the properties and relationships of an updatePolicy object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: apiPageType
---

# Get updatePolicy
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_updatepolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-updatepolicy-get-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/updatePolicies/{updatePolicyId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_updatepolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-updatepolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-updatepolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-updatepolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-updatepolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-updatepolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-updatepolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-updatepolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-updatepolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.updatePolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
    "id": "a7aa99c1-34a2-850c-5223-7816fde70713",
    "audience": {
      "@odata.id": "deploymentAudiences/1"
    },
    "complianceChanges": [
      {
        "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval"
      }
    ],
    "complianceChangeRules": [
      {
        "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
        "contentFilter": {
            "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
        },
        "durationBeforeDeploymentStart": "P7D",
        "createdDateTime": "2020-06-09T10:00:00Z",
        "lastEvaluatedDateTime": "2020-06-09T10:00:00Z",
        "lastModifiedDateTime": "2020-06-09T10:00:00Z"
      }
    ],
    "deploymentSettings": {
      "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
      "schedule": {
        "gradualRollout": {
          "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
          "durationBetweenOffers": "P1D",
          "devicePerOffer": 1000
        }
      }
    }
  }
}
```
