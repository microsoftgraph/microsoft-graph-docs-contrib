---
title: "List recordings"
description: "Get the list of callRecording objects associated with an adhoc call."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List recordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callRecording](../resources/callrecording.md) objects associated with an [ad hoc call](../resources/adhoccall.md). This API supports the retrieval of ad hoc call recordings from one-on-one, group and PSTN calls.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "adhoccall-list-recordings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/adhoccall-list-recordings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /md/adhocCalls/{adhocCallId}/recordings
GET /users/{usersId}/adhocCalls/{adhocCallId}/recordings
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [callRecording](../resources/callrecording.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_callrecording"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/adhocCalls/{adhocCallId}/recordings
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callRecording)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/adhocCall('af630fe0-04d3-4559-8cf9-91fe45e36296')/recordings",
  "@odata.count": 1,
  "value": [
    {
      "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
      "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
      "createdDateTime": "2023-04-10T08:13:17.5990966Z",
      "endDateTime": "2023-04-10T08:27:25.2346000Z",
      "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
      "recordingContentUrl": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/adhocCalls('af630fe0-04d3-4559-8cf9-91fe45e36296')/recordings/('7e31db25-bc6e-4fd8-96c7-e01264e9b6fc')/content",
      "meetingOrganizer": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
          "id": "b935e675-5e67-48b9-8d45-249d5f88e964",
          "displayName": null,
          "userIdentityType": "aadUser",
          "tenantId": "d6c9ce1e-4f71-8dc3-5b55-6a411ea46324"
        }
      }
    }
  ]
}
```
