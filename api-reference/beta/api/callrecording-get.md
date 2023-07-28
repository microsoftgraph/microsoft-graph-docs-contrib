---
title: "Get callRecording"
description: "Get a callRecording object associated with an onlineMeeting."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get callRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [callRecording](../resources/callrecording.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md).

For a recording, this API returns the metadata of the single recording associated with the online meeting. For the content of a recording, this API returns the stream of text associated with the recording.

> [!NOTE]
>
> * This is a metered API. For more information, see [payment models for meeting APIs](/graph/teams-licenses#payment-models-for-meeting-apis).
> * This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                        |
|:---------------------------------------|:-------------------------------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All                                    |
| Delegated (personal Microsoft account) | Not supported.                                                     |
| Application                            | OnlineMeetingRecording.Read.All, OnlineMeetingRecording.Read.Chat |

> **Notes:**
>
> * In delegated permission scenarios, [getting callRecording content](#example-2-get-callrecording-content)  is supported only for the meeting organizer. Meeting participants don't have permission to download meeting recordings. For more information, see [permissions or role-based access](/microsoftteams/tmr-meeting-recording-change). Tenant admins can unblock meeting participants to download meeting recording. For more information, see [block the download of Teams meeting recording files](/MicrosoftTeams/block-download-meeting-recording).
> * The application permission `OnlineMeetingRecording.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> This API works for a meeting only if the meeting has not expired. For more details, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

Get a single recording of an online meeting.

```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}
```

Get the content of a single recording of an online meeting.

```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}/content
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}/content
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

If successful, this method returns a `200 OK` response code and a [callRecording](../resources/callrecording.md) object in the response body.

## Examples

### Example 1: Get a callRecording

The following example shows how to get a single recording of an online meeting.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_callRecording",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecording"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/$entity",
    "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
    "createdDateTime": "2023-04-10T08:13:17.5990966Z"
}
```

### Example 2: Get callRecording content

The following example shows how to get the content of a single recording of an online meeting.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_callRecording_content",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc/content
```

#### Response

The following example contains bytes for the recording in the response body. The `content-type` header specifies the type of the recording content. The negative offsets indicate that the recording began while the conversation was ongoing.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true, 
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: video/mp4

<bytes of a recording>
```
