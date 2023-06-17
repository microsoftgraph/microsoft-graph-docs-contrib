---
title: "Call records enum values"
description: "Microsoft Graph call records enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.prod: "cloud-communications"
author: "gageames"
---

# Call records enum values

Namespace: microsoft.graph.callRecords

### callType values

| Member
|:--------------
| unknown
| groupCall
| peerToPeer
| unknownFutureValue

### clientPlatform values

| Member
|:--------------
| unknown
| windows
| macOS
| iOS
| android
| web
| ipPhone
| roomSystem
| surfaceHub
| holoLens
| unknownFutureValue

### failureStage values

| Member
|:--------------
| unknown
| callSetup
| midcall
| unknownFutureValue

### mediaStreamDirection values

| Member
|:--------------
| callerToCallee
| calleeToCaller

### modality values

| Member
|:--------------
| unknown
| audio
| video
| videoBasedScreenSharing
| data
| screenSharing
| unknownFutureValue

### networkConnectionType values

| Member
|:--------------
| unknown
| wired
| wifi
| mobile
| tunnel
| unknownFutureValue

### networkTransportProtocol values

| Member             |
|:-------------------|
| unknown            |
| udp                |
| tcp                |
| unknownFutureValue |

### productFamily values

| Member
|:--------------
| unknown
| teams
| skypeForBusiness
| lync
| unknownFutureValue
| azureCommunicationServices

### serviceRole values

| Member
|:--------------
| unknown
| customBot
| skypeForBusinessMicrosoftTeamsGateway
| skypeForBusinessAudioVideoMcu
| skypeForBusinessApplicationSharingMcu
| skypeForBusinessCallQueues
| skypeForBusinessAutoAttendant
| mediationServer
| mediationServerCloudConnectorEdition
| exchangeUnifiedMessagingService
| mediaController
| conferencingAnnouncementService
| conferencingAttendant
| audioTeleconferencerController
| skypeForBusinessUnifiedCommunicationApplicationPlatform
| responseGroupServiceAnnouncementService
| gateway
| skypeTranslator
| skypeForBusinessAttendant
| responseGroupService
| voicemail
| unknownFutureValue

### userFeedbackRating values

| Member
|:--------------
| notRated
| bad
| poor
| fair
| good
| excellent
| unknownFutureValue

### wifiBand values

| Member
|:--------------
| unknown
| frequency24GHz
| frequency50GHz
| frequency60GHz
| unknownFutureValue

### wifiRadioType values

| Member
|:--------------
| unknown
| wifi80211a
| wifi80211b
| wifi80211g
| wifi80211n
| wifi80211ac
| wifi80211ax
| unknownFutureValue

### pstnCallDurationSource values 

|Member|
|:---|
|microsoft|
|operator|

### audioCodec values 

| Member             |
|:-------------------|
| unknown            |
| invalid            |
| cn                 |
| pcma               |
| pcmu               |
| amrWide            |
| g722               |
| g7221              |
| g7221c             |
| g729               |
| multiChannelAudio  |
| muchv2             |
| opus               |
| satin              |
| satinFullband      |
| rtAudio8           |
| rtAudio16          |
| silk               |
| silkNarrow         |
| silkWide           |
| siren              |
| xmsRta             |
| unknownFutureValue |

### videoCodec values 

| Member             |
|:-------------------|
| unknown            |
| invalid            |
| av1                |
| h263               |
| h264               |
| h264s              |
| h264uc             |
| h265               |
| rtvc1              |
| rtVideo            |
| xrtvc1             |
| unknownFutureValue |

### pstnUserBlockMode values 

|Member|
|:---|
|blocked|
|unblocked|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.callRecords"
}
-->


