---
title: "unifiedRoleEligibilitySchedule: filterByCurrentUser"
description: "Get a list of the unifiedRoleEligibilitySchedule objects and their properties filtered by a particular user principal"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleEligibilitySchedule: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleEligibilitySchedule](../resources/unifiedRoleEligibilitySchedule.md) objects and their properties associated with a particular principal object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleEligibilitySchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleEligibilitySchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory |
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET roleManagement/directory/roleEligibilitySchedules/filterByCurrentUser(on='principal')
```

## Function parameters
The following table shows the parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|roleEligibilityScheduleFilterByCurrentUserOptions|The currently signed-in user. Allowed value is `principal`.|

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroleeligibilityschedule_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleEligibilitySchedules/filterByCurrentUser(on='principal')
```


### Response

The following is an example of the response showing a roleEligibilitySchedule that is through a group assignment.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleEligibilitySchedule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(unifiedRoleEligibilitySchedule)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.unifiedRoleEligibilitySchedule",
            "id": "2303e6ff-5939-496f-8057-9203db4c75f3",
            "principalId": "92f37639-ba1e-471c-b9ba-922371c740cb",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1",
            "directoryScopeId": "/",
            "appScopeId": null,
            "createdUsing": "2303e6ff-5939-496f-8057-9203db4c75f3",
            "createdDateTime": "2021-08-06T16:18:04.793Z",
            "modifiedDateTime": "0001-01-01T08:00:00Z",
            "status": "Provisioned",
            "memberType": "Group",
            "scheduleInfo": {
                "startDateTime": "2021-08-06T16:18:04.793Z",
                "recurrence": null,
                "expiration": {
                    "type": "afterDateTime",
                    "endDateTime": "2022-06-30T00:00:00Z",
                    "duration": null
                }
            }
        }
    ]
}
```

