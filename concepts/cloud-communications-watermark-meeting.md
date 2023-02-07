---
title: "Support for Watermark for sensitive Teams meetings in the cloud communications APIs"
author: ""
ms.localizationpriority: medium
ms.prod: "cloud-communications"
---

# Watermark meeting

For a description of the Watermark meetings feature, licensing and policy requirements to use the feature, please read [Watermark meetings](https://learn.microsoft.com/en-us/microsoftteams/watermark-meeting-content-video).

A new [watermarkProtection](/graph/api/resources/onlinemeeting) property is added to [onlinemeeting](/graph/api/resources/onlinemeeting) to indicate the Watermark options.

### Code or REST operation examples

#### Create an online meeting with new meeting options

```json
POST /me/onlineMeetings
{
  "subject": "meeting",
  "startDateTime": "2022-07-01T22:57:47.6388574Z",
  "endDateTime": "2022-07-01T23:57:47.6388574Z",
  "watermarkProtection": {
    "isEnabledForContentSharing": true,
    "isEnabledForVideo": false,
  }
}

HTTP/1.1 200 OK
```

#### Update meeting options
Please note updating the Watermark properties will have no affect on meeting calls that have already started.

```json
PATCH /me/onlineMeetings/{meetingId}
{
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false,
   },
}

HTTP/1.1 200 OK
```
#### Get meeting options

```json
GET /me/onlineMeetings/{meetingId}
{
   ...
   "watermarkProtection": {
      "isEnabledForContentSharing" : true,
      "isEnabledForVideo" : false,
   },
}

HTTP/1.1 200 OK
```

#### Restricted Experience when joining Watermark meetings using the Cloud Communications APIs

When a watermark is in use, applications using the [Cloud Communications Calling APIs](/graph/api/application-post-calls) will get a restricted media experience.

To indicate this restricted media experience, each [participant](graph/api/resources/participant) in the [list participants api](/graph/api/call-list-participants) will have a new [restrictedExperience](graph/api/resources/participant) property, which shows watermarkProtection as the reason for the restricted media experience.


````JSON
GET https://graph.microsoft.com/beta/communications/calls/d6a1a5a9-e1a5-456f-afd6-83f6ef949e51/participants

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
                  "id":"f2fa86af-3c51-4bc2-8fc0-475452d9764f",
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
                  "displayName":"AnonymousUser1"
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
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#communications/calls('d6a1a5a9-e1a5-456f-afd6-83f6ef949e51')/participants"
}
````
## Details and schema changes

### New or updated properties

#### Entity: graph.onlineMeeting

##### New/updated properties

New meeting options wil be added to `graph.onlineMeeting`.

| Property                   | Type                                      | Description                                                                  |
| ---------------------------| ----------------------------------------- | ---------------------------------------------------------------------------- |
| `watermarkProtection`   | `graph.watermarkProtectionValues` | Specifies if watermark is to be applied for different entities              |


##### ComplexType: graph.watermarkProtectionValues
###### New/updated properties
Specifies the entities for which the watermark is to be applied: contentSharing, videoFeed.

| Property               | Type                 | Description                              | Key | Required | ReadOnly |
|------------------------|----------------------|------------------------------------------|-----|----------|----------|
| `isEnabledForContentSharing`   | `Edm.Boolean` |  Specify the value to apply watermark to any shared content.  | No  | No       | No      |
| `isEnabledForVideo`  | `Edm.Boolean` |  Specify the value to apply watermark to everyone's video feed.  | No  | No       | No      |


#### Entity: graph.participant

##### New/updated properties

New meeting options wil be added to `graph.participant`.

| Property                   | Type                                      | Description                                                                  | Key | Required | ReadOnly  |
| ---------------------------| ----------------------------------------- | ---------------------------------------------------------------------------- | --- | -------- | --------- |
| `restrictedExperience`   | `graph.onlineMeetingRestricted` | Specifies the reasons if the participant is having a restricted experience.              | No  | No       | No        |


#### ComplexType: graph.onlineMeetingRestricted

##### New/updated properties

Specifies the reasons if the user is going to receive a restricted experience.

| Property              | Type              | Description                                             |
| ----------------------| ------------------| ------------------------------------------------------- |
| `videoDisabled`   | `graph.onlineMeetingVideoDisabledReason` | Specifies the reason if participant's video is disabled.  |
| `contentSharingDisabled`   | `graph.onlineMeetingContentSharingDisabledReason` | Specifies the reason if shared content from the participant is disabled.  |



##### New enums

###### onlineMeetingContentSharingDisabledReason values

Specifies the reasons due to which a user is going to receive an experience without shared content.

| Value                 | Description                              |
| ----------------------| -----------------------------------------|
| `watermarkProtection`  | The meeting content is marked watermarked but the user joined from an unsupported client.

###### onlineMeetingVideoDisabledReason values
Specifies the reasons due to which a user is going to receive an audio only experience.

| Value                 | Description                              |
| ----------------------| -----------------------------------------|
| `watermarkProtection`  | The meeting content is marked watermarked but the user joined from an unsupported client.  |
