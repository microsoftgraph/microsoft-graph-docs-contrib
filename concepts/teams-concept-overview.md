# Microsoft Teams API overview (preview)

Microsoft Teams is the ultimate hub for teamwork and intelligent communications. Built on the strength and scale of Office 365 with over 120 million users, Microsoft Teams delivers chat-based collaboration, meetings, calling, and enterprise voice features.

## Why integrate with Microsoft Teams?

Integrating with Microsoft Teams makes it easy for you to build your own services and apps, reaching millions of enterprise users and helping people get work done together. You can use Microsoft Graph to create and manage teams, channels, messages, and more.

### Use Microsoft Graph in any kind of app

Microsoft Teams apps built on Microsoft Graph give work groups a new tool to make collaboration a more productive and compelling experience. Using Microsoft Teams, work group users share assets, interact through chat, and schedule events on the team calendar. Enhance the value of Microsoft Teams by adding team, channel, and conversation automation via apps based on the Microsoft Teams API.

Websites, services, and native platform applications are not run within the Microsoft Teams user experience but can be used to call the Microsoft Teams APIs that enable Microsoft Teams automation scenarios.

**Types of apps enabled for Microsoft Teams**

![Call the Microsoft Teams API from tabs, bots, websites, and services](images/TeamsAppEndpoints.png)

These collaboration tools include Microsoft Graph-enabled tabs or bots running inside Microsoft Teams apps. You can also call Microsoft Graph outside of a Microsoft Teams app, such as from a website or a web service. If you've already enabled your website for Microsoft Graph, you can use that work for Microsoft Teams by using the [Microsoft Teams developer platform](https://docs.microsoft.com/en-us/microsoftteams/platform/#pivot=home&panel=home-all) to [create a tab](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/tabs/tabs-overview) that uses the existing website code.

Microsoft Teams APIs can enhance apps inside and outside of Teams:

|App type|Scenario description|
|:-------|:-------------------|
|Tabs|Surface enhanced content within Microsoft Teams.|
|Connectors|Post updates from external services to channels.|
|Actionable messaging|Add enhanced interaction to your connector cards.|
|Websites|Surface enhanced content in your web pages.|
|Bots|Help users get tasks done in conversations.|
|Activity feed|Engage users via feed notifications.|
|Messaging extensions|Allow users to query and share information in conversations.|
|Services|Enhance your client applications with Microsoft Graph data via your web service.|
|Calling and online meetings|Create Microsoft Teams apps with bots that can initiate and participate in audio/video calls, route/transfer calls based on interactive voice response (IVR) flows, and participate in online meetings.|

### Automate team lifecycles

Use Microsoft Graph to create a new virtual team when a new business issue arises, [populate the team](../api-reference/v1.0/api/group_post_members.md) with the right people, and configure the team with channels and apps. If you want to get the new team together to discuss the business issue, add a new event to the team calendar and then invite the members of the team to the event.

![Automate team lifecycles by creating a team, adding members and owners, configuring team settings, adding channels, installing apps, adding tabs, and archiving or deleting the team when the time comes.](images/teams_lifecycle.png)

When the business issue is resolved and you no longer need the virtual team, use the Microsoft Teams API to archive or delete the team. If you know the maximum duration of the virtual team when you create it, set an [Office 365 group expiration policy](https://support.office.com/en-us/article/office-365-group-expiration-policy-8d253fe5-0e09-4b3c-8b5e-f48def064733?ui=en-US&rs=en-US&ad=US) for the team that automatically removes the team according to the policy.

### Take action when no one is around

Use [application permissions](permissions_reference.md) to work with 
[teams](../api-reference/beta/resources/team.md), [channels](../api-reference/beta/resources/channel.md),
 [tabs](../api-reference/beta/resources/teamstab.md), and [apps](../api-reference/beta/resources/teamsapp.md)
 without human intervention. 
Create a new channel when your customer files in order in your order database. Automatically create teams for classes at the beginning of the school year, and archive them at the end.

### Create teams linked to your app

Allow your customers to create new [teams](../api-reference/beta/resources/team.md) and [channels](../api-reference/beta/resources/channel.md). Install your Teams app in the teams you create. Pin your app to a tab in the channel you create. Send messages to the channel linking back to your website.

### Create and manage multiple teams and channels

Make creating large numbers of teams and populating them with users and channels easy by using the Microsoft Teams API. Automate the creation and management of teams, channels, and apps by calling the same APIs that the [Microsoft Teams Admin Center](https://docs.microsoft.com/en-us/microsoftteams/enable-features-office-365) 
and [Teams PowerShell commandlets](https://docs.microsoft.com/en-us/microsoftteams/teams-powershell-overview) are built on. Make creating large numbers of teams and populating them with users and channels easy by using the Microsoft Teams API. Find and archive the teams you are no longer using.

### Deploy apps to teams

List the teams in your tenant, and install apps to them. Create tabs in channels to give users easy access to apps.

## API reference

Looking for the API reference for this service?

See the [Teams API in Microsoft Graph beta](../api-reference/beta/resources/teams_api_overview.md).

## Next steps

- Learn how to [use the Microsoft Teams API](../api-reference/beta/resources/teams_api_overview.md).
- Drill down on the methods, properties, and relationships of the [team](../api-reference/beta/resources/team.md), [channel](../api-reference/beta/resources/channel.md), and [group](../api-reference/v1.0/resources/group.md) resources.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Read more about the [Microsoft Teams programming model](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/concepts-overview).
- Explore the [calling and online meeting APIs](../api-reference/beta/resources/calls-api-overview.md).
- Get a jump-start with [sample code](https://github.com/OfficeDev/microsoft-teams-sample-graph).
