---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: ric.lewis
ms.subservice: change-notifications
ms.topic: include
ms.localizationpriority: high
ms.date: 11/07/2024
---

<!-- markdownlint-disable MD041-->
<!-- This include file is referenced from the change notifications overview. -->

The following table lists the latency to expect between an event happening in the service and the delivery of the change notification.

| Resource                | Average latency      | Maximum latency |
|:------------------------|:---------------------|:----------------|
| [aiInteraction][]       | Less than 10 seconds | 60 minutes      |
| [alert][] <sup>1</sup>  | Less than 3 minutes  | 5 minutes       |
| [approvals][]           | Less than 10 seconds | 40 seconds      |
| [calendar][]            | Less than 1 minute   | 3 minutes       |
| [callRecord][] <sup>2</sup> | Less than 30 minutes | 150 minutes |
| [callRecording][]       | Less than 10 seconds | 60 minutes      |
| [callTranscript][]      | Less than 10 seconds | 60 minutes      |
| [channel][]             | Less than 10 seconds | 60 minutes      |
| [chat][]                | Less than 10 seconds | 60 minutes      |
| [chatMessage][]         | Less than 10 seconds | 1 minute        |
| [contact][]             | Less than 1 minute   | 3 minutes       |
| [conversation][]        | Unknown              | Unknown         |
| [conversationMember][]  | Less than 10 seconds | 60 minutes      |
| [driveItem][]           | Less than 1 minute   | 60 minutes      |
| [event][]               | Unknown              | Unknown         |
| [group][]               | Unknown              | Unknown         |
| [health monitoring alert][] | Unknown           | Unknown         |
| [list][]                | Less than 1 minute   | 60 minutes      |
| [message][]             | Less than 1 minute   | 3 minutes       |
| [offerShiftRequest][]   | Less than 1 minute   | 60 minutes      |
| [onlineMeeting][]       | Less than 10 seconds | 1 minute        |
| [openShiftChangeRequest][]| Less than 1 minute | 60 minutes      |
| [presence][]            | Less than 10 seconds | 1 minute        |
| [printer][]             | Less than 1 minute   | 5 minutes       |
| [printTaskDefinition][] | Less than 1 minute   | 5 minutes       |
| [shift][]               | Less than 1 minute   | 60 minutes      |
| [swapShiftsChangeRequest][]| Less than 1 minute| 60 minutes      |
| [team][]                | Less than 10 seconds | 60 minutes      |
| [teamsAppInstallation][]| Less than 10 seconds | 60 minutes      |
| [timeOffRequest][]      | Less than 1 minute   | 60 minutes      |
| [todoTask][]            | Less than 2 minutes  | 15 minutes      |
| [user][]                | Unknown              | Unknown         |

<sup>1</sup> The latency provided for the **alert** resource is only applicable after the alert is created. It doesn't include the time it takes for a rule to create an alert from the data.
<sup>2</sup> The latency provided for the **callRecord** resource is only applicable to the first version of a call record. Subsequent versions of a call record might be updated beyond the stated latencies.

[aiInteraction]: /graph/api/resources/aiinteraction
[contact]: /graph/api/resources/contact
[conversation]: /graph/api/resources/conversation
[driveItem]: /graph/api/resources/driveitem
[event]: /graph/api/resources/event
[group]: /graph/api/resources/group
[message]: /graph/api/resources/message
[user]: /graph/api/resources/user
[alert]: /graph/api/resources/alert
[callRecord]: /graph/api/resources/callrecords-callrecord
[presence]: /graph/api/resources/presence
[chatMessage]: /graph/api/resources/chatmessage
[list]: /graph/api/resources/list
[offerShiftRequest]: /graph/api/resources/offershiftrequest
[openShiftChangeRequest]: /graph/api/resources/openshiftchangerequest
[printer]: /graph/api/resources/printer
[printTaskDefinition]: /graph/api/resources/printtaskdefinition
[shift]: /graph/api/resources/shift
[swapShiftsChangeRequest]: /graph/api/resources/swapshiftschangerequest
[todoTask]: /graph/api/resources/todotask
[channel]: /graph/api/resources/channel
[chat]: /graph/api/resources/chat
[conversationMember]: /graph/api/resources/conversationmember
[team]: /graph/api/resources/team
[timeOffRequest]: /graph/api/resources/timeoffrequest
[onlineMeeting]: /graph/api/resources/onlinemeeting
[callTranscript]: /graph/api/resources/calltranscript
[callRecording]: /graph/api/resources/callrecording
[calendar]: /graph/api/resources/calendar
[teamsAppInstallation]: /graph/api/resources/teamsappinstallation
[approvals]: /graph/api/resources/approvalItem
[health monitoring alert]: /graph/api/resources/healthmonitoring-alert
