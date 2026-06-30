---
title: "Get callTranscript"
description: "Retrieve a single callTranscript associated with a Microsoft Teams online meeting and ad hoc call."
author: "mankadnandan"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/18/2025
---


# Get callTranscript

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a callTranscript object associated with a scheduled [onlineMeeting](../resources/onlinemeeting.md) and an [ad hoc call](../resources/adhoccall.md). This API supports the retrieval of call transcripts from private chat meetings and channel meetings, and ad hoc calls including PSTN, 1:1, and group calls. Private channel meetings are not supported.

Retrieving the transcript returns the metadata of the single transcript associated with an online meeting or an ad hoc call. Retrieving the content of the transcript returns the stream of text associated with the transcript.

> [!NOTE]
> For online meetings:
>
> * This is a metered API. For more information, see [payment models for meeting APIs](/graph/teams-licenses#payment-models-for-meeting-apis).
> * This API doesn't support meetings created using the [create onlineMeeting API](/graph/api/application-post-onlinemeetings) that are not associated with an event on the user's calendar.
> * This API might not return a call transcript if multiple meetings are scheduled under a single channel post thread.
> * This API works differently in one or more national clouds. For details, see [Implementation differences in national clouds](/graph/teamwork-national-cloud-differences).
> * If you want to retrieve meeting transcripts, use the [Create event](../api/user-post-events.md#example-5-create-and-enable-an-event-as-an-online-meeting) API instead.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "calltranscript_get" } -->
| Permission type| Least privileged permissions|Higher privileged permissions|
| :---| :---| :--- |
|Delegated (work or school account)| OnlineMeetingTranscript.Read.All (for online meetings) CallTranscripts.Read.All (for ad hoc calls)| Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application| OnlineMeetingTranscript.Read.All, OnlineMeetingTranscript.Read.Chat (for online meetings) CallTranscripts.Read.All (for ad hoc calls)| Not available.|

> [!NOTE]
> The application permissions `OnlineMeetingTranscript.Read.Chat` uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). The `OnlineMeetingTranscript.Read.Chat` permission applies only to scheduled private chat meetings, not to channel meetings.  

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

> [!NOTE]
> For online meetings:
>
> * This API is available for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).
> * This API is also available to users who are part of the meeting calendar invite, which applies to both private chat meetings and channel meetings.

### Tenant administrator controls for transcript access

Access to transcripts through this API requires the appropriate Graph permissions and is also
governed by two independent tenant administrator settings:

* **Graph API access to transcripts.** When disabled, all transcript requests (metadata, `metadataContent`, and `content`) return `403 Forbidden` with the `GraphAccessToTranscriptsDisabled` inner-error code, regardless of the requested format.

* **Speaker attribution.** When disabled, transcript content can be retrieved only without speaker information.

A tenant administrator configures these meeting settings in the Teams Admin Center, or by using the `Set-CsTeamsMeetingConfiguration` cmdlet.

The `/content` endpoint supports two formats:

* `text/vtt` (default) — WebVTT with timestamped utterances and `<v Speaker>` voice tags (speaker-attributed).
* `application/vnd.microsoft.graph.transcript+text` — timestamped utterances without speaker information (speaker-unattributed).

Select `text/vtt` with either the `Accept` header or the `$format` query parameter. The `application/vnd.microsoft.graph.transcript+text` format must be selected with the `Accept` header; it isn't supported through the `$format` query parameter.

When the tenant administrator has disabled speaker attribution, requesting the attributed format
(`text/vtt`) returns `403 Forbidden` with the `SpeakerAttributionNotAllowed` inner-error code. Retry with the unattributed format to retrieve the transcript. The speaker-attribution setting never blocks the unattributed format, but it remains subject to the Graph API access to transcripts setting.

> [!NOTE]
> The `application/vnd.microsoft.graph.transcript+text` format and the related tenant administrator controls take effect at the end of July 2026.

## HTTP request

