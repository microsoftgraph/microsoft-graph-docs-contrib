---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jumasure
ms.prod: "change-notifications"
ms.topic: include
ms.date: 02/23/2022
ms.localizationpriority: high
---

<!-- markdownlint-disable MD041-->

<!-- Maximum length of subscription per resource. This file is referenced in the change notifications overview and subscription resource type files. -->

| Resource                                       | Maximum expiration time       |
|:-----------------------------------------------|:------------------------------|
| Security [alert][]                             | 43,200 minutes (under 30 days) |
| Teams [callRecord][]                           | 4,230 minutes (under 3 days)   |
| Teams [channel][]                              | 60 minutes (1 hour)           |
| Teams [chat][]                                 | 60 minutes (1 hour)           |
| Teams [chatMessage][]                          | 60 minutes (1 hour)           |
| Teams [conversationMember][]                   | 60 minutes (1 hour)           |
| Teams [onlineMeeting][]                        | 4,320 minutes (3 days)         |
| Teams [team][]                                 | 60 minutes (1 hour)           |
| Group [conversation][]                         | 4,230 minutes (under 3 days)   |
| OneDrive [driveItem][]                         | 42,300 minutes (under 30 days) |
| SharePoint [list][]                            | 42,300 minutes (under 30 days) |
| Outlook [message][], [event][], [contact][]    | 4,230 minutes (under 3 days)   |
| [user][], [group][], other directory resources | 41,760 minutes (under 29 days) |
| [onlineMeeting][]                              | 4,230 minutes (under 3 days)   |
| [presence][]                                   | 60 minutes (1 hour)           |
| Print [printer][]                              | 4,230 minutes (under 3 days)   |
| Print [printTaskDefinition][]                  | 4,230 minutes (under 3 days)   |
| [todoTask][]                                   | 4,230 minutes (under 3 days) <br/><br/>Webhooks for this resource are only available in the global endpoint and not in the national clouds.  |
| **baseTask** (deprecated)                      | 4,230 minutes (under 3 days)   |

> **Note:** Existing applications and new applications should not exceed the supported value. In the future, any requests to create or renew a subscription beyond the maximum value will fail.


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