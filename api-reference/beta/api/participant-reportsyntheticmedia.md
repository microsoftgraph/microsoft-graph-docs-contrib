---
title: "participant: reportSyntheticMedia"
description: "Report synthetic media detections for a participant in a meeting call."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# participant: reportSyntheticMedia

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Report synthetic media detections for a [participant](../resources/participant.md) in a meeting call. This action is intended for certified third-party audio and video synthetic media detection bots admitted to the meeting call. The detection bot calls this action to flag a participant whose stream it identifies as AI-generated or synthetic media. The detection result is propagated to all participants via roster updates.

After a successful request, the service stores the detection on the participant as a [syntheticMediaDetectionInfo](../resources/syntheticmediadetectioninfo.md) object in the participant's [syntheticMediaDetection](../resources/participant.md#properties) property and delivers it to all participants in a roster update notification. Each request with a new **id** creates a separate detection record; the service doesn't deduplicate or merge reports. When a participant has multiple detection records, the **syntheticMediaDetection** property reflects the most recent report.

Third-party bots can invoke this action only when the meeting tenant administrator grants the app the `Calls.ReportSyntheticMedia.All` application permission.

The detection bot must be admitted to the call before it can call this action. For more information about registering a calling bot and joining calls, see [Calls and online meetings](../resources/communications-api-overview.md). The bot obtains the call ID and participant ID from the call roster and subsequent participant roster update notifications, and uses the [call](../resources/call.md)'s **id** as `{call-id}` and the [participant](../resources/participant.md)'s **id** as `{participant-id}` in the request URL.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "participant-reportsyntheticmedia-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/participant-reportsyntheticmedia-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /communications/calls/{call-id}/participants/{participant-id}/reportSyntheticMedia
POST /app/calls/{call-id}/participants/{participant-id}/reportSyntheticMedia
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that you can include when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|contentMetadata|[mediaMetadata](../resources/mediametadata.md)|Metadata about the content that was analyzed. Required.|
|detectionDateTime|DateTimeOffset|Date and time when the bot performed the detection. This value reflects when the analysis occurred, not when the analyzed media was captured. For media that's recorded and analyzed later, specify the time of analysis. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Required.|
|detections|[syntheticMediaDetectionDetail](../resources/syntheticmediadetectiondetail.md) collection|Per-model or per-segment detection results that support the overall finding. Required.|
|id|Guid|Unique identifier for the detection event, in GUID format. The detection bot generates this value, which must be globally unique across reports. Each request that specifies a new **id** creates a separate detection record. Required.|
|isMalicious|Boolean|Indicates whether the detected synthetic media has malicious intent. Set to `true` when the detection bot considers the AI-generated content to have malicious intent; otherwise, `false`. Required.|
|overallConfidence|Double|Aggregated confidence score that the participant's media is synthetic. The value ranges from `0.0` (low confidence) to `1.0` (high confidence). Each **confidence** value in the **detections** collection represents the score for an individual model or segment, whereas **overallConfidence** represents the aggregated score for the participant. Required.|
|severity|detectionSeverity|Qualitative severity banding of the detection. Because **severity** reflects the same underlying signal as **overallConfidence**, the two values should generally correspond. Optional. Nullable. Omit the value or set it to `null` when the severity can't be determined. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|

## Response

If successful, this action returns a `200 OK` response code.

### Error responses

This action can return the following common errors. For more information, see [Errors in Microsoft Graph](/graph/errors).

|Status code|Error condition|
|:---|:---|
|`400`|The request is malformed, such as an invalid participant ID format or a missing required parameter.|
|`403`|The app doesn't have the `Calls.ReportSyntheticMedia.All` permission, or the detection bot isn't admitted to the call.|
|`404`|The specified call or participant isn't found.|
|`429`|The app exceeded the request rate limit and is throttled.|

A live detection bot can call this action frequently for the same participant. To avoid throttling, report only meaningful changes in the detection rather than every analyzed frame, and limit the reporting rate to no more than one request per target participant per minute.

## Examples

### Example 1: Report audio synthetic media detection

