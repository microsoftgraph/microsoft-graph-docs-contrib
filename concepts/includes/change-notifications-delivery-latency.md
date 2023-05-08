---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jumasure
ms.prod: "change-notifications"
ms.topic: include
ms.localizationpriority: high
---

<!-- markdownlint-disable MD041-->
<!-- This include file is referenced from the change notifications overview. -->

The following table lists the latency to expect between an event happening in the service and the delivery of the change notification.

| Resource                | Average latency      | Maximum latency |
|:------------------------|:---------------------|:----------------|
| [alert][] <sup>1</sup>  | Less than 3 minutes  | 5 minutes       |
| [callRecord][]          | Less than 15 minutes | 60 minutes      |
| [channel][]             | Less than 10 seconds | 60 minutes      |
| [chat][]                | Less than 10 seconds | 60 minutes      |
| [chatMessage][]         | Less than 10 seconds | 1 minute        |
| [contact][]             | Unknown              | Unknown         |
| [conversation][]        | Unknown              | Unknown         |
| [conversationMember][]  | Less than 10 seconds | 60 minutes      |
| [driveItem][]           | Less than 1 minute   | 5 minutes       |
| [event][]               | Unknown              | Unknown         |
| [group][]               | Less than 2 minutes  | 15 minutes      |
| [list][]                | Less than 1 minute   | 5 minutes       |
| [message][]             | Unknown              | Unknown         |
| [onlineMeeting][]       | Less than 10 seconds | 1 minute        |
| [presence][]            | Less than 10 seconds | 1 minute        |
| [printer][]             | Less than 1 minute   | 5 minutes       |
| [printTaskDefinition][] | Less than 1 minute   | 5 minutes       |
| [team][]                | Less than 10 seconds | 60 minutes      |
| [todoTask][]            | Less than 2 minutes  | 15 minutes      |
| [user][]                | Less than 2 minutes  | 15 minutes      |

<sup>1</sup> The latency provided for the **alert** resource is only applicable after the alert is created. It doesn't include the time it takes for a rule to create an alert from the data.

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
[printer]: /graph/api/resources/printer
[printTaskDefinition]: /graph/api/resources/printtaskdefinition
[todoTask]: /graph/api/resources/todotask
[channel]: /graph/api/resources/channel
[chat]: /graph/api/resources/chat
[conversationMember]: /graph/api/resources/conversationmember
[team]: /graph/api/resources/team
[onlineMeeting]: /graph/api/resources/onlinemeeting
