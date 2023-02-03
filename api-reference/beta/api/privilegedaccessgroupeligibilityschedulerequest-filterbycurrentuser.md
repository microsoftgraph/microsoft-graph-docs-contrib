---
title: "privilegedAccessGroupEligibilityScheduleRequest: filterByCurrentUser"
description: "In PIM for groups, retrieve the requests for membership or ownership eligibilities for the calling principal to groups that are governed by PIM."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# privilegedAccessGroupEligibilityScheduleRequest: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the eligibility requests for privileged access to a group relationship assignment for a particular principal.

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
GET /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/filterByCurrentUser
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|eligibilityScheduleRequestFilterByCurrentUserOptions|Filter used to query eligibilityScheduleRequests. The possible values are `principal`, `createdBy`, `approver`, `unknownFutureValue`. Required.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "privilegedaccessgroupeligibilityschedulerequestthis.filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/filterByCurrentUser(on='principal')
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest",
      "id": "String (identifier)",
      "status": "String",
      "completedDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "approvalId": "String",
      "customData": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "action": "String",
      "isValidationOnly": "Boolean",
      "justification": "String",
      "scheduleInfo": {
        "@odata.type": "microsoft.graph.requestSchedule"
      },
      "ticketInfo": {
        "@odata.type": "microsoft.graph.ticketInfo"
      },
      "principalId": "String",
      "accessId": "String",
      "groupId": "String",
      "targetScheduleId": "String"
    }
  ]
}
```

