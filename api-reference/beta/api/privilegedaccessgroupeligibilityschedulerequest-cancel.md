---
title: "privilegedAccessGroupEligibilityScheduleRequest: cancel"
description: "Cancel an eligibility assignment request to a group whose membership and ownership are governed by PIM."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupEligibilityScheduleRequest: cancel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel an eligibility assignment request to a group whose membership and ownership are governed by PIM.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|

[!INCLUDE [rbac-pim-groups-apis-write-eligibilityschedulerequests](../includes/rbac-for-apis/rbac-pim-groups-apis-write-eligibilityschedulerequests.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/{privilegedAccessGroupEligibilityScheduleRequestId}/cancel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulerequestthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/f4b57a8c-da56-4ae0-8aef-65c3a043dab4/cancel
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/privilegedaccessgroupeligibilityschedulerequestthiscancel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/privilegedaccessgroupeligibilityschedulerequestthiscancel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/privilegedaccessgroupeligibilityschedulerequestthiscancel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/privilegedaccessgroupeligibilityschedulerequestthiscancel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/privilegedaccessgroupeligibilityschedulerequestthiscancel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/privilegedaccessgroupeligibilityschedulerequestthiscancel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/privilegedaccessgroupeligibilityschedulerequestthiscancel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

