---
title: "meetingRegistration resource type"
description: "Contains information about online meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains registration information of an online meeting.

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| registrationPageWebUrl | String | Specify who can register for the meeting. Read-Only. |
| allowedRegistrant | meetingAudience |  |
| subject | String |   |
| description | String |   |
| startDateTime | DateTime |   |
| endDateTime | DateTime |   |
| registrationPageViewCount | Int32 |   |
| speakers | meetingSpeaker colletion |   |
| customQuestions | meetingRegistrationQuestion colletion |   |
| registrants | meetingRegistrant colletion |   |
