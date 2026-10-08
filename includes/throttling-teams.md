---
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: teams
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

Microsoft Teams applies throttling limits across four independent dimensions. A request is throttled when it exceeds **any** limit that applies to it, so always design for the lowest limit that your scenario hits.

| Dimension | What it counts | When it typically applies |
|--|--|--|
| **Per app** | All requests from one app (client ID) summed across every tenant. | Multitenant apps that serve many customers. |
| **Per app per tenant** | Requests from one app within a single tenant. | The most commonly reached limit. |
| **Per resource** | Requests against a single team, channel, or chat. | Apps that concentrate traffic on one conversation. |
| **Per user** | Requests made on behalf of a single user. | Delegated (user) permission scenarios. |

Limits are expressed as requests per second (rps) unless stated otherwise.

> Each limit is evaluated over a short burst window. A sustained limit of approximately 83 percent of the listed value is also evaluated over a longer window, so a workload that runs continuously at the listed rate can still be throttled. Size your steady-state traffic below the listed limit and use exponential backoff.

A dash (`-`) means that no dedicated limit is defined for that dimension. The request is still subject to the [default limits](#default-limits) and to any other limit in the same row.

### Teams

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}` | 1500 rps | 30 rps | 4 rps per team | - |
| GET [/me/joinedTeams or /users/`{user-id}`/joinedTeams](/graph/api/user-list-joinedteams) | 300 rps | 30 rps | - | - |
| POST [/teams](/graph/api/team-post) | 100 rps | 10 rps | - | - |
| PUT /groups/`{team-id}`/[team](/graph/api/team-put-teams) | 150 rps | 6 rps | - | - |
| PATCH [/teams/`{team-id}`](/graph/api/team-update) | 300 rps | 30 rps | 4 rps per team | - |
| POST /teams/`{team-id}`/[clone](/graph/api/team-clone) | 150 rps | 6 rps | - | - |
| POST /teams/`{team-id}`/[completeMigration](/graph/api/team-completemigration) | 100 rps | 10 rps | - | - |

### Channels

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}`/[channels](/graph/api/channel-list) | 1200 rps | 60 rps | 4 rps per team | - |
| GET /teams/`{team-id}`/channels/[`{channel-id}`](/graph/api/channel-get) | 600 rps | 30 rps | 1 rps per channel | - |
| GET /teams/`{team-id}`/channels/`{channel-id}`/[members](/graph/api/channel-list-members) | 1200 rps | 60 rps | 1 rps per channel | - |
| POST /teams/`{team-id}`/[channels](/graph/api/channel-post) | 100 rps | 10 rps | 4 rps per team | - |
| PATCH /teams/`{team-id}`/channels/[`{channel-id}`](/graph/api/channel-patch) | 300 rps | 30 rps | 1 rps per channel | - |
| DELETE /teams/`{team-id}`/channels/[`{channel-id}`](/graph/api/channel-delete) | 150 rps | 15 rps | 1 rps per channel | - |
| POST /teams/`{team-id}`/channels/`{channel-id}`/[completeMigration](/graph/api/channel-completemigration) | 100 rps | 10 rps | - | - |

