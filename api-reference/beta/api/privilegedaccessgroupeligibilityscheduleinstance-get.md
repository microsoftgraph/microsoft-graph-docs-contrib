---
title: "Get privilegedAccessGroupEligibilityScheduleInstance"
description: "Read the properties and relationships of a privilegedAccessGroupEligibilityScheduleInstance object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get privilegedAccessGroupEligibilityScheduleInstance
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.Read.AzureADGroup, PrivilegedAccess.ReadWrite.AzureADGroup|

The calling app must also have the Global Administrator or Privileged Role Administrator role.

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [privilegedAccessGroupEligibilityScheduleInstance](../resources/privilegedaccessgroupeligibilityscheduleinstance.md) object in the response body.

## Examples

### Example 1: Get all eligibility schedule instances

### Request
<!-- {
  "blockType": "request",
  "name": "get_privilegedaccessgroupeligibilityscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc
```


#### Response
The following is an example of the response.
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

