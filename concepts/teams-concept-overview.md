# Microsoft Teams teamwork API overview

Microsoft Teams is the ultimate hub for teamwork and intelligent communications. Built on the strength and scale of Office 365 with over 120 million users, Teams delivers chat-based collaboration, meetings, calling, and enterprise voice features.

## Why integrate with Microsoft Teams?

Integrating with Microsoft Teams makes it easy for you to build your own services and apps, reaching millions of enterprise users and helping people get work done together.  You can use Microsoft Graph to create and manage teams, channels, messages, and more.

### Use Microsoft Graph with or without a Teams app
You can call Microsoft Graph APIs from within a Teams app, such as a tab or bot app, running inside Microsoft Teams. You can also call Microsoft Graph outside of a Teams app, such as from a website or a web service.

![Call Teams API from Tabs, Bots, Web sites, and Services](images/Teams_GraphAPIUsage.png)

### Create Multiple Teams and Channels

Allow your customers to create new [teams](../api-reference/beta/resources/team.md) and [channels](../api-reference/beta/resources/channel.md) linked to your app. Make creating large numbers of teams and populating them with users and channels easy by using the Microsoft Graph Teams APIs.

### Automate Team Lifecycles

Use Microsoft Graph to create a new virtual team when a new business issue arises, [populate the team](../api-reference/v1.0/api/group_post_members.md) with the right people, and configure the team with channels. To start a team channel discussion around the new business issue, you can seed the channel with a new conversation thread carrying text appropriate for the business issue. If you want to get the new team together to discuss the business issue, add a new meeting to the team calendar and then invite the members of the team to the meeting.

When the business issue is resolved and you no longer need the virtual team, use Microsoft Graph Teams API to tear down the team. If you know the maximum duration of the virtual team when you create it, set a lifecycle policy for the team that automatically removes the team according to the policy.

### Read and write channel messages

Start new conversations, reply to existing ones, or read what's already been said. To extend the virtual team business issue scenario, you can add an intelligent bot to a team channel that can send messages to team channel when business issue-related events transpire.

## Next steps

The Teams API can open up new ways for you to engage with users:

- [Teams API overview](../api-reference/beta/resources/teams_api_overview.md)
- Drill down on the methods, properties, and relationships of the [team](../api-reference/beta/resources/team.md), [channel](../api-reference/beta/resources/channel.md) , and [group](.../api-reference/v1.0/resources/group.md) resources.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

