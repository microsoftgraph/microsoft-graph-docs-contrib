---
author: "AkJo"
ms.localizationpriority: high
ms.subservice: teams
ms.topic: include
---
<!-- markdownlint-disable MD041 -->
Limits are expressed as requests per second (rps).

| Teams request type                                   | Limit per app per tenant        | Limit per app across all tenants      | Limit per app per tenant per resource(chat/channel)|
|------------------------------------------------------|---------------------------------|------------|---|
| GET [team](/graph/api/team-get)  | 30 rps                          | 600 rps |
| GET [channel](/graph/api/channel-get) | 30 rps                          | 600 rps |  1rps |
| GET tab for [channel](/graph/api/channel-list-tabs), [chat](/graph/api/chat-get-tabs)| 30 rps            | 600 rps | 1rps |
| GET installedApps for [user](/graph/api/userteamwork-get-installedapps),  [team](/graph/api/team-get-installedapps) | 30 rps                          | 600 rps |
| GET installedApps for [chat](/graph/api/chat-get-installedapps) | 30 rps                          | 600 rps | 1rps |
| GET [appCatalogs](/graph/api/appcatalogs-list-teamsapps)   | 30 rps                          | 600 rps |
| POST [channel](/graph/api/channel-post) |  30 rps                         | 300 rps  | 1rps |
| POST tab for [channel](/graph/api/channel-post-tabs) or [chat](/graph/api/chat-post-tabs)|  30 rps                         | 300 rps  | 1rps |
| POST installedApps for [chat](/graph/api/chat-post-installedapps), [user](/graph/api/userteamwork-post-installedapps), [team](/graph/api/team-post-installedapps) |  30 rps                         | 300 rps  |
| POST [appCatalogs](/graph/api/teamsapp-publish)    |  30 rps                         | 300 rps  |
| PATCH [team](/graph/api/team-update), [tab](/graph/api/channel-patch-tabs)|  30 rps                         | 300 rps  |
| PATCH [channel](/graph/api/channel-patch)|  30 rps                         | 300 rps  | 1rps |
| DELETE [channel](/graph/api/channel-delete) |  15 rps                         | 150 rps  | 1rps |
| DELETE tab for [chat](/graph/api/chat-delete-tabs), [channel](/graph/api/channel-delete-tabs)  |  15 rps                         | 150 rps  | 1rps |
| DELETE   installedApps for [chat](/graph/api/chat-delete-installedapps), [user](/graph/api/userteamwork-delete-installedapps), [team](/graph/api/team-delete-installedapps)    |  15 rps                         | 150 rps  |
| DELETE   [appCatalogs](/graph/api/teamsapp-delete)      |  15 rps                         | 150 rps  |
| GET /teams/```{team-id}```, [joinedTeams](/graph/api/user-list-joinedteams)              |  30 rps                         | 300 rps  |
| POST /[teams](/graph/api/team-post) | 10 rps | 100 rps  |
| PUT /groups/```{team-id}```/[team](/graph/api/team-put-teams)| Six rps | 150 rps  |
| POST /```{team-id}```/ [clone](/graph/api/team-clone) | Six rps | 150 rps  |
| GET [channel message](/graph/api/chatmessage-get)  | 20 rps | 200 rps | 1rps |
| GET 1:1/[group chat message](/graph/api/chat-get#example-3-get-a-chat-and-all-its-members)  | 20 rps | 200 rps | 1rps |
| POST [channel message](/graph/api/channel-post-messages) | 50 rps | 500 rps | 1rps |
| POST [chat member](/graph/api/chat-post-members) | 30 rps | 300 rps | 4rpm |
| Delete [chat member](/graph/api/chat-delete-members) | 30 rps | 300 rps | 4rpm |
| POST 1:1/[group chat message](/graph/api/chat-post#example-2-create-a-group-chat) | 20 rps | 200 rps | 1rps |
| GET /teams/```{team-id}```/[schedule](/graph/api/schedule-get) and all APIs under this path | 30 rps | 600 rps |
| POST /teams/```{team-id}```/[schedule](/graph/api/schedule-share) and all APIs under this path | 30 rps | 300 rps |
|PUT /teams/```{team-id}```/[schedule](/graph//api/team-put-schedule) and all APIs under this path | 30 rps | 300 rps |
| POST /teams/```{team-id}```/[sendActivityNotification](/graph/api/team-sendactivitynotification) | Five rps | 50 rps |
| POST /chats/```{chat-id}```/[sendActivityNotification](/graph/api/chat-sendactivitynotification) | Five rps | 50 rps | 1rps |
| POST /users/```{user-id}```/teamwork/[sendActivityNotification](/graph/api/userteamwork-sendactivitynotification) | Five rps | 50 rps |
| POST /teamwork/[sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients) | Two rps | 20 rps |
| GET /teams/```{team-id}```/[members](/graph/api/team-get-members) | 60 rps | 1200 rps |
| POST /teams/```{team-id}```/[members](/graph/api/team-post-members) | 30 rps | 300 rps | 4rpm|
| GET /teams/```{team-id}```/[channels](/graph/api/channel-get) | 60 rps | 1200 rps | 1rps |
| GET /teams/```{team-id}```/channels/```{channel-id}```/[members](/graph/api/channel-get-members) | 60 rps | 1200 rps | 1rps |
| Get all channel messages for a team<br/>GET teams/```{team-id}```/channels/[getAllMessages](/graph/api/channel-getallmessages)<br/>GET teams/```{team-id}```/channels/allMessages | 200rps | 1000rps |
| Get all chat messages for a user<br/>GET users/```{user-id}```/chats/[getAllMessages](/graph/api/chats-getallmessages)<br/>GET users/```{user-id}```/chats/allMessages | 200rps | 1000rps |
| GET /teams/```{team-id}```/channels/[getAllRetainedMessages](/graph/api/channel-getallretainedmessages) | 200rps | 1000rps |
| GET /users/```{user-id}```/chats/[getAllRetainedMessages](/graph/api/chat-getallretainedmessages) | 200rps | 1000rps |
| GET /copilot/users/```{user-id}```/interactionHistory/[getAllEnterpriseInteractions](/microsoft-365-copilot/extensibility/api-reference/aiinteractionhistory-getallenterpriseinteractions) | 30rps | 1500rps |
| Other GET API calls for Microsoft Teams              | 30 rps | 1500 rps | 1rps |
| Other API calls for Microsoft Teams              | 30 rps | 300 rps | 1rps |

A maximum of four requests per second per app can be issued on a given team.

A maximum of one request per second per app per tenant can be issued on a given [channel](/graph/api/resources/channel) or [chat](/graph/api/resources/chat).

A maximum of one request per second per user can be issued when doing POST message in a given chat or channel (This throttling limit doesn't apply to [migration](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams)).

A maximum of five requests per second per user can be issued when doing [List chats](/graph/api/chat-list) or [Get chat](/graph/api/chat-get) or [chat:removeAllAccessForUser](/graph/api/Chat-removeAllAccessForUser)

See also [Microsoft Teams limits](/graph/api/resources/teams-api-overview#microsoft-teams-limits)
and [polling requirements](/graph/api/resources/teams-api-overview#polling-requirements).

The preceding limits apply to the following resources:

| <!-- fake header--> | <!-- fake header--> |
|--|--|
| <ul><li> [aadUserConversationMember](/graph/api/resources/aadUserConversationMember) <li> [changeTrackedEntity](/graph/api/resources/changeTrackedEntity) <br/><li> [channel](/graph/api/resources/channel) <br/><li> [chatMessage](/graph/api/resources/chatMessage) <br/><li> [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent) <br/><li> [conversationMember](/graph/api/resources/conversationMember) <br/><li> [offerShiftRequest](/graph/api/resources/offerShiftRequest) <br/><li> [openShift](/graph/api/resources/openShift) <br/><li> [openShiftChangeRequest](/graph/api/resources/openShiftChangeRequest) <br/><li> [schedule](/graph/api/resources/schedule) <br/> <li> [schedulingGroup](/graph/api/resources/schedulingGroup) <br/><li> [shift](/graph/api/resources/shift) <br/><li> [shiftPreferences](/graph/api/resources/shiftPreferences) </ul> | <ul><li> [swapShiftsChangeRequest](/graph/api/resources/swapShiftsChangeRequest) <br/><li> [team](/graph/api/resources/team) <br/><li> [teamsApp](/graph/api/resources/teamsApp) <br/><li> [teamsAppDefinition](/graph/api/resources/teamsAppDefinition) <br/><li> [teamsAppInstallation](/graph/api/resources/teamsAppInstallation) <br/><li> [teamsAsyncOperation](/graph/api/resources/teamsAsyncOperation) <br/><li> [teamsTab](/graph/api/resources/teamsTab) <br/><li> [teamsTemplate](/graph/api/resources/teamsTemplate) <br/><li> [teamwork](/graph/api/resources/teamwork) <br/><li> [timeOff](/graph/api/resources/timeOff) <br/><li> [timeOffReason](/graph/api/resources/timeOffReason) <br/><li> [timeOffRequest](/graph/api/resources/timeOffRequest) <br/><li> [userSettings](/graph/api/resources/userSettings) <br/> <li> [workforceIntegration](/graph/api/resources/workforceIntegration) </ul> |


