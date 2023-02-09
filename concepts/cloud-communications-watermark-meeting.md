---
title: "Support for Watermark for sensitive Teams meetings in the cloud communications APIs"
author: ""
ms.localizationpriority: medium
ms.prod: "cloud-communications"
---

# Watermark meeting

For a description of the Watermark meetings feature, licensing and policy requirements to use the feature, please read [Watermark meetings](https://learn.microsoft.com/en-us/microsoftteams/watermark-meeting-content-video).

A new [watermarkProtection](/graph/api/resources/onlinemeeting) property is added to [onlinemeeting](/graph/api/resources/onlinemeeting) to indicate the Watermark options.

## Code or REST operation examples

### Create an online meeting with the new Watermark option

#### Request

```http
POST /me/onlineMeetings
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "subject": "meeting",
  "startDateTime": "2022-07-01T22:57:47.6388574Z",
  "endDateTime": "2022-07-01T23:57:47.6388574Z",
  "watermarkProtection": {
    "isEnabledForContentSharing": true,
    "isEnabledForVideo": false,
  }
}
```

### Update Watermark option in an onlinemeeting

> [!NOTE]
> Updating the Watermark properties will have no affect on meeting calls that have already started.

#### Request

```http
PATCH /me/onlineMeetings/{meetingId}
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false,
   },
}
```

### Get the Watermark option in an onlinemeeting

#### Request

```http
GET /me/onlineMeetings/{meetingId}
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false,
   },
}
```

### Restricted Experience when joining Watermark meetings using the Cloud Communications APIs

When a watermark is in use, applications using the [Cloud Communications Calling APIs](/graph/api/application-post-calls) will get a restricted media experience.

To indicate this restricted media experience, each [participant](graph/api/resources/participant) in the [call roster](/graph/api/application-post-calls?view=graph-rest-1.0&tabs=http#notification---roster) and the [list participants api](/graph/api/call-list-participants) will have a new [restrictedExperience](graph/api/resources/participant) property, which shows [watermarkProtection](/graph/api/resources/onlinemeetingRestricted) as the reason for the restricted media experience.


#### Request

```http
GET https://graph.microsoft.com/beta/communications/calls/{callId}/participants
```

#### Response

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
