---
title: "privilegedAccessGroupEligibilityScheduleInstance: filterByCurrentUser"
description: "Return instances of membership and ownership eligibility schedules for the calling principal."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupEligibilityScheduleInstance: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the eligibility schedule instances of privileged access to a group relationship assignment for the calling principal.

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
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/filterByCurrentUser
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|eligibilityScheduleInstanceFilterByCurrentUserOptions|Filter used to query eligibilityScheduleInstances. The possible values are `principal`, `unknownFutureValue`. Required.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) collection in the response body.

## Examples

### Example 1: Retrieve schedule instances for the calling principal

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityscheduleinstancethis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/filterByCurrentUser(on='principal')
```


#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance",
      "id": "String (identifier)",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "principalId": "String",
      "accessId": "String",
      "groupId": "String",
      "memberType": "String",
      "eligibilityScheduleId": "String"
    }
  ]
}
```

### Example 2: Retrieve schedule instances for the calling principal and filter by the group and accessId

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityscheduleinstancethis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/filterByCurrentUser(on='principal')
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleInstance",
      "id": "String (identifier)",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "principalId": "String",
      "accessId": "String",
      "groupId": "String",
      "memberType": "String",
      "eligibilityScheduleId": "String"
    }
  ]
}
```

