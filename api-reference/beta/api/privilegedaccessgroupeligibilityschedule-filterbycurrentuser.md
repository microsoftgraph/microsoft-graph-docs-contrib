---
title: "privilegedAccessGroupEligibilitySchedule: filterByCurrentUser"
description: "Retrieve the eligibility schedules of privileged access to a group relationship assignment for which the signed-in user is the principal."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupEligibilitySchedule: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the eligibility schedules of privileged access to a group relationship assignment for which the signed-in user is the principal.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureADGroup, PrivilegedAccess.Read.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.ReadWrite.AzureADGroup, PrivilegedAccess.Read.AzureADGroup|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/privilegedAccess/group/eligibilitySchedules/filterByCurrentUser
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

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

### Example 1

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "id": "String (identifier)",
      "scheduleInfo": {
        "@odata.type": "microsoft.graph.requestSchedule"
      },
      "createdDateTime": "String (timestamp)",
      "modifiedDateTime": "String (timestamp)",
      "createdUsing": "String",
      "status": "String",
      "principalId": "String",
      "accessId": "String",
      "groupId": "String",
      "memberType": "String"
    }
  ]
}
```

### Example 2: A user gets all their current member eligibility schedules for a specific privileged access group.

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "id": "3be58d9b-3d87-4cb5-b6c9-bcd825841f52",  
      "accessId": "member",
      "principalId": "c277c8cb-6bb7-42e5-a17f-0add9a718151",
      "createdUsing" : "7e62cb14-72db-4816-af40-6af092399422",
      "groupId": "d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc",
      "memberType": "Direct",
      "currentStartDateTime": "2022-02-09T14:48:00.000Z",  
      "currentEndDateTime": null,
      "scheduleInfo":{
        "@odata.type": "#microsoft.graph.requestSchedule",
        "startDateTime": "2022-02-09T14:48:00.000Z",
        "expiration":{
          "@odata.type": "#microsoft.graph.expirationPattern",
          "type": "NoExpiration"
          "endDateTime": null,
          "duration": null
        },
        "recurrence": null
      }
    },
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilitySchedule",
      "id": "27fcfaed-61a4-46d2-aa33-7e0322bcc1f9",  
      "accessId": "member",
      "principalId": "c277c8cb-6bb7-42e5-a17f-0add9a718151",  
      "groupId": "d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc",
      "memberType": "Group",
      "currentStartDateTime": "2022-02-09T14:48:00.000Z",  
      "currentEndDateTime": "2022-02-09T22:48:00.000Z",
      "scheduleInfo":{
        "@odata.type": "#microsoft.graph.requestSchedule",
        "startDateTime": "2022-02-09T14:48:00.000Z",
        "expiration":{
          "@odata.type": "#microsoft.graph.expirationPattern",
          "type": "Duration",
          "endDateTime": null,
          "duration" : "PT8H"
        },
        "recurrence": null
      }
    },
  ]
}
```

