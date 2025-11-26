---
title: "Get callTranscript"
description: "Retrieve a single callTranscript associated with a Microsoft Teams online meeting and ad hoc call."
author: "v-sdhakshina"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 11/26/2025
---

# Get callTranscript

Namespace: microsoft.graph

Retrieve a [callTranscript](../resources/calltranscript.md) object associated with a scheduled [onlineMeeting](../resources/onlinemeeting.md). This API supports the retrieval of call transcripts from all meeting types except live events.

Retrieving the transcript returns the metadata of the single transcript associated with an online meeting or an ad hoc call. Retrieving the content of the transcript returns the stream of text associated with the transcript.

> [!NOTE]
> For online meetings:
>
> * This API doesn't support meetings created using the [create onlineMeeting API](/graph/api/application-post-onlinemeetings) that are not associated with an event on the user's calendar.
> * This API works differently in one or more national clouds. For details, see [Implementation differences in national clouds](/graph/teamwork-national-cloud-differences).
> * If you want to retrieve meeting transcripts, use the [Create event](../api/user-post-events.md) API instead.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "ignored", "name": "calltranscript_get" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)| OnlineMeetingTranscript.Read.All (for online meetings) <br> <br> CallTranscripts.Read.All (for ad hoc calls)| Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application| OnlineMeetingTranscript.Read.All, <br> OnlineMeetingTranscript.Read.Chat (for online meetings) <br> CallTranscripts.Read.All (for ad hoc calls)| Not available.|

> [!NOTE]
>
> The application permissions `OnlineMeetingTranscript.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). The `OnlineMeetingTranscript.Read.Chat` permission applies only to scheduled private chat meetings, not to channel meetings.  

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> For online meetings:
>
> * This API works for a meeting only if the meeting has not expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).
> * This API is also available to users who are part of the meeting calendar invite, which applies to both private chat meetings and channel meetings.

## HTTP request

### For an online meeting

Get a single transcript

<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/transcripts/{transcriptId}
GET /users/{userId}/onlineMeetings/{meetingId}/transcripts/{transcriptId}
```

Get the content of a single transcript

<!-- { "blockType": "ignored" } -->
```http
GET me/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
GET users/{userId}/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
```

### For an ad hoc call

Get a single transcript

```http
GET /me/adhocCalls/{callId}/transcripts/{transcriptId}
GET /users/{userId}/adhocCalls/{callId}/transcripts/{transcriptId}
```

Get the content of a single transcript

```http
GET me/adhocCalls/{callId}/transcripts/{transcriptId}/content
GET /users/{userId}/adhocCalls/{callId}/transcripts/{transcriptId}/content
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

If successful, this method returns a `200 OK` response code and a [callTranscript](../resources/callTranscript.md) object in the response body.

## Examples

> [!NOTE]
> The docx format for transcripts is deprecated as of May 31, 2023.

### Example 1: Get a callTranscript for an online meeting

The following example shows how to get a single transcript of an online meeting.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calltranscript-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts/$entity",
    "id": "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4",
    "meetingId": "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ",
    "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
    "createdDateTime": "2021-09-17T06:09:24.8968037Z",
    "endDateTime": "2021-09-17T06:27:25.2346000Z",
    "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
    "transcriptContentUrl": "https://graph.microsoft.com/v1.0/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts/('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content",
    "meetingOrganizer": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
            "id": "ba321e0d-79ee-478d-8e28-85a19507f456",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "cd6cee19-2d76-4ee0-8f47-9ed12ee44331"
        }
    }
}
```

### Example 2: Get a callTranscript for an ad hoc call

The following example shows how to get a single transcript of an ad hoc call.

#### Request

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA="]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=
```

#### Response

> [!NOTE]
> The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "<https://graph.microsoft.com/v1.0/$metadata#users('f2e8e111-3887-4936-87f8-639292c70d34')/adhocCalls('5f3640e7-a59c-4bec-82ca-e66251f795b7')/transcripts/$entity>",
  "id": "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=",
  "callId": "5f3640e7-a59c-4bec-82ca-e66251f795b7",
  "createdDateTime": "2025-08-11T06:03:42.9757215Z",
  "endDateTime": "2025-08-11T06:04:21.2551933Z",
  "contentCorrelationId": "c316fb26-aed9-4476-8827-b5be74f74051-10002",
  "transcriptContentUrl": "<https://graph.microsoft.com/v1.0/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts('MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=')/content>",
  "meetingOrganizer": {
      "application": null,
      "device": null,
      "user": {
            "@odata.type": "#microsoft.graph.teamworkUserIdentity",
            "id": "f2e8e111-3887-4936-87f8-639292c70d34",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "8393309d-9fb7-4cce-aafb-eedc8c5781e2"
      }
   }
}
```

