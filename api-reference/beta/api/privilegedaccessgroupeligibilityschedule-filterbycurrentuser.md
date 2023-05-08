---
title: "privilegedAccessGroupEligibilitySchedule: filterByCurrentUser"
description: "Retrieve schedules of membership and ownership eligibility requests for the calling principal."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupEligibilitySchedule: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve schedules of membership and ownership eligibility requests for the calling principal.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedEligibilitySchedule.Read.AzureADGroup, PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedEligibilitySchedule.Read.AzureADGroup, PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupEligibilitySchedule](../resources/privilegedaccessgroupeligibilityschedule.md) collection in the response body.

## Examples
Note: this method requires either the principalId or groupId filter property.

### Example 1: Retrieve eligibility schedules for the calling principal

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulethis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='principal')
```


#### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(privilegedAccessGroupEligibilitySchedule)",
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
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulethis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser(on='principal')?$filter=groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'
```


#### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(privilegedAccessGroupEligibilitySchedule)",
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

