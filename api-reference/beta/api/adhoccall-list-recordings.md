---
title: "List recordings-ad hoc calls"
description: "Get the list of callRecording objects associated with an ad hoc call."
author: "SukanyaDas-MSFT"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/20/2025
---

# List recordings for ad hoc calls

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callRecording](../resources/callrecording.md) objects associated with an [ad hocCall](/graph/api/resources/adhoccall?view=graph-rest-beta). This API supports the retrieval of call recordings from unscheduled PSTN, VoIP and group calls.

> [!NOTE]
>
> - For ad hoc calls:
>   - Subscribe to [notifications](/graph/teams-changenotifications-callrecording-and-calltranscript) to get access to the call id.
>   - To obtain the call id while the call is still ongoing, have the app get called through [App-hosted/service-hosted Calls](https://learn.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-1.0) and use the `callChainId`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "adhoccall_list_recordings" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|CallRecordings.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|CallRecordings.Read.All, CallRecordings.Read.Chat|Not available.|

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch the ad hoc calls online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access ad hoc calls on behalf of a user](/graph/cloud-communication-adhoc-call-application-access-policy).

## HTTP request

```http
GET /me/adhocCalls/{callid}/recordings  
GET /users/{userId}/adhocCalls/{callId}/recordings/{recordingId}  
```

## Response

If successful, this method returns a `200 OK` response code and a collection of [callRecording](../resources/callrecording.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callRecordings",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy"]
}
-->
``` http
GET  https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/adhoccalls/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/
```

---

### Response

The following example shows the response.

> [!NOTE]
> The response object shown here might be shortened for readability.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/adhocCalls/('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings",
  "@odata.count": 1,
  "value": [
    {
      "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
      "meetingId": "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy",
      "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
      "createdDateTime": "2023-04-10T08:13:17.5990966Z",
      "endDateTime": "2023-04-10T08:27:25.2346000Z",
      "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
      "recordingContentUrl": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/adhoccalls('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/('7e31db25-bc6e-4fd8-96c7-e01264e9b6fc')/content",
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
