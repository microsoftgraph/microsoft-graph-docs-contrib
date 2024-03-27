---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
team.setVisibility(TeamVisibilityType.Private);
team.setDisplayName("Sample Engineering Team");
team.setDescription("This is a sample engineering team, used to showcase the range of properties supported by this API");
LinkedList<Channel> channels = new LinkedList<Channel>();
Channel channel = new Channel();
channel.setDisplayName("Announcements 📢");
channel.setIsFavoriteByDefault(true);
channel.setDescription("This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.");
channels.add(channel);
Channel channel1 = new Channel();
channel1.setDisplayName("Training 🏋️");
channel1.setIsFavoriteByDefault(true);
channel1.setDescription("This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.");
LinkedList<TeamsTab> tabs = new LinkedList<TeamsTab>();
TeamsTab teamsTab = new TeamsTab();
teamsTab.setDisplayName("A Pinned Website");
TeamsTabConfiguration configuration = new TeamsTabConfiguration();
configuration.setContentUrl("https://learn.microsoft.com/microsoftteams/microsoft-teams");
teamsTab.setConfiguration(configuration);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')");
teamsTab.setAdditionalData(additionalData);
tabs.add(teamsTab);
TeamsTab teamsTab1 = new TeamsTab();
teamsTab1.setDisplayName("A Pinned YouTube Video");
TeamsTabConfiguration configuration1 = new TeamsTabConfiguration();
configuration1.setContentUrl("https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ");
configuration1.setWebsiteUrl("https://www.youtube.com/watch?v=X8krAMdGvCQ");
teamsTab1.setConfiguration(configuration1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')");
teamsTab1.setAdditionalData(additionalData1);
tabs.add(teamsTab1);
channel1.setTabs(tabs);
channels.add(channel1);
Channel channel2 = new Channel();
channel2.setDisplayName("Planning 📅 ");
channel2.setDescription("This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.");
channel2.setIsFavoriteByDefault(false);
channels.add(channel2);
Channel channel3 = new Channel();
channel3.setDisplayName("Issues and Feedback 🐞");
channel3.setDescription("This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.");
channels.add(channel3);
team.setChannels(channels);
TeamMemberSettings memberSettings = new TeamMemberSettings();
memberSettings.setAllowCreateUpdateChannels(true);
memberSettings.setAllowDeleteChannels(true);
memberSettings.setAllowAddRemoveApps(true);
memberSettings.setAllowCreateUpdateRemoveTabs(true);
memberSettings.setAllowCreateUpdateRemoveConnectors(true);
team.setMemberSettings(memberSettings);
TeamGuestSettings guestSettings = new TeamGuestSettings();
guestSettings.setAllowCreateUpdateChannels(false);
guestSettings.setAllowDeleteChannels(false);
team.setGuestSettings(guestSettings);
TeamFunSettings funSettings = new TeamFunSettings();
funSettings.setAllowGiphy(true);
funSettings.setGiphyContentRating(GiphyRatingType.Moderate);
funSettings.setAllowStickersAndMemes(true);
funSettings.setAllowCustomMemes(true);
team.setFunSettings(funSettings);
TeamMessagingSettings messagingSettings = new TeamMessagingSettings();
messagingSettings.setAllowUserEditMessages(true);
messagingSettings.setAllowUserDeleteMessages(true);
messagingSettings.setAllowOwnerDeleteMessages(true);
messagingSettings.setAllowTeamMentions(true);
messagingSettings.setAllowChannelMentions(true);
team.setMessagingSettings(messagingSettings);
TeamDiscoverySettings discoverySettings = new TeamDiscoverySettings();
discoverySettings.setShowInTeamsSearchAndSuggestions(true);
team.setDiscoverySettings(discoverySettings);
LinkedList<TeamsAppInstallation> installedApps = new LinkedList<TeamsAppInstallation>();
TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')");
teamsAppInstallation.setAdditionalData(additionalData2);
installedApps.add(teamsAppInstallation);
TeamsAppInstallation teamsAppInstallation1 = new TeamsAppInstallation();
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')");
teamsAppInstallation1.setAdditionalData(additionalData3);
installedApps.add(teamsAppInstallation1);
team.setInstalledApps(installedApps);
HashMap<String, Object> additionalData4 = new HashMap<String, Object>();
additionalData4.put("template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')");
team.setAdditionalData(additionalData4);
Team result = graphClient.teams().post(team);


```