---
title: "Get callRecording"
description: "Retrieve a single callRecording associated with a Microsoft Teams online meeting."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get callRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a [callRecording](../resources/callrecording.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md).

Retrieving the recording returns the metadata of the single recording associated with the online meeting. Retrieving the content of the recording returns the stream of text associated with the recording.

> **Notes:**
>
> - In the future, Microsoft may require you or your customers to pay additional fees based on the amount of data accessed through the API.
> - This API works differently in one or more national clouds. For details, see [Implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OnlineMeetingRecording.Read.All |
|Delegated (personal Microsoft account) | Not supported    |
|Application | OnlineMeetingRecording.Read.All, OnlineMeetingRecording.Read.Chat* |

> **Note**: Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).


To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> This API works for a meeting only if the meeting has not expired. For more details, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

Get a single recording of an online meeting.

```http
GET /me/onlineMeetings/{meetingId}/recordings/recording/{recordingId}
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}
```

Get the content of a single recording of an online meeting.

```http
GET me/onlineMeetings/{meetingId}/recordings/{recordingId}/content
GET users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}/content
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [callRecording](../resources/callRecording.md) object in the response body.

## Examples

### Example 1: Get a callRecording
#### Request

# [HTTP](#tab/http)

``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc
```

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/$entity",
    "id": "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc",
    "createdDateTime": "2023-04-10T08:13:17.5990966Z"
}
```

### Example 2: Get a callRecording content

> [!NOTE]
> In the future, Microsoft may require you or your customers to pay additional fees based on the amount of data accessed through the API.

#### Request

# [HTTP](#tab/http)

``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc/content
```

---

#### Response

Response contains bytes for the recording in the body. `content-type` header specifies type of the recording content. Negative offsets indicate that the recording on began while the conversation was ongoing.

>**Note:** The response object shown here might be shortened for readability.

```http

```
