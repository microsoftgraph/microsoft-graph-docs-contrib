--- 
title: "Identify large gallery view participants by using the cloud communications API"
description: "Identify a large gallery view participant in a roster so that you can subscribe to their video feed by using the cloud communications API in Microsoft Graph."
author: "navali-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: conceptualPageType
---

# Identify large gallery view participants in a roster

The cloud communications API in Microsoft Graph provides an endpoint for [adding the large gallery view](/graph/api/call-addlargegalleryview) to a call. After the large gallery view is successfully added to a call, you can subscribe to a participant's video feed.

This article describes how to identify a large gallery view participant in a roster so that you can retrieve the relevant data to subscribe to the video feed.

## Roster example with large gallery view participant

The following example shows a roster that the application receives after the large gallery view is successfully added to a call.

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

## Identify large gallery view participants

Use the following data from the roster example to identify a large gallery view participant:

- The **ApplicationType** of the participant will be set as `LargeGallery-V2`.
- The **direction** of the video media stream will be set to `sendReceive`.
- The **metadata** will be included that will contain more details such as paging.

### Participant data example

The following example shows the data for a large gallery view participant in the roster.

```json
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
}
```

### Definition for deserializing metadata

Use the following definition to deserialize the **metadata** property and extract the relevant information.

```csharp
    /// <summary>
    /// Metadata for large gallery view
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
    }
```

## See also

- [Teams API overview](teams-concept-overview.md)