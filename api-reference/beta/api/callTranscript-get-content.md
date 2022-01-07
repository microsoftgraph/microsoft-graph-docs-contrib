---
title: "Get callTranscript content"
description: "Retrieve single callTranscript content associated with a Microsoft Teams Online Meeting."
author: "mankadnandan"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get callTranscript content

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve single [callTranscript](../resources/callTranscript.md) content associated with a Microsoft Teams Online Meeting.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OnlineMeetingArtifact.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> [!NOTE]
> This API is in beta and might undergo changes with respect to the request and/or response schema. Use of this API in production applications is not recommended.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET me/onlineMeetings({meetingId})/transcripts({transcriptId})/content
GET users({userId})/onlineMeetings({meetingId})/transcripts({transcriptId})/content
```

## Optional query parameters

This method supports the `$format` [OData query parameters](/graph/query-parameters) to help customize the response.

The supported format types are `text/vtt` for vtt OR `application/vnd.openxmlformats-officedocument.wordprocessingml.document` for docx format.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Accept  | text/vtt OR  application/vnd.openxmlformats-officedocument.wordprocessingml.document. Optional.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and contains bytes for [callTranscript](../resources/callTranscript.md) object in the response body. `content-type` header specifies type of the transcript content.

## Examples

### Example 1: Get a callTranscript Content
#### Request
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content"
}
-->
``` http
GET https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content
```
#### Response

Response contains bytes for the transcript in the body. `content-type` header specifies type of the transcript content.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT

0:0:0.0 --> 0:0:5.320
<v User Name>This is a transcript test.</v>
```

### Example 2: Get a callTranscript Content specifying $format query param
#### Request
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_$format"
}
-->
``` http
GET https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content?$format=text/vtt
```
#### Response

Response contains bytes for the transcript in the body. `content-type` header specifies type of the transcript content.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT

0:0:0.0 --> 0:0:5.320
<v User Name>This is a transcript test.</v>
```

### Example 3: Get a callTranscript Content specifying Accept header
#### Request
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_Accept"
}
-->
``` http
GET https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content
Accept: application/vnd.openxmlformats-officedocument.wordprocessingml.document
```
#### Response

Response contains bytes for the transcript in the body. `Content-type` header specifies type of the transcript content.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/vnd.openxmlformats-officedocument.wordprocessingml.document

<DOCX Content>
```

### Example 4: Get a callTranscript Content with $format getting precedence over the Accept header
#### Request
<!-- {
  "blockType": "request",
  "name": "get_callTranscript_content_$format_precedence"
}
-->
``` http
GET https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content?$format=text/vtt
Accept: application/vnd.openxmlformats-officedocument.wordprocessingml.document
```
#### Response

Response contains bytes for the transcript in the body. `content-type` header specifies type of the transcript content.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
```http
HTTP/1.1 200 OK
Content-type: text/vtt

WEBVTT

0:0:0.0 --> 0:0:5.320
<v User Name>This is a transcript test.</v>
```