The following example shows how to report a synthetic media detection for audio content.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "participant_reportsyntheticmedia_audio"
}
-->
``` http
POST https://graph.microsoft.com/beta/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia
Content-Type: application/json

{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "detectionDateTime": "2026-03-13T21:00:00Z",
  "severity": "high",
  "overallConfidence": 0.92,
  "isMalicious": true,
  "contentMetadata": {
    "modality": "audio",
    "isRealTime": true,
    "mimeType": "audio/pcm",
    "byteSize": 0,
    "duration": 15,
    "audioMetadata": {
      "sampleRateHz": 16000,
      "bitDepth": 16,
      "channels": 1
    },
    "streamingMetadata": {
      "latencyMs": 50,
      "frameDropRate": 0.0,
      "networkJitterMs": 10
    }
  },
  "detections": [
    {
      "modelName": "DeepfakeDetector-v2",
      "modality": "audio",
      "modelTasks": ["voiceClone"],
      "segment": {
        "startTimeSec": 0,
        "endTimeSec": 15,
        "frameIndices": []
      },
      "confidence": 0.95
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/participant-reportsyntheticmedia-audio-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/participant-reportsyntheticmedia-audio-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/participant-reportsyntheticmedia-audio-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/participant-reportsyntheticmedia-audio-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/participant-reportsyntheticmedia-audio-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/participant-reportsyntheticmedia-audio-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

### Example 2: Report video synthetic media detection

The following example shows how to report a synthetic media detection for video content.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "participant_reportsyntheticmedia_video"
}
-->
``` http
POST https://graph.microsoft.com/beta/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia
Content-Type: application/json

{
  "id": "c3d4e5f6-a7b8-9012-cdef-345678901234",
  "detectionDateTime": "2026-03-13T21:05:00Z",
  "severity": "high",
  "overallConfidence": 0.91,
  "isMalicious": true,
  "contentMetadata": {
    "modality": "video",
    "isRealTime": false,
    "mimeType": "video/mp4",
    "byteSize": 2048000,
    "duration": 30,
    "videoMetadata": {
      "codec": "H.264",
      "frameRate": 30.0,
      "bitrateKbps": 512
    }
  },
  "detections": [
    {
      "modelName": "FaceSwapDetector-v3",
      "modality": "video",
      "modelTasks": ["faceSwap", "lipSync"],
      "segment": {
        "startTimeSec": 0,
        "endTimeSec": 0,
        "frameIndices": [150, 180, 210, 240]
      },
      "confidence": 0.91
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/participant-reportsyntheticmedia-video-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/participant-reportsyntheticmedia-video-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/participant-reportsyntheticmedia-video-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/participant-reportsyntheticmedia-video-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/participant-reportsyntheticmedia-video-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/participant-reportsyntheticmedia-video-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

### Example 3: Report multimodal synthetic media detection

The following example shows how to report a real-time detection that combines audio and video analysis. The **modality** is `multimodal`, the **contentMetadata** includes both **audioMetadata** and **videoMetadata** (plus **streamingMetadata** for the live stream), and the **detections** collection contains one entry per modality.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "participant_reportsyntheticmedia_multimodal"
}
-->
``` http
POST https://graph.microsoft.com/beta/communications/calls/481f3600-983e-4276-9b59-c1b30ec8d125/participants/550fae72-d251-43ec-868c-373732c2704f/reportSyntheticMedia
Content-Type: application/json

{
  "id": "b2c3d4e5-f6a7-8901-bcde-f23456789012",
  "detectionDateTime": "2026-03-13T21:10:00Z",
  "severity": "high",
  "overallConfidence": 0.94,
  "isMalicious": true,
  "contentMetadata": {
    "modality": "multimodal",
    "isRealTime": true,
    "mimeType": "video/mp4",
    "byteSize": 0,
    "duration": 20,
    "audioMetadata": {
      "sampleRateHz": 16000,
      "bitDepth": 16,
      "channels": 1
    },
    "videoMetadata": {
      "codec": "H.264",
      "frameRate": 30.0,
      "bitrateKbps": 512
    },
    "streamingMetadata": {
      "latencyMs": 50,
      "frameDropRate": 0.0,
      "networkJitterMs": 10
    }
  },
  "detections": [
    {
      "modelName": "VoiceCloneDetector-v1",
      "modality": "audio",
      "modelTasks": ["voiceClone"],
      "segment": {
        "startTimeSec": 0,
        "endTimeSec": 20,
        "frameIndices": []
      },
      "confidence": 0.93
    },
    {
      "modelName": "FaceSwapDetector-v3",
      "modality": "video",
      "modelTasks": ["faceSwap", "lipSync"],
      "segment": {
        "startTimeSec": 5,
        "endTimeSec": 18,
        "frameIndices": [150, 180, 210, 240]
      },
      "confidence": 0.95
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/participant-reportsyntheticmedia-multimodal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/participant-reportsyntheticmedia-multimodal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/participant-reportsyntheticmedia-multimodal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/participant-reportsyntheticmedia-multimodal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/participant-reportsyntheticmedia-multimodal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/participant-reportsyntheticmedia-multimodal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```