### Example 3: Get a callTranscript content for an online meeting

The following example shows how to get the content of a single transcript of an online meeting.

#### Request

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content
```

### Example 4: Get a callTranscript content for an ad hoc call

#### Request

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/content?$format=text/vtt
```

#### Response

The response contains the transcript in the body as bytes. The `content-type` header specifies the type of the transcript content. Negative offsets indicate that the transcription began while the conversation was ongoing.

>[!NOTE]
> The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT

00:00:03.663 --> 00:00:07.903
<v MOD Administrator>Hello. Hello. Hello. Hello. Hello. Hello.</v>
00:00:08.063 --> 00:00:08.103
<v MOD Administrator>Oh.</v>
```

### Example 5: Get a callTranscript content specifying $format query param

The following example shows how to get a single transcript of an online meeting specifying the `$format` query parameter.

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_format",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content?$format=text/vtt
```

#### Response

Response contains bytes for the transcript in the body. The `content-type` header specifies the type of the transcript content.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT

0:0:0.0 --> 0:0:5.320
<v User Name>This is a transcript test.</v>
```

### Example 6: Get a callTranscript metadataContent for online meetings

#### Request

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_metadatacontent",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/metadataContent
```

#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT
00:00:16.246 --> 00:00:17.726
{"startDateTime":"2023-03-08T08:22:30.0461639+00:00","endDateTime":"2023-03-08T08:22:31.5261639+00:00","speakerName":"User Name","spokenText":"This is a transcription test.","spokenLanguage":"en-us"}
```

### Example 7: Get a callTranscript metadataContent for ad hoc calls

#### Request

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_metadatacontent1",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/metadataContent"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/metadataContent
```

#### Response

> [!NOTE]
>The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT
00:00:03.663 --> 00:00:07.903
{"startDateTime":"2025-08-11T06:03:46.6390101+00:00","endDateTime":"2025-08-11T06:03:50.8790101+00:00","speakerName":"MOD Administrator","spokenText":"Hello. Hello. Hello. Hello. Hello. Hello.","spokenLanguage":"en-us"}

00:00:08.063 --> 00:00:08.103
{"startDateTime":"2025-08-11T06:03:51.0390101+00:00","endDateTime":"2025-08-11T06:03:51.0790101+00:00","speakerName":"MOD Administrator","spokenText":"Oh.","spokenLanguage":"en-us"}
```

### Example 8: Get a callTranscript from a corresponding recording using contentCorrelationId

The following example shows how to get a single transcript of an online meeting corresponding to a recording using the **contentCorrelationId** property.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_callTranscript_using_contentCorrelationId",
  "sampleKeys": ["e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/me/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/transcripts?$filter=contentcorrelationId+eq+'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('1273a016-201d-4f95-8083-1b7f99b3edeb')/onlineMeetings('MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy')/transcripts",
    "@odata.count": 1,
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET me/onlineMeetings('<key>')/transcripts('<key>')?$select=callId,content",
    "value": [
        {
            "id": "VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyNhMTRlZWNiZC0xM2RmLTRjN2EtOWM3ZC1mZDg3OGU0YTU4YTI=",
            "meetingId": "MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy",
            "callId": "26c38520-e74d-4391-8188-cb458d413825",
            "contentCorrelationId": "e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0",
            "transcriptContentUrl": "https://graph.microsoft.com/v1.0/users/1273a016-201d-4f95-8083-1b7f99b3edeb/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/transcripts/VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyNhMTRlZWNiZC0xM2RmLTRjN2EtOWM3ZC1mZDg3OGU0YTU4YTI=/content",
            "createdDateTime": "2024-07-12T11:37:59.0113199Z",
            "endDateTime": "2024-07-12T11:37:59.0113199Z",
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