On the `/content` endpoints, select the transcript content format with the `Accept` request header, as described in [Transcript content formats](#transcript-content-formats).

Get a single transcript for an online meeting

<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/transcripts/{transcriptId}
GET /users/{userId}/onlineMeetings/{meetingId}/transcripts/{transcriptId}
```

Get the content of a single transcript for an online meeting

* Both transcription and speaker attribution are enabled

```http
GET /me/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
GET /users/{userId}/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
```

* Transcription is enabled, but speaker attribution is disabled

```http
GET /me/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
GET /users/{userId}/onlineMeetings/{meetingId}/transcripts/{transcriptId}/content
```

Get a single transcript for an ad hoc call

```http
GET /me/adhocCalls/{callId}/transcripts/{transcriptId}
GET /users/{userId}/adhocCalls/{callId}/transcripts/{transcriptId}
```

Get the content of a single transcript for an ad hoc call

* Both transcription and speaker attribution are enabled

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{callId}/transcripts/{transcriptId}/content
GET /users/{userId}/adhocCalls/{callId}/transcripts/{transcriptId}/content
```

* Transcription is enabled, but speaker attribution is disabled

```http
GET /me/adhocCalls/{callId}/transcripts/{transcriptId}/content
GET /users/{userId}/adhocCalls/{callId}/transcripts/{transcriptId}/content
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

### Request headers

| Header       | Value |
|:-------------|:--------|
|Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept       | `text/vtt` or `application/vnd.microsoft.graph.transcript+text`. Optional. On the `/content` endpoints, selects the transcript content format. For `text/vtt`, this is equivalent to the `$format` query parameter; the `application/vnd.microsoft.graph.transcript+text` format is supported only through this header.|

### Request body

Don't supply a request body for this method.

### Response

If successful, this method returns a `200 OK` response code and a [callTranscript](../resources/calltranscript.md) object in the response body.

### Transcript content formats

The `/content` endpoint supports the following formats. Select `text/vtt` with either the `$format` query parameter or the `Accept` request header. The `application/vnd.microsoft.graph.transcript+text` format must be selected with the `Accept` request header.

| Format | Speaker attribution | Description |
|--------|---------------------|-------------|
| `text/vtt` | Yes | WebVTT with timestamped utterances and `<v Speaker>` voice tags. Returned by default. |
| `application/vnd.microsoft.graph.transcript+text` | No | Timestamped utterances only, without `<v Speaker>` voice tags. |

If the tenant disallows speaker attribution, requests for `text/vtt` fail with `403 Forbidden` / `SpeakerAttributionNotAllowed`; request `application/vnd.microsoft.graph.transcript+text` instead.

### Error responses

This API is governed by tenant administrator settings for transcript access and speaker attribution. Branch on the `innerError.code` value, not the message text. Messages are subject to change.

#### Graph API access to transcripts is disabled

If a tenant administrator has turned off Graph API access to transcripts for the tenant, all transcript requests — metadata, `metadataContent`, and `content` — return `403 Forbidden` with the `GraphAccessToTranscriptsDisabled` inner-error code. There is no request-side workaround; the app receives this response until an administrator re-enables access.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "Forbidden",
    "message": "Graph API access to transcripts is disabled for this tenant.",
    "innerError": {
      "code": "GraphAccessToTranscriptsDisabled"
    }
  }
}
```

#### Speaker-attributed content is disabled

When a tenant administrator disallows speaker attribution, the `/content` endpoints return `403 Forbidden` with the `SpeakerAttributionNotAllowed` inner-error code **only if the request asks for a speaker-attributed format** (`text/vtt`). Retry the same request asking for the unattributed format, `application/vnd.microsoft.graph.transcript+text`, which succeeds. This error applies to the `/content` endpoints only (per-meeting and ad hoc); transcript metadata requests are unaffected.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "Forbidden",
    "message": "Speaker-attributed transcript content is disabled for this tenant. Retry with Accept 'application/vnd.microsoft.graph.transcript+text'.",
    "innerError": {
      "code": "SpeakerAttributionNotAllowed"
    }
  }
}
```

### Examples

> [!NOTE]
> The docx format for transcripts is deprecated as of May 31, 2023.

#### Example 1: Get a call transcript for online meetings

The following example shows how to get a single transcript of an online meeting.

##### Request

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_callTranscript",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts/$entity",
    "id": "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4",
    "meetingId": "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ",
    "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
    "createdDateTime": "2021-09-17T06:09:24.8968037Z",
    "endDateTime": "2021-09-17T06:27:25.2346000Z",
    "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
    "transcriptContentUrl": "https://graph.microsoft.com/beta/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts/('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content",
    "meetingOrganizer": {
        "application": null,
        "device": null,
        "user": {
            "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
            "id": "ba321e0d-79ee-478d-8e28-85a19507f456",
            "displayName": null,
            "userIdentityType": "aadUser",
            "tenantId": "cd6cee19-2d76-4ee0-8f47-9ed12ee44331",
        }
    }
}
```

### Example 2: Get a call transcript for ad hoc call

