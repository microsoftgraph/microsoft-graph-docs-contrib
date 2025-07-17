---
title: "privilegedAccessGroupEligibilitySchedule: filterByCurrentUser"
description: "Retrieve schedules of membership and ownership eligibility requests for the calling principal."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# privilegedAccessGroupEligibilitySchedule: filterByCurrentUser
Namespace: microsoft.graph

Retrieve schedules of membership and ownership eligibility requests for the calling principal.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroupeligibilityschedule_filterbycurrentuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroupeligibilityschedule-filterbycurrentuser-permissions.md)]

[!INCLUDE [rbac-pim-groups-apis-read-eligibilityschedules](../includes/rbac-for-apis/rbac-pim-groups-apis-read-eligibilityschedules.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|eligibilityScheduleFilterByCurrentUserOptions|Filter used to query eligibilitySchedules. The possible values are `principal`, `unknownFutureValue`. Required.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection in the response body.

## Examples
Note: this method requires either the principalId or groupId filter property.

### Example 1: Retrieve eligibility schedules for the calling principal

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulethis.filterbycurrentuser_v1_e1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='principal')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilitySchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(privilegedAccessGroupEligibilitySchedule)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "id": "14b9e371-5c2c-4ee5-a4a5-2980060d4f4e_member_f9003cf6-8905-4c69-a9f8-fd6d04caec69",
      "createdDateTime": "2022-03-14T19:26:07.06Z",
      "modifiedDateTime": "0001-01-01T08:00:00Z",
      "createdUsing": "f9003cf6-8905-4c69-a9f8-fd6d04caec69",
      "status": "Provisioned",
      "scheduleInfo": {
          "startDateTime": "2022-04-11T19:31:50.5613964Z",
          "recurrence": null,
          "expiration": {
              "type": "noExpiration",
              "endDateTime": null,
              "duration": null
          }
      },
      "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
      "accessId": "member",
      "groupId": "14b9e371-5c2c-4ee5-a4a5-2980060d4f4e",
      "memberType": "direct"
    }
  ]
}
```

### Example 2: Retrieve eligibility schedules for the principal and filter by a group and accessId

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulethis.filterbycurrentuser_v1_e2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='principal')?$filter=groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/privilegedaccessgroupeligibilityschedulethisfilterbycurrentuser-v1-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilitySchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(privilegedAccessGroupEligibilitySchedule)",
  "value": [
  {
    "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
    "id": "14b9e371-5c2c-4ee5-a4a5-2980060d4f4e_member_f9003cf6-8905-4c69-a9f8-fd6d04caec69",
    "createdDateTime": "2022-03-14T19:26:07.06Z",
    "modifiedDateTime": "0001-01-01T08:00:00Z",
    "createdUsing": "f9003cf6-8905-4c69-a9f8-fd6d04caec69",
    "status": "Provisioned",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "14b9e371-5c2c-4ee5-a4a5-2980060d4f4e",
    "memberType": "direct",
    "scheduleInfo": {
      "startDateTime": "2022-03-14T19:26:07.06Z",
      "recurrence": null,
      "expiration": {
        "type": "afterDateTime",
        "endDateTime": "2023-03-14T19:25:46.4Z",
        "duration": null
      }
    }
  }
  ]
}
```

