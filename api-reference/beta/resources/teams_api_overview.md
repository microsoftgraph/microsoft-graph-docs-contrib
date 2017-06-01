# Use the Microsoft Graph API to work with Microsoft Teams

Microsoft Teams is a chat-based workspace in Office 365 that provides built-in access to team-specific calendar, files, OneNote notes, Planner plans, and more.

In Microsoft Graph, Microsoft Team is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Office 365 groups cater to 
the various needs of group collaboration. Almost all of the group-based features apply to Microsoft Teams and 
Office 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a team and an Office 365 group is the mode of communication 
between members. Team members communicate by persistent chat in the context of a specific team, and Office 365 group members by group conversations, 
which are email conversations that occur in the context of a group in Outlook.

The following are the differences at the API level: 

- Available to only Microsoft Teams is persistent chat, which is hierarchically represented by 
[channel](../resources/channel.md), [chatThread](../resources/chatthread.md), and [chatMessage](../resources/chatmessage.md).
- Available to only Office 365 groups is group conversations, which is hierarchically represented by 
[conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md). 
- [Create groups](../api/group_post_groups.md) API - Currently you can use this method to create an Office 365 group, but not a Microsoft Team.
- [List joined teams](../api/user_list_joinedteams.md) API - This method applies to only Microsoft Teams.

>**Note:** If you use the groups API in a [Microsoft Teams app](https://msdn.microsoft.com/en-us/microsoft-teams/index#apps-in-microsoft-teams) 
rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article 
[Using Microsoft Graph in your Microsoft Teams pages](https://msdn.microsoft.com/en-us/microsoft-teams/graph).