The following example shows how to get a single transcript of an ad hoc call.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_adhoc",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA="]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=

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

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-adhoc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('f2e8e111-3887-4936-87f8-639292c70d34')/adhocCalls('5f3640e7-a59c-4bec-82ca-e66251f795b7')/transcripts/$entity",
  "id": "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=",
  "callId": "5f3640e7-a59c-4bec-82ca-e66251f795b7",
  "createdDateTime": "2025-08-11T06:03:42.9757215Z",
  "endDateTime": "2025-08-11T06:04:21.2551933Z",
  "contentCorrelationId": "c316fb26-aed9-4476-8827-b5be74f74051-10002",
  "transcriptContentUrl": "https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts('MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=')/content",
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

### Example 3: Get a callTranscript content for an online meeting where speaker-attributed content is enabled

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_online_speaker_attribution_enabled",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-content-online-speaker-attribution-enabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-content-online-speaker-attribution-enabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-content-online-speaker-attribution-enabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-content-online-speaker-attribution-enabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-content-online-speaker-attribution-enabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calltranscript-content-online-speaker-attribution-enabled-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-content-online-speaker-attribution-enabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Response contains bytes for the transcript in the body. `content-type` header specifies type of the transcript content. Negative offsets indicate that the transcription began while the conversation was ongoing.

>[!NOTE]
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

0:0:0.0 --> 0:0:5.320
<v User Name>This is a transcript test.</v>
```

### Example 4: Get a callTranscript content for an ad hoc call when speaker-attributed content is disabled

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_adhoc_speaker_attribution_disabled",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA="]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/content
Accept: application/vnd.microsoft.graph.transcript+text
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-content-adhoc-speaker-attribution-disabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-content-adhoc-speaker-attribution-disabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-content-adhoc-speaker-attribution-disabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-content-adhoc-speaker-attribution-disabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-content-adhoc-speaker-attribution-disabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-content-adhoc-speaker-attribution-disabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The response contains the transcript in the body as bytes. The `content-type` header specifies the type of the transcript content. Negative offsets indicate that the transcription began while the conversation was ongoing.

>[!NOTE]
>The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/vnd.microsoft.graph.transcript+text

00:00:01.500 --> 00:00:04.000 

Hello, thanks for joining. 

00:00:04.000 --> 00:00:07.200 

Glad to be here. 
```

### Example 5: Get a callTranscript content for an online meeting when speaker-attributed content is disabled

The following example shows how to get the content of a single transcript of an online meeting when speaker-attributed content is disabled.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_online_speaker_attribution_disabled",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content
Accept: application/vnd.microsoft.graph.transcript+text
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-content-online-speaker-attribution-disabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-content-online-speaker-attribution-disabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-content-online-speaker-attribution-disabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-content-online-speaker-attribution-disabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-content-online-speaker-attribution-disabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calltranscript-content-online-speaker-attribution-disabled-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-content-online-speaker-attribution-disabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The response contains the transcript content in the body as bytes. The `content-type` header specifies the type of the transcript content. Negative offsets indicate that the transcription began while the conversation was ongoing.

> [!NOTE]
> The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/vnd.microsoft.graph.transcript+text

00:00:01.500 --> 00:00:04.000 

Hello, thanks for joining. 

00:00:04.000 --> 00:00:07.200 

Glad to be here. 
```

### Example 6: Get unattributed callTranscript content

The following example shows how to get transcript content without speaker attribution. Request this format using the `Accept` header.

#### Request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content
Accept: application/vnd.microsoft.graph.transcript+text
```

#### Response

The response contains the transcript content in the body as bytes, without `<v Speaker>` voice tags. The content-type header specifies the type of the transcript content.

> [!NOTE]
> The response object shown here might be shortened for readability.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/vnd.microsoft.graph.transcript+text

00:00:16.246 --> 00:00:17.726
This is a transcript test.
```

### Example 7: Speaker attribution disabled by tenant policy

The following example shows the response when speaker attribution is disabled for the tenant and the request asks for an attributed format (`text/vtt`). Retry with `application/vnd.microsoft.graph.transcript+text` to receive the unattributed transcript.

#### Request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/content
Accept: text/vtt
```

