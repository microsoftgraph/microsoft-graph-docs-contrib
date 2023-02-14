---
title: "Create eligibilityScheduleRequest"
description: "Create a new privilegedAccessGroupEligibilityScheduleRequest object."
author: "mandardalvi"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create eligibilityScheduleRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PrivilegedAccess.ReadWrite.AzureADGroup|

The calling app must also have the Global Administrator or Privileged Role Administrator role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object.

You can specify the following properties when creating a **privilegedAccessGroupEligibilityScheduleRequest**.

|Property|Type|Description|
|:---|:---|:---|
|accessId|privilegedAccessGroupRelationships|The identifier of the membership or ownership eligibility relationship to the group. The possible values are: `owner`, `member`. Required.|
|groupId|String|The identifier of the group representing the scope of the membership or ownership eligibility through PIM for groups. Optional.|
|principalId|String|The identifier of the principal whose membership or ownership eligibility to the group is managed through PIM for groups. Required.|
|targetScheduleId|String|The identifier of the schedule that's created from the request. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [privilegedAccessGroupEligibilityScheduleRequest](../resources/privilegedaccessgroupeligibilityschedulerequest.md) object in the response body.

## Examples

### Example 1: Create an eligible schedule request (Admin adds eligible assignment for user)

The following request creates an eligibility schedule request to make a principal eligible to be a group owner. The eligible ownership expires after two hours.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupeligibilityschedulerequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
Content-Type: application/json

{
    "accessId": "member",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "action": "AdminAssign",
    "scheduleInfo": {
        "startDateTime": "2023-02-06T19:25:00.000Z",
        "expiration": {
            "type": "AfterDateTime",
            "endDateTime": "2023-02-07T19:56:00.000Z"
        }
    },
    "justification": "Assign eligible request."
}
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "id": "f8bd9e2d-bc15-49b1-8a9b-c571b3cf9555",
    "status": "Provisioned",
    "createdDateTime": "2023-02-07T06:57:54.1633903Z",
    "completedDateTime": "2023-02-07T06:57:55.6183972Z",
    "action": "adminAssign",
    "isValidationOnly": false,
    "justification": "Assign eligible request.",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_f8bd9e2d-bc15-49b1-8a9b-c571b3cf9555",
    "createdBy": {
        "user": {
            "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2023-02-07T06:57:55.6183972Z",
        "recurrence": null,
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2023-02-07T19:56:00Z",
            "duration": null
        }
    }
}
```

### Example 2: Extend eligible request

The following request extends an existing eligibility schedule request before it expires.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_privilegedaccessgroupeligibilityschedulerequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests
Content-Type: application/json

{
    "accessId": "member",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "action": "AdminExtend",
    "scheduleInfo": {
        "startDateTime": "2023-02-06T19:25:00.000Z",
        "expiration": {
            "type": "AfterDateTime",
            "endDateTime": "2023-02-07T20:56:00.000Z"
        }
    },
    "justification": "Extend eligible request."
}
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegedAccessGroupEligibilityScheduleRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/$entity",
    "id": "e3405b79-c0d8-4597-87b5-a84451e29224",
    "status": "Provisioned",
    "createdDateTime": "2023-02-07T07:01:25.9239454Z",
    "completedDateTime": "2023-02-07T07:01:27.3379548Z",
    "action": "adminExtend",
    "isValidationOnly": false,
    "justification": "Extend eligible request.",
    "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2",
    "accessId": "member",
    "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d",
    "targetScheduleId": "2b5ed229-4072-478d-9504-a047ebd4b07d_member_e3405b79-c0d8-4597-87b5-a84451e29224",
    "createdBy": {
        "user": {
            "id": "3cce9d87-3986-4f19-8335-7ed075408ca2"
        }
    },
    "scheduleInfo": {
        "startDateTime": "2023-02-07T07:01:27.3379548Z",
        "expiration": {
            "type": "afterDateTime",
            "endDateTime": "2023-02-07T20:56:00Z",
            "duration": null
        }
    }
}
```
