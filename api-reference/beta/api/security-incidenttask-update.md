---
title: "Update incidentTask"
description: "Update the properties of an incidentTask object."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update incidentTask

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an incidentTask object. This operation can be used to update the status of an incident task.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-update"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/incidentTasks/{incidentTaskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.incidentTaskStatus|The status of the incident task. The possible values are: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [incidentTask](../resources/incidenttask.md) object in the response body.

## Examples

### Request

The following example shows a request to update the status of an incident task.

<!-- {
  "blockType": "request",
  "name": "update_incidenttask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/incidentTasks/213213
Content-Type: application/json

{
    "status": "completed"
}
```

### Response

The following example shows the successful response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.incidentTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "213213",
    "incidentId": "123",
    "status": "completed",
    "source": "defenderExpertsXDR",
    "displayName": "Reset device testmachine20",
    "description": "Reset the machine",
    "createdDateTime": "2023-06-26T19:07:39.7433333Z",
    "createdByDisplayName": "Defender Experts",
    "lastModifiedDateTime": "2023-06-27T10:49:33.98Z",
    "lastModifiedByDisplayName": "bealfasi",
    "actionType": "text",
    "actionStatus": "notStarted",
    "responseAction": null
}
