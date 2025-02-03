---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
TeamMemberSettings memberSettings = new TeamMemberSettings();
memberSettings.setAllowCreateUpdateChannels(true);
team.setMemberSettings(memberSettings);
TeamMessagingSettings messagingSettings = new TeamMessagingSettings();
messagingSettings.setAllowUserEditMessages(true);
messagingSettings.setAllowUserDeleteMessages(true);
team.setMessagingSettings(messagingSettings);
TeamFunSettings funSettings = new TeamFunSettings();
funSettings.setAllowGiphy(true);
funSettings.setGiphyContentRating(GiphyRatingType.Strict);
team.setFunSettings(funSettings);
Team result = graphClient.teams().byTeamId("{team-id}").patch(team);


```