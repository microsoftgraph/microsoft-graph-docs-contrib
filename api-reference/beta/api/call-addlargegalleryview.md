---
title: "call: addLargeGalleryView"
description: "Add the large gallery view to a call."
author: "navali-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# call: addLargeGalleryView

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add the large gallery view to a call.

For more information about how to handle a large gallery view operation, see [addLargeGalleryViewOperation](../resources/addlargegalleryviewoperation.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.       |
| Delegated (personal Microsoft account) | Not supported.       |
| Application     | Calls.JoinGroupCallAsGuest.All, Calls.JoinGroupCall.All, Calls.InitiateGroupCall.All                       |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/addLargeGalleryView
POST /communications/calls/{id}/addLargeGalleryView
```
> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers
| Name          | Description                |
|:--------------|:---------------------------|
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.|

## Request body
In the request body, provide a JSON object with the following parameter.

| Parameter      | Type    | Description |
|:---------------|:--------|:------------|
| clientContext  | String  | Unique client context string that can have a maximum of 256 characters. |

## Response
If successful, this method returns a `202 Accepted` response code and an [addLargeGalleryViewOperation](../resources/addlargegalleryviewoperation.md) object in the response body.

## Example

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "call-addLargeGalleryView-1"
}-->
```http
POST https://graph.microsoft.com/beta/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/addLargeGalleryView
Content-Type: application/json
Content-Length: 46

{
  "clientContext": "785f4929-92ca-497b-863f-c778c77c9758"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "call-addLargeGalleryView-1"
  "truncated": true,
  "@odata.type": "microsoft.graph.addLargeGalleryViewOperation"
} -->
```http
HTTP/1.1 202 ACCEPTED
Location: https://graph.microsoft.com/beta/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/e33176d4-836a-4fd7-b95a-d11bda52811d

{
  "@odata.type": "#microsoft.graph.addLargeGalleryViewOperation",
  "clientContext": "785f4929-92ca-497b-863f-c778c77c9758",
  "id": "e33176d4-836a-4fd7-b95a-d11bda52811d",
  "resultInfo": null,
  "status": "running"
}
```

### Notification - operation completed

```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/e33176d4-836a-4fd7-b95a-d11bda52811d",
      "resourceData": {
        "@odata.type": "#microsoft.graph.addLargeGalleryViewOperation",
        "@odata.id": "/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/e33176d4-836a-4fd7-b95a-d11bda52811d",
        "clientContext": "785f4929-92ca-497b-863f-c778c77c9758",
        "status": "completed"
      }
    }
  ]
}
```

## Identifying large gallery view application from the roster and subscribing to the video feed

Following is an example of a Roster when the large gallery View is successfully added to the call

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "updated",
      "resource": "/app/calls/5f201300-df95-4800-bd3a-75b0af63dd2b/participants",
      "resourceUrl": "/communications/calls/5f201300-df95-4800-bd3a-75b0af63dd2b/participants",
      "resourceData": [
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "application": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "displayName": "(redacted)",
                "identityProvider": "AAD",
              }
            },
            "endpointType": "default",
            "endpointId": "40213cfb-0934-4dce-9b3a-57c09adf6967",
            "participantId": "23aeb644-6227-4f4a-b5c9-4d61c1f196d3",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "2472",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "isMuted": false,
          "isInLobby": false,
          "meetingRole": "presenter",
          "id": "23aeb644-6227-4f4a-b5c9-4d61c1f196d3"
        },
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "user": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "displayName": "(redacted)",
                "identityProvider": "AAD"
              }
            },
            "endpointType": "default",
            "endpointId": "4a767d9b-dca5-4176-8f1b-2a0f98923569",
            "participantId": "63ce9188-e754-4733-9e71-ccc829499a63",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "1652",
              "direction": "sendReceive",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "video",
              "label": "main-video",
              "sourceId": "1653",
              "direction": "sendReceive",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "videoBasedScreenSharing",
              "label": "applicationsharing-video",
              "sourceId": "1655",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "data",
              "label": "data",
              "sourceId": "1656",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "isMuted": false,
          "isInLobby": false,
          "meetingRole": "presenter",
          "id": "63ce9188-e754-4733-9e71-ccc829499a63"
        },
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "application": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "identityProvider": "AAD",
                "ApplicationType": "LargeGallery-V2"
              }
            },
            "endpointType": "default",
            "endpointId": "ccf24195-bd6d-4cbe-bc46-180a7fd3e9ba",
            "participantId": "a34eae65-7aca-43ab-8332-80ab28629a54",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "2886",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "video",
              "label": "main-video",
              "sourceId": "2887",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "metadata": "{\"__platform\":{\"ui\":{\"hidden\":true}},\"audienceView\":{\"id\":\"3c28fd97-6d51-4f2f-8bba-82dcbf408ff6/1\",\"page\":1,\"status\":\"active\",\"type\":\"lg\",\"aspectRatio\":\"widescreen\"}}",
          "isMuted": false,
          "isInLobby": false,
          "meetingRole": "presenter",
          "id": "a34eae65-7aca-43ab-8332-80ab28629a54"
        },
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "application": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "identityProvider": "AAD",
                "ApplicationType": "LargeGallery-V2"
              }
            },
            "endpointType": "default",
            "endpointId": "22726e72-fbf4-46c7-a5d7-36c682c3ba86",
            "participantId": "8c4ca6bc-33e1-4da5-b6d6-a2fe61af605d",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "2673",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "video",
              "label": "main-video",
              "sourceId": "2674",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "data",
              "label": "data",
              "sourceId": "2685",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "metadata": "{\"__platform\":{\"ui\":{\"hidden\":true}}}",
          "isMuted": false,
          "isInLobby": false,
          "meetingRole": "presenter",
          "id": "8c4ca6bc-33e1-4da5-b6d6-a2fe61af605d"
        },
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "user": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "displayName": "(redacted)",
                "identityProvider": "AAD"
              }
            },
            "endpointType": "default",
            "endpointId": "c2bba3c4-ffff-ffff-eca6-782d381190f4",
            "participantId": "3855ce6a-064e-402c-a1cf-2d78b4e1efbb",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "201",
              "direction": "sendReceive",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "video",
              "label": "main-video",
              "sourceId": "202",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "videoBasedScreenSharing",
              "label": "applicationsharing-video",
              "sourceId": "212",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "data",
              "label": "data",
              "sourceId": "213",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "metadata": "{\"holographicCapabilities\":3}",
          "isMuted": true,
          "isInLobby": false,
          "meetingRole": "organizer",
          "id": "3855ce6a-064e-402c-a1cf-2d78b4e1efbb"
        },
        {
          "@odata.type": "#microsoft.graph.participant",
          "info": {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "@odata.type": "#microsoft.graph.identitySet",
              "user": {
                "@odata.type": "#microsoft.graph.identity",
                "id": "(redacted)",
                "displayName": "(redacted)",
                "identityProvider": "AAD"
              }
            },
            "endpointType": "default",
            "endpointId": "b8e00934-5ae7-4e8b-9933-1ed41d70e8c0",
            "participantId": "f65b97d2-efda-471e-a2c5-bfe40146b11f",
          },
          "mediaStreams": [
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "audio",
              "label": "main-audio",
              "sourceId": "2267",
              "direction": "sendReceive",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "video",
              "label": "main-video",
              "sourceId": "2268",
              "direction": "sendReceive",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "videoBasedScreenSharing",
              "label": "applicationsharing-video",
              "sourceId": "2270",
              "direction": "receiveOnly",
              "serverMuted": false
            },
            {
              "@odata.type": "#microsoft.graph.mediaStream",
              "mediaType": "data",
              "label": "data",
              "sourceId": "2271",
              "direction": "sendReceive",
              "serverMuted": false
            }
          ],
          "isMuted": false,
          "isInLobby": false,
          "publishedStates": [],
          "meetingRole": "presenter",
          "id": "f65b97d2-efda-471e-a2c5-bfe40146b11f"
        }
      ]
    }
  ]
}
```

The large gallery view applications can be identified by using the following pointers:

- The ApplicationType of the participant will be set as 'LargeGallery-V2'.
- The video media stream direction will be set to 'sendReceive'.
- The additional detail about the application can be extracted from metadata using the following definition:

```csharp
    /// <summary>
    /// Metadata
    /// </summary>
    [DataContract]
    public class AudienceView
    {
        /// <summary>
        /// Unique view id
        /// </summary>
        [DataMember(Name = "id")]
        public string Id { get; set; }

        /// <summary>
        /// Page Number
        /// </summary>
        [DataMember(Name = "page")]
        public int Page { get; set; }

        /// <summary>
        /// Signal that page is Active/Inactive
        /// </summary>
        [DataMember(Name = "status")]
        public string Status { get; set; }

        /// <summary>
        /// Type of bot
        /// </summary>
        [DataMember(Name = "type")]
        public string Type { get; set; }

        /// <summary>
        /// Aspect ratio of the page
        /// </summary>
        [DataMember(Name = "aspectRatio")]
        public string AspectRatio { get; set; }
    }

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: addLargeGalleryView",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->