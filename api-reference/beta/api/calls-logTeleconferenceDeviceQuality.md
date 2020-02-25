---
title: "calls: logTeleconferenceDeviceQuality"
description: "Log video teleconferencing device quality data."
author: "dongkyun"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# calls: logTeleconferenceDeviceQuality

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cloud Video Interop (CVI) bot represents Video teleconferencing (VTC) devices and acts as a back-to-back agent for VTC device in a conference call.  Since a CVI bot is in the middle of VTC and Teams infrastructure as a VTC proxy, it has two media legs. One media leg is between CVI bot and Teams infrastructure such as MC/MP or Teams client and the other media leg is between CVI bot and VTC device. 
The third party partners own the VTC media leg and Teams infrastructure cannot access the quality data of the third party call leg.  This API allows the CVI partners to provide their quality data.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged)                |
| :-------------- | :--------------------------------------------------------- |
| Delegated (work or school account)     | Not Supported                       |
| Delegated (personal Microsoft account) | Not Supported                       |
| Application     | Calls.AccessMedia.All                                      |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/calls/logTeleconferenceDeviceQuality
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is ApplicationName/Version. Required.|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|quality|[TeleconferenceDeviceQuality](../resources/teleconferenceDeviceQuality.md)|Quality data of VTC media leg. |

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.

## Examples
The following example shows how to call this API.

### Example: Log VTC quality data
#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "calls-logTeleconferenceDeviceQuality"
}-->
```http
POST https://graph.microsoft.com/beta/communications/calls/logTeleconferenceDeviceQuality
```
```json
{
  "quality": {
    "@odata.type": "#microsoft.graph.teleconferenceDeviceQuality",
    "callChainId": "0622673d-9f69-49b3-9d4f-5ec64f42ecce",
    "participantId": "ea078406-b5d4-4d3c-b85e-90103dcec7f6",
    "mediaLegId": "bd9ee398-4b9d-42c7-8b8d-4e8efad9435f",
    "deviceName": "TestAgent",
    "deviceDescription": "TestDescription",
    "mediaQualityList": [
      {
        "@odata.type": "#microsoft.graph.teleconferenceDeviceAudioQuality",
        "channelIndex": 1,
        "mediaDuration": "PT20M",
        "networkLinkSpeedInBytes": 13000,
        "localIPAddress": "127.0.0.1",
        "localPort": 6300,
        "remoteIPAddress": "102.1.1.101",
        "remotePort": 6301,
        "inboundPackets": 5500,
        "outboundPackets": 5400,
        "averageInboundPacketLossRateInPercentage": 0.01,
        "averageOutboundPacketLossRateInPercentage": 0.02,
        "maximumInboundPacketLossRateInPercentage": 0.05,
        "maximumOutboundPacketLossRateInPercentage": 0.06,
        "averageInboundRoundTripDelay": "PT0.03S",
        "averageOutboundRoundTripDelay": "PT0.04S",
        "maximumInboundRoundTripDelay": "PT0.13S",
        "maximumOutboundRoundTripDelay": "PT0.14S",
        "averageInboundJitter": "PT0.01S",
        "averageOutboundJitter": "PT0.015S",
        "maximumInboundJitter": "PT0.023S",
        "maximumOutboundJitter": "PT0.024S"
      },
      {
        "@odata.type": "#microsoft.graph.teleconferenceDeviceVideoQuality",
        "channelIndex": 1,
        "mediaDuration": "PT20M",
        "networkLinkSpeedInBytes": 13000,
        "localIPAddress": "127.0.0.1",
        "localPort": 6300,
        "remoteIPAddress": "102.1.1.101",
        "remotePort": 6301,
        "inboundPackets": 5500,
        "outboundPackets": 5400,
        "averageInboundPacketLossRateInPercentage": 0.01,
        "averageOutboundPacketLossRateInPercentage": 0.02,
        "maximumInboundPacketLossRateInPercentage": 0.05,
        "maximumOutboundPacketLossRateInPercentage": 0.06,
        "averageInboundRoundTripDelay": "PT0.03S",
        "averageOutboundRoundTripDelay": "PT0.04S",
        "maximumInboundRoundTripDelay": "PT0.13S",
        "maximumOutboundRoundTripDelay": "PT0.14S",
        "averageInboundJitter": "PT0.01S",
        "averageOutboundJitter": "PT0.015S",
        "maximumInboundJitter": "PT0.023S",
        "maximumOutboundJitter": "PT0.024S"
      },
      {
        "@odata.type": "#microsoft.graph.teleconferenceDeviceScreenSharingQuality",
        "channelIndex": 1,
        "mediaDuration": "PT20M",
        "networkLinkSpeedInBytes": 13000,
        "localIPAddress": "127.0.0.1",
        "localPort": 6300,
        "remoteIPAddress": "102.1.1.101",
        "remotePort": 6301,
        "inboundPackets": 5500,
        "outboundPackets": 5400,
        "averageInboundPacketLossRateInPercentage": 0.01,
        "averageOutboundPacketLossRateInPercentage": 0.02,
        "maximumInboundPacketLossRateInPercentage": 0.05,
        "maximumOutboundPacketLossRateInPercentage": 0.06,
        "averageInboundRoundTripDelay": "PT0.03S",
        "averageOutboundRoundTripDelay": "PT0.04S",
        "maximumInboundRoundTripDelay": "PT0.13S",
        "maximumOutboundRoundTripDelay": "PT0.14S",
        "averageInboundJitter": "PT0.01S",
        "averageOutboundJitter": "PT0.015S",
        "maximumInboundJitter": "PT0.023S",
        "maximumOutboundJitter": "PT0.024S"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/calls-logTeleconferenceDeviceQuality-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/calls-logTeleconferenceDeviceQuality-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/calls-logTeleconferenceDeviceQuality-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]	

---	

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 200 OK
```

<!--
{
  "type": "#page.annotation",
  "description": "calls: logTeleconferenceDeviceQuality",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
