---
title: "Manage watermarks for sensitive Teams meetings"
description: "Use the cloud communications API in Microsoft Graph to manage a watermark for sensitive Microsoft Teams meetings."
author: "zihzhan-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
---

# Manage watermarks for sensitive Teams meetings

This article describes how to use the cloud communications API in Microsoft Graph to manage the watermark option for sensitive Microsoft Teams meetings. For a description of the watermark meetings feature, licensing, and policy requirements to use this feature, see [Require a watermark for sensitive Teams meetings](/microsoftteams/watermark-meeting-content-video).

The [onlineMeeting](/graph/api/resources/onlinemeeting) resource contains the [watermarkProtection](/graph/api/resources/onlinemeeting) property to indicate the watermark option for a sensitive Teams meeting.

Use the following REST calls to manage watermark protection for sensitive Teams meetings.

## Create an online meeting with the watermark option

The following example shows the watermark properties configured for a new **onlineMeeting**. For more details about how to create an online meeting, see [Create onlineMeeting](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true).

### Request

```http
POST /me/onlineMeetings

{
  "subject": "meeting",
  "startDateTime": "2022-07-01T22:57:47.6388574Z",
  "endDateTime": "2022-07-01T23:57:47.6388574Z",
  "watermarkProtection": {
    "isEnabledForContentSharing": true,
    "isEnabledForVideo": false
  }
}
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "subject": "meeting",
  "startDateTime": "2022-07-01T22:57:47.6388574Z",
  "endDateTime": "2022-07-01T23:57:47.6388574Z",
  "watermarkProtection": {
    "isEnabledForContentSharing": true,
    "isEnabledForVideo": false
  },
  ...
}
```

## Update the watermark option in an online meeting

The following example shows how to update the watermark properties of an **onlineMeeting**. For more details about how to update an online meeting, see [Update onlineMeeting](/graph/api/onlinemeeting-update?view=graph-rest-beta&preserve-view=true).

> [!NOTE]
> Updating the watermark properties has no effect on meeting calls that have already started.

### Request

```http
PATCH /me/onlineMeetings/{meetingId}

{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false
   }
}
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false
   }
}
```

## Get the watermark option in an online meeting

The following example shows how to get an **onlineMeeting** with its watermark properties. For more details about how to get an online meeting, see [Get onlineMeeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true).

### Request

```http
GET /me/onlineMeetings/{meetingId}
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false
   }
}
```

## Restricted experience for meetings with the watermark option

When a watermark is in use (either watermark option is turned on), applications use the [cloud communications calling APIs](/graph/api/application-post-calls) to get a restricted (audio only) media experience.

To indicate this restricted experience, each [participant](/graph/api/resources/participant) in the [call roster](/graph/api/application-post-calls?view=graph-rest-beta&preserve-view=true#notification---roster) and the [list participants API](/graph/api/call-list-participants) have a new [restrictedExperience](/graph/api/resources/participant) property that shows [watermarkProtection](/graph/api/resources/onlinemeetingrestricted) as the reason for the restricted media experience.

### Request

```http
GET https://graph.microsoft.com/beta/communications/calls/{callId}/participants
```

### Response

````http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "value":[
     {
         "@odata.type":"#microsoft.graph.participant",
         "info":{
            "@odata.type":"#microsoft.graph.participantInfo",
            "identity":{
               "@odata.type":"#microsoft.graph.identitySet",
               "user":{
                  "@odata.type":"#microsoft.graph.identity",
                  "id":"f2fa86af-3c51-4bc2-8fc0-475452d9764f",
                  "displayName":"Organizer"
               }
            },
         },
         "id":"14319a53-bae8-4129-9cf1-9619ab278b28",
         "metadata":null,
         "restrictedExperience": {
          "videoDisabled": "watermarkProtection"
         }
      },
      {
         "@odata.type":"#microsoft.graph.participant",
         "info":{
            "@odata.type":"#microsoft.graph.participantInfo",
            "identity":{
               "@odata.type":"#microsoft.graph.identitySet",
               "guest":{
                  "@odata.type":"#microsoft.graph.identity",
                  "id":"9714e06e-8c29-4703-8e89-9c3cdaa56391",
                  "displayName":"AnonymousUser1"
               }
            },
         },
         "id":"a7ebfb2d-871e-419c-87af-27290b22e8db",
         "metadata":null,
          "restrictedExperience": {
          "videoDisabled": "watermarkProtection"
         }
      },
      {
         "@odata.type":"#microsoft.graph.participant",
         "info":{
            "@odata.type":"#microsoft.graph.participantInfo",
            "identity":{
               "@odata.type":"#microsoft.graph.identitySet",
               "guest":{
                  "@odata.type":"#microsoft.graph.identity",
                  "id":"38ef1c9d-6a01-4bc2-b5aa-5535952298f7",
                  "displayName":"AnonymousUser2"
               }
            },
         },
         "id":"b35e843e-7771-478a-9dde-2dfed177bfe0",
         "metadata":null,
          "restrictedExperience": {
            "videoDisabled": "watermarkProtection"
         }
      }
   ],
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#communications/calls{callId}/participants"
}
````
