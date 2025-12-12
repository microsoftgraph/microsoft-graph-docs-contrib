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

<!-- Maximum length of subscription per resource. This file is referenced in the change notifications overview and subscription resource type files. -->

| Resource                                       | Maximum expiration time           |
|:-----------------------------------------------|:----------------------------------|
| Copilot [aiInteraction][]                      | 4,320 minutes (three days)     |
| Security [alert][]                             | 43,200 minutes (under 30 days)    |
| Teams [approvals][]                            | 43,200 minutes (under 30 days)    |
| Teams [callRecord][]                           | 4,230 minutes (under three days)  |
| Teams [callRecording][]                        | 4,320 minutes (three days)        |
| Teams [callTranscript][]                       | 4,320 minutes (three days)        |
| Teams [channel][]                              | 4,320 minutes (three days)        |
| Teams [chat][]                                 | 4,320 minutes (three days)        |
| Teams [chatMessage][]                          | 4,320 minutes (three days)        |
| Teams [conversationMember][]                   | 4,320 minutes (three days)        |
| Teams [onlineMeeting][]                        | 4,320 minutes (three days)        |
| Teams [team][]                                 | 4,320 minutes (three days)        |
| Teams [teamsAppInstallation][]                 | 4,320 minutes (3 days)        |
| Teams Shifts [offerShiftRequest][]             | 360 minutes (6 hours)             |
| Teams Shifts [openShiftChangeRequest][]        | 360 minutes (6 hours)             |
| Teams Shifts [shift][]                         | 360 minutes (6 hours)             |
| Teams Shifts [swapShiftsChangeRequest][]       | 360 minutes (6 hours)             |
| Teams Shifts [timeOffRequest][]                | 360 minutes (6 hours)             |
| Group [conversation][]                         | 4,230 minutes (under three days)  |
| OneDrive [driveItem][]                         | 42,300 minutes (under 30 days)    |
| SharePoint [list][]                            | 42,300 minutes (under 30 days)    |
| Outlook [message][], [event][], [contact][]    | 10,080 minutes (under seven days) <br/><br/>For subscriptions with resource data (rich notification subscriptions), subscription lifetime is 1440 minutes (under one day).  |
| [user][], [group][], other directory resources | 41,760 minutes (under 29 days)    |
| [onlineMeeting][]                              | 4,230 minutes (under three days)  |
| [presence][]                                   | 60 minutes (1 hour)               |
| Print [printer][]                              | 4,230 minutes (under three days)  |
| Print [printTaskDefinition][]                  | 4,230 minutes (under three days)  |
| [todoTask][]                                   | 4,230 minutes (under three days) <br/><br/>Webhooks for this resource are only available in the global endpoint and not in the national clouds.  |
| Microsoft Entra Health Monitoring [alert][health monitoring alert] | 42,300 minutes (under 30 days)    |
| **baseTask** (deprecated)                      | 4,230 minutes (under three days)  |

> **Note:** Existing applications and new applications should not exceed the supported value. In the future, any requests to create or renew a subscription beyond the maximum value will fail.

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
[teamsAppInstallation]: /graph/api/resources/teamsappinstallation
[approvals]: /graph/api/resources/approvalItem
[health monitoring alert]: /graph/api/resources/healthmonitoring-alert
