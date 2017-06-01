# Use the Microsoft Graph API to work with Microsoft Teams

Microsoft Teams is built on Azure Active Directory (AAD) [groups](../resources/group.md). As both Microsoft Teams and Office 365 groups are types of AAD groups, 
most of the group functionality that applies to an Office 365 group also applies to a Microsoft Team. 
The main difference between a team and an Office 365 group is the mode of communication between members. Team members communicate by persistent chat 
in the context of a specific team, and Office 365 group members by group conversations, which are email conversations that occur in the context of a group in Outlook.

At the API level, a Microsoft Team is represented by a [group](../resources/group.md) resource. 
You can apply almost all of the groups API on teams; the following are the differences between Microsoft Teams and Office 365 groups: 

- Available to only Microsoft Teams is persistent chat, which is hierarchically represented by 
[channel](../resources/channel.md), [chatThread](../resources/chatthread.md), and [chatMessage](../resources/chatmessage.md).
- Available to only Office 365 groups is group conversations, which is hierarchically represented by 
[conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md). 
- [Create groups](../api/group_post_groups.md) API - Currently you cannot programmatically create a Microsoft Team.
- [List joined teams](../api/user_list_joinedteams.md) API - This method works for only groups that are Microsoft Teams.

>**Note:** If you use the groups API in a [Microsoft Teams app](https://msdn.microsoft.com/en-us/microsoft-teams/index#apps-in-microsoft-teams) 
rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article 
[Using Microsoft Graph in your Microsoft Teams pages](https://msdn.microsoft.com/en-us/microsoft-teams/graph).


