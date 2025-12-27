---
title: "Get callRecording"
description: "Get a callRecording object associated with a scheduled online meeting and ad hoc calls."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 12/02/2025
---

# Get callRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [callRecording](../resources/callrecording.md) object associated with a scheduled [online meeting](../resources/onlinemeeting.md) and an [ad hoc call](../resources/adhoccall.md). This API supports the retrieval of call recordings from all meeting types except live events.

For a recording, this API returns the metadata of the single recording associated with the online meeting or an ad hoc call. For the content of a recording, this API returns the stream of bytes associated with the recording.

> [!NOTE]
> For online meetings:
> * This is a metered API. For more information, see [payment models for meeting APIs](/graph/teams-licenses#payment-models-for-meeting-apis).
> * This API doesn't support meetings created by using the [create onlineMeeting API](/graph/api/application-post-onlinemeetings) that are not associated with an event on the user's calendar.
> * This API might not return a call recording if multiple meetings are scheduled under a single channel post thread.
> * This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "callrecording_get" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|OnlineMeetingRecording.Read.All (for online meetings) <br> CallRecording.Read.All (for ad hoc calls)|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application| OnlineMeetingRecording.Read.All, <br> OnlineMeetingRecording.Read.Chat (for online meetings) <br> CallRecordings.Read.All (for ad hoc calls) |Not available.|

> [!NOTE]
>
> * In delegated permission scenarios, [getting callRecording content](#example-3-get-callrecording-content-for-an-online-meeting)  is supported only for the meeting organizer. Meeting participants don't have permission to download meeting recordings. For more information, see [permissions or role-based access](/microsoftteams/tmr-meeting-recording-change).  
> * For online meetings, tenant admins can unblock meeting participants to download meeting recordings. For ad hoc calls, tenant admins can grant on behalf of permissions for user making the call. For more information, see [block the download of Teams meeting recording files](/MicrosoftTeams/block-download-meeting-recording).
> * The application permission `OnlineMeetingRecording.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). This permission applies only to scheduled private chat meetings, not to channel meetings.

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch online meetings or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> * The online meeting API is available for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).
> * For an online meeting, the respective API is also available to users who are part of the meeting calendar invite, which applies to both private chat meetings and channel meetings.

## HTTP request

To get a single recording for an online meeting

<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}
```

Get the content of a single recording

<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/recordings/{recordingId}/content
GET /users/{userId}/onlineMeetings/{meetingId}/recordings/{recordingId}/content
```

To get a single recording for an ad hoc call

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{callId}/recordings/{recordingId}
GET /users/{userId}/adhocCalls/{callId}/recordings/{recordingId}
```

Get the content of a single recording

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{callId}/recordings/{recordingId}/content
GET /users/{userId}/adhocCalls/{callId}/recordings/{recordingId}/content
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [callRecording](../resources/callrecording.md) object in the response body.

## Examples

### Example 1: Get a callRecording for an online meeting

The following example shows how to get a single recording of an online meeting.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

#### Response

The following example shows the response.

> [!Note] 
> The response object shown here might be shortened for readability.

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
  "meetingId": "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy",
  "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
  "createdDateTime": "2023-04-10T08:13:17.5990966Z",
  "endDateTime": "2024-01-29T09:27:25.2346000Z",
  "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
  "recordingContentUrl": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy')/recordings/('7e31db25-bc6e-4fd8-96c7-e01264e9b6fc')/content",
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
```

### Example 2: Get a callRecording for an ad hoc call

The following example shows how to get a single recording of an ad hoc call.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "1c9ddbc9-82be-46b6-8edd-bf833fe33a03",  "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-adhoc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-adhoc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-adhoc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-adhoc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-adhoc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-adhoc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('f2e8e111-3887-4936-87f8-639292c70d34')/adhocCalls('1c9ddbc9-82be-46b6-8edd-bf833fe33a03')/recordings/$entity",
    "id": "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw",
    "callId": "1c9ddbc9-82be-46b6-8edd-bf833fe33a03",	 
    "createdDateTime": "2025-08-11T06:57:17.4065904Z",
    "endDateTime": "2025-08-11T06:57:28.2265904Z",
    "contentCorrelationId": "58cfc66a-710f-4be7-adc0-1ca5a28f2c0c-0",
    "recordingContentUrl": "https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw/content",
    "meetingOrganizer": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type":"#microsoft.graph.teamworkUserIdentity",
            "id":"f2e8e111-3887-4936-87f8-639292c70d34",
            "displayName":null,
            "userIdentityType":"aadUser",
            "tenantId": "8393309d-9fb7-4cce-aafb-eedc8c5781e2"
        }
    }   
}
```

### Example 3: Get callRecording content for an online meeting

The following example shows how to get the content of a single recording of an online meeting.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_content",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy", "7e31db25-bc6e-4fd8-96c7-e01264e9b6fc"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM1ZTY3NS01ZTY3LTQ4YjktOGQ0NS0yNDlkNWY4OGU5NjQqMCoqMTk6bWVldGluZ19ZbU0zTnpJNU9USXRZakU0WlMwME1tUTNMVGt6TVRRdFkyWm1PRGRtWmpsaVptRTNAdGhyZWFkLnYy/recordings/7e31db25-bc6e-4fd8-96c7-e01264e9b6fc/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-content-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

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

### Example 4: Get a callRecording content for an ad hoc call

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_content_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "1c9ddbc9-82be-46b6-8edd-bf833fe33a03", "VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings/VjMjIzE5OjVhYjlkNjhlMTQ4ZTQ4MjU4ZmJjMzlmMDhlMzk5MjdjQHRocmVhZC52MiMjMWM5ZGRiYzktODJiZS00NmI2LThlZGQtYmY4MzNmZTMzYTAzLTE3NTQ4OTU0MzctUmVjb3JkaW5nIyMw/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-content-adhoc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-content-adhoc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-content-adhoc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-content-adhoc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-content-adhoc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-content-adhoc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The response contains bytes for the recording in the body. The `content-type` header specifies the type of the recording content. Negative offsets indicate that the recording began while the conversation was ongoing.

>**Note:** The response object shown here might be shortened for readability.
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

### Example 5: Get a callRecording for an online meeting from a corresponding transcript using contentCorrelationId

The following example shows how to get a single recording of an online meeting corresponding to a transcript using the **contentCorrelationId** property.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callRecording_using_contentCorrelationId",
  "sampleKeys": ["MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/recordings?$filter=contentcorrelationId+eq+'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-callrecording-using-contentcorrelationid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-callrecording-using-contentcorrelationid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-callrecording-using-contentcorrelationid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-callrecording-using-contentcorrelationid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-callrecording-using-contentcorrelationid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-callrecording-using-contentcorrelationid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('1273a016-201d-4f95-8083-1b7f99b3edeb')/onlineMeetings('MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy')/recordings",
    "@odata.count": 1,
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET me/onlineMeetings('<key>')/recordings?$select=callId,content",
    "value": [
        {
            "id": "VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyM5YzM3ZDZhMS1mNGJmLTRjZWMtOTFmYS0xNDc1MGUwNzFhMTg=",
            "meetingId": "MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy",
            "callId": "26c38520-e74d-4391-8188-cb458d413825",
            "contentCorrelationId": "e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0",
            "createdDateTime": "2024-07-12T11:37:59.0113199Z",
            "endDateTime": "2024-07-12T11:38:11.3313199Z",
            "recordingContentUrl": "https://graph.microsoft.com/beta/users/1273a016-201d-4f95-8083-1b7f99b3edeb/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/recordings/VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyM5YzM3ZDZhMS1mNGJmLTRjZWMtOTFmYS0xNDc1MGUwNzFhMTg=/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "1273a016-201d-4f95-8083-1b7f99b3edeb",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
                }
            }
        }
    ]
}
```