### Channel messages

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}`/channels/`{channel-id}`/[messages](/graph/api/channel-list-messages) | 200 rps | 20 rps | 1 rps per channel | - |
| POST /teams/`{team-id}`/channels/`{channel-id}`/[messages](/graph/api/channel-post-messages) | 500 rps | 50 rps | 1 rps per channel | 1 rps |
| POST /teams/`{team-id}`/channels/`{channel-id}`/messages/`{message-id}`/[replies](/graph/api/chatmessage-post-replies) | 500 rps | 50 rps | 1 rps per channel | 1 rps |

The POST limits in the preceding table are shared by regular message sends and by [message import](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams). The per-user limit doesn't apply to import.

### Chats

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET [/chats](/graph/api/chat-list), /me/chats, or /users/`{user-id}`/chats | 200 rps | 20 rps | - | 1 rps |
| GET [/chats/`{chat-id}`](/graph/api/chat-get) | 2000 rps | 200 rps | 1 rps per chat | 5 rps |
| POST [/chats](/graph/api/chat-post) | 200 rps | 20 rps | - | - |
| PATCH [/chats/`{chat-id}`](/graph/api/chat-patch) | 300 rps | 30 rps | 1 rps per chat | - |
| DELETE [/chats/`{chat-id}`](/graph/api/chat-delete) | 10 rps | 1 rps | 1 rps per chat | - |
| POST /chats/`{chat-id}`/[removeAllAccessForUser](/graph/api/chat-removeallaccessforuser) | 300 rps | 30 rps | 1 rps per chat | 1 rps |

### Chat messages

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /chats/`{chat-id}`/[messages](/graph/api/chat-list-messages) | 200 rps | 20 rps | 1 rps per chat | - |
| POST /chats/`{chat-id}`/[messages](/graph/api/chat-post-messages) | 200 rps | 20 rps | 1 rps per chat | 1 rps |
| PATCH /chats/`{chat-id}`/[messages/`{message-id}`](/graph/api/chatmessage-update) | 300 rps | 30 rps | 1 rps per chat | - |
| POST /chats/`{chat-id}`/messages/`{message-id}`/[softDelete](/graph/api/chatmessage-softdelete) or [undoSoftDelete](/graph/api/chatmessage-undosoftdelete) | 300 rps | 30 rps | 1 rps per chat | - |
| GET /chats/`{chat-id}`/messages/`{message-id}`/[hostedContents](/graph/api/chatmessagehostedcontent-get) | 500 rps | 50 rps | 1 rps per chat | - |
| GET /chats/`{chat-id}`/messages/`{message-id}`/hostedContents/`{id}`/$value | 600 rps | 60 rps | 1 rps per chat | - |

### Members

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}`/[members](/graph/api/team-list-members) | 1200 rps | 60 rps | 4 rps per team | - |
| POST /teams/`{team-id}`/[members](/graph/api/team-post-members) | 300 rps | 30 rps | 4 requests per minute per team | - |
| POST /teams/`{team-id}`/members/[add](/graph/api/conversationmember-add) | 100 rps | 10 rps | 4 requests per minute per team | - |
| POST /chats/`{chat-id}`/[members](/graph/api/chat-post-members) | 300 rps | 30 rps | 4 requests per minute per chat | - |
| DELETE /chats/`{chat-id}`/[members/`{membership-id}`](/graph/api/chat-delete-members) | 300 rps | 30 rps | 4 requests per minute per chat | - |

### Apps, tabs, and permission grants

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET installedApps for [team](/graph/api/team-list-installedapps), [chat](/graph/api/chat-list-installedapps), or [user](/graph/api/userteamwork-list-installedapps) | 1500 rps | 30 rps | 1 rps per chat or channel | - |
| GET permissionGrants for [team](/graph/api/team-list-permissiongrants) or [chat](/graph/api/chat-list-permissiongrants) | 1500 rps | 30 rps | 1 rps per chat or channel | - |
| POST installedApps for [team](/graph/api/team-post-installedapps), [chat](/graph/api/chat-post-installedapps), or [user](/graph/api/userteamwork-post-installedapps) | 300 rps | 30 rps | 1 rps per chat or channel | - |
| DELETE installedApps for [team](/graph/api/team-delete-installedapps), [chat](/graph/api/chat-delete-installedapps), or [user](/graph/api/userteamwork-delete-installedapps) | 150 rps | 15 rps | 1 rps per chat or channel | - |
| GET tabs for [channel](/graph/api/channel-list-tabs) or [chat](/graph/api/chat-list-tabs) | 600 rps | 30 rps | 1 rps per chat or channel | - |
| POST tabs for [channel](/graph/api/channel-post-tabs) or [chat](/graph/api/chat-post-tabs) | 300 rps | 30 rps | 1 rps per chat or channel | - |
| PATCH [tab](/graph/api/channel-patch-tabs) | 300 rps | 30 rps | 1 rps per chat or channel | - |
| DELETE tabs for [channel](/graph/api/channel-delete-tabs) or [chat](/graph/api/chat-delete-tabs) | 150 rps | 15 rps | 1 rps per chat or channel | - |
| GET [/appCatalogs/teamsApps](/graph/api/appcatalogs-list-teamsapps) | 1500 rps | 30 rps | - | - |
| POST [/appCatalogs/teamsApps](/graph/api/teamsapp-publish) | 300 rps | 30 rps | - | - |
| DELETE [/appCatalogs/teamsApps/`{app-id}`](/graph/api/teamsapp-delete) | 150 rps | 15 rps | - | - |

### Activity feed notifications

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| POST /teams/`{team-id}`/[sendActivityNotification](/graph/api/team-sendactivitynotification) | 50 rps | 5 rps | 4 rps per team | - |
| POST /chats/`{chat-id}`/[sendActivityNotification](/graph/api/chat-sendactivitynotification) | 50 rps | 5 rps | 1 rps per chat | - |
| POST /users/`{user-id}`/teamwork/[sendActivityNotification](/graph/api/userteamwork-sendactivitynotification) | 50 rps | 5 rps | - | - |
| POST /teamwork/[sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients) | 20 rps | 2 rps | - | - |

### Bulk message retrieval

