---
title: "List recordings"
description: "Get the list of callRecording objects associated with an onlineMeeting."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List recordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callRecording](../resources/callrecording.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md).

> [!NOTE]
> This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                        |
|:---------------------------------------|:-------------------------------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All                                    |
| Delegated (personal Microsoft account) | Not supported.                                                     |
| Application                            | OnlineMeetingRecording.Read.All, OnlineMeetingRecording.Read.Chat |

> **Note:** The application permission `OnlineMeetingRecording.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).


To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> This API works for a meeting only if the meeting has not expired. For more details, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

```http
GET /me/onlineMeetings/{meetingId}/recordings
GET /users/{userId}/onlineMeetings/{meetingId}/recordings
```

## Optional query parameters

This method does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callRecording](../resources/callrecording.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_callRecordings",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy"]
}
-->
``` http
GET  https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings",
    "@odata.count": 1,
    "value": [
        {
            "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
            "createdDateTime": "2023-04-10T08:13:17.5990966Z"
        }
    ]
}
```
