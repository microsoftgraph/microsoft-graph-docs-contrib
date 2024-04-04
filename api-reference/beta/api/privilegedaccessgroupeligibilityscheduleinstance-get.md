---
title: "Get privilegedAccessGroupEligibilityScheduleInstance"
description: "Read the properties and relationships of a privilegedAccessGroupEligibilityScheduleInstance object."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.topic: reference
---

# Get privilegedAccessGroupEligibilityScheduleInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroupeligibilityscheduleinstance_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroupeligibilityscheduleinstance-get-permissions.md)]

[!INCLUDE [rbac-pim-groups-apis-read-eligibilityschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-eligibilityschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/{privilegedAccessGroupEligibilityScheduleInstanceId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object in the response body.

## Examples

### Example 1: Get all eligibility schedule instances

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupeligibilityscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-privilegedaccessgroupeligibilityscheduleinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-privilegedaccessgroupeligibilityscheduleinstance-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-privilegedaccessgroupeligibilityscheduleinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-privilegedaccessgroupeligibilityscheduleinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-privilegedaccessgroupeligibilityscheduleinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-privilegedaccessgroupeligibilityscheduleinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-privilegedaccessgroupeligibilityscheduleinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-privilegedaccessgroupeligibilityscheduleinstance-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance",
    "id": "b88fc7b0-a4ff-45fc-82c4-1d31a807315e",
    "accessId": "member",
    "principalId": "c277c8cb-6bb7-42e5-a17f-0add9a718151",
    "groupId": "d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc",
    "startDateTime": "2020-08-27T18:58:35.967Z",
    "endDateTime": "2020-08-29T18:57:38Z",
    "memberType": "Direct",
    "memberEligibilityScheduleId": "04e755d8-488a-4abb-a27f-19091d73c970"
  }
}
```