#### Response

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "Forbidden",
    "message": "Speaker-attributed transcript content is disabled for this tenant. Retry with Accept 'application/vnd.microsoft.graph.transcript+text'.",
    "innerError": {
      "code": "SpeakerAttributionNotAllowed"
    }
  }
}
```

### Example 8: Get a callTranscript content for an ad hoc call when speaker-attributed content is enabled

The following example shows how to get the content of a single transcript of an ad hoc call when speaker-attributed content is enabled.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_adhoc_speaker_attribution_enabled",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA="]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/content
Accept: text/vtt
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-content-adhoc-speaker-attribution-enabled-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-content-adhoc-speaker-attribution-enabled-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-content-adhoc-speaker-attribution-enabled-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-content-adhoc-speaker-attribution-enabled-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-content-adhoc-speaker-attribution-enabled-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-content-adhoc-speaker-attribution-enabled-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

00:00:01.500 --> 00:00:04.000 
<v User Name>Hello, thanks for joining.</v>

00:00:04.000 --> 00:00:07.200 
<v User Name>Glad to be here.</v>
```

### Example 9: Get a callTranscript metadataContent for online meetings

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_metadatacontent",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ", "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts/MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4/metadataContent
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-metadatacontent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-metadatacontent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-metadatacontent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-metadatacontent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-metadatacontent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calltranscript-metadatacontent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-metadatacontent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> [!NOTE]
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

00:00:16.246 --> 00:00:17.726
{"startDateTime":"2023-03-08T08:22:30.0461639+00:00","endDateTime":"2023-03-08T08:22:31.5261639+00:00","speakerName":"User Name","spokenText":"This is a transcription test.","spokenLanguage":"en-us"}
```

### Example 10: Get a callTranscript metadataContent for ad hoc calls

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_metadatacontent1",
  "sampleKeys": ["f2e8e111-3887-4936-87f8-639292c70d34", "5f3640e7-a59c-4bec-82ca-e66251f795b7", "MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/metadataContent"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f2e8e111-3887-4936-87f8-639292c70d34/adhocCalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyMjMTk6NWFiOWQ2OGUxNDhlNDgyNThmYmMzOWYwOGUzOTkyN2NAdGhyZWFkLnYyIyM1ZjM2NDBlNy1hNTljLTRiZWMtODJjYS1lNjYyNTFmNzk1YjctMTc1NDg5MjIyMi1UcmFuc2NyaXB0VjIjIzA=/metadataContent
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-metadatacontent1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-metadatacontent1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-metadatacontent1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-metadatacontent1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-metadatacontent1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-metadatacontent1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> [!NOTE]
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
{"startDateTime":"2025-08-11T06:03:46.6390101+00:00","endDateTime":"2025-08-11T06:03:50.8790101+00:00","speakerName":"MOD Administrator","spokenText":"Hello. Hello. Hello. Hello. Hello. Hello.","spokenLanguage":"en-us"}

00:00:08.063 --> 00:00:08.103
{"startDateTime":"2025-08-11T06:03:51.0390101+00:00","endDateTime":"2025-08-11T06:03:51.0790101+00:00","speakerName":"MOD Administrator","spokenText":"Oh.","spokenLanguage":"en-us"}
```

### Example 11: Get a callTranscript from a corresponding recording using contentCorrelationId

The following example shows how to get a single transcript of an online meeting corresponding to a recording using the **contentCorrelationId** property.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_using_contentCorrelationId",
  "sampleKeys": ["MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/transcripts?$filter=contentcorrelationId+eq+'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calltranscript-using-contentcorrelationid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-calltranscript-using-contentcorrelationid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-calltranscript-using-contentcorrelationid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calltranscript-using-contentcorrelationid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-calltranscript-using-contentcorrelationid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-calltranscript-using-contentcorrelationid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-calltranscript-using-contentcorrelationid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('1273a016-201d-4f95-8083-1b7f99b3edeb')/onlineMeetings('MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy')/transcripts",
    "@odata.count": 1,
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET me/onlineMeetings('<key>')/transcripts('<key>')?$select=callId,content",
    "value": [
        {
            "id": "VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyNhMTRlZWNiZC0xM2RmLTRjN2EtOWM3ZC1mZDg3OGU0YTU4YTI=",
            "meetingId": "MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy",
            "callId": "26c38520-e74d-4391-8188-cb458d413825",
            "contentCorrelationId": "e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/1273a016-201d-4f95-8083-1b7f99b3edeb/onlineMeetings/MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19OV1EwWm1GbFpEY3RORFJqTmkwMFlXRm1MV0U1WXpBdE9UZzJNMk0yTm1Nd1pERTNAdGhyZWFkLnYy/transcripts/VjIjIzExMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwNDA3ZjYyNjg0ZmQ0ZGEwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDRiZWQ5YTIzZGMyZmZmNDY4OTc4OTg0NjU2ZjI3MjE5IyNhMTRlZWNiZC0xM2RmLTRjN2EtOWM3ZC1mZDg3OGU0YTU4YTI=/content",
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