These APIs are designed for export and compliance scenarios and have their own higher limits.

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}`/channels/[getAllMessages](/graph/api/channel-getallmessages) or /channels/allMessages | 1000 rps | 200 rps | - | - |
| GET /users/`{user-id}`/chats/[getAllMessages](/graph/api/chats-getallmessages) or /chats/allMessages | 1000 rps | 200 rps | - | - |
| GET /teams/`{team-id}`/channels/[getAllRetainedMessages](/graph/api/channel-getallretainedmessages) | 1000 rps | 200 rps | - | - |
| GET /users/`{user-id}`/chats/[getAllRetainedMessages](/graph/api/chat-getallretainedmessages) | 1000 rps | 200 rps | - | - |
| GET /copilot/users/`{user-id}`/interactionHistory/[getAllEnterpriseInteractions](/microsoft-365-copilot/extensibility/api-reference/aiinteractionhistory-getallenterpriseinteractions) | 1500 rps | 30 rps | - | - |

### Shifts

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET /teams/`{team-id}`/[schedule](/graph/api/schedule-get) and all APIs under this path | 600 rps | 30 rps | - | - |
| POST /teams/`{team-id}`/[schedule](/graph/api/schedule-share) and all APIs under this path | 300 rps | 30 rps | - | - |
| PUT /teams/`{team-id}`/[schedule](/graph/api/team-put-schedule) and all APIs under this path | 300 rps | 30 rps | - | - |

### Sections

| Request | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| All section management APIs under /users/`{user-id}`/teamwork/[sections](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) | - | 5 rps | - | - |

All section operations, including sections, section items, reorder actions, and delta queries, share a single limit.

### Default limits

Any Microsoft Teams request that isn't listed in the preceding tables uses these limits.

| Request type | Per app | Per app per tenant | Per resource | Per user |
|--|--|--|--|--|
| GET | 1500 rps | 30 rps | 1 rps per chat or channel | 1 rps |
| POST, PUT, and PATCH | 300 rps | 30 rps | 1 rps per chat or channel | 1 rps |
| DELETE | 150 rps | 15 rps | 1 rps per chat or channel | 1 rps |

### Related resources

See also [Microsoft Teams limits](/graph/api/resources/teams-api-overview#microsoft-teams-limits)
and [polling requirements](/graph/api/resources/teams-api-overview#polling-requirements).

The preceding limits apply to the following resources:

| <!-- fake header--> | <!-- fake header--> |
|--|--|
| <ul><li> [aadUserConversationMember](/graph/api/resources/aadUserConversationMember) <li> [changeTrackedEntity](/graph/api/resources/changeTrackedEntity) <br/><li> [channel](/graph/api/resources/channel) <br/><li> [chatMessage](/graph/api/resources/chatMessage) <br/><li> [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent) <br/><li> [conversationMember](/graph/api/resources/conversationMember) <br/><li> [offerShiftRequest](/graph/api/resources/offerShiftRequest) <br/><li> [openShift](/graph/api/resources/openShift) <br/><li> [openShiftChangeRequest](/graph/api/resources/openShiftChangeRequest) <br/><li> [schedule](/graph/api/resources/schedule) <br/> <li> [schedulingGroup](/graph/api/resources/schedulingGroup) <br/><li> [shift](/graph/api/resources/shift) <br/><li> [shiftPreferences](/graph/api/resources/shiftPreferences) </ul> | <ul><li> [swapShiftsChangeRequest](/graph/api/resources/swapShiftsChangeRequest) <br/><li> [team](/graph/api/resources/team) <br/><li> [teamsApp](/graph/api/resources/teamsApp) <br/><li> [teamsAppDefinition](/graph/api/resources/teamsAppDefinition) <br/><li> [teamsAppInstallation](/graph/api/resources/teamsAppInstallation) <br/><li> [teamsAsyncOperation](/graph/api/resources/teamsAsyncOperation) <br/><li> [teamsTab](/graph/api/resources/teamsTab) <br/><li> [teamsTemplate](/graph/api/resources/teamsTemplate) <br/><li> [teamwork](/graph/api/resources/teamwork) <br/><li> [teamworkSection](/graph/api/resources/teamworksection?view=graph-rest-beta&preserve-view=true) <br/><li> [teamworkSectionItem](/graph/api/resources/teamworksectionitem?view=graph-rest-beta&preserve-view=true) <br/><li> [timeOff](/graph/api/resources/timeOff) <br/><li> [timeOffReason](/graph/api/resources/timeOffReason) <br/><li> [timeOffRequest](/graph/api/resources/timeOffRequest) <br/><li> [userSettings](/graph/api/resources/userSettings) <br/> <li> [workforceIntegration](/graph/api/resources/workforceIntegration) </ul> |
