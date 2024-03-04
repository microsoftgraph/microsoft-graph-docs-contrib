---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
LinkedList<Channel> channels = new LinkedList<Channel>();
Channel channel = new Channel();
channel.setDisplayName("Class Announcements 📢");
channel.setIsFavoriteByDefault(true);
channels.add(channel);
Channel channel1 = new Channel();
channel1.setDisplayName("Homework 🏋️");
channel1.setIsFavoriteByDefault(true);
channels.add(channel1);
team.setChannels(channels);
TeamMemberSettings memberSettings = new TeamMemberSettings();
memberSettings.setAllowCreateUpdateChannels(false);
memberSettings.setAllowDeleteChannels(false);
memberSettings.setAllowAddRemoveApps(false);
memberSettings.setAllowCreateUpdateRemoveTabs(false);
memberSettings.setAllowCreateUpdateRemoveConnectors(false);
team.setMemberSettings(memberSettings);
LinkedList<TeamsAppInstallation> installedApps = new LinkedList<TeamsAppInstallation>();
TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')");
teamsAppInstallation.setAdditionalData(additionalData);
installedApps.add(teamsAppInstallation);
TeamsAppInstallation teamsAppInstallation1 = new TeamsAppInstallation();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')");
teamsAppInstallation1.setAdditionalData(additionalData1);
installedApps.add(teamsAppInstallation1);
team.setInstalledApps(installedApps);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')");
additionalData2.put("group@odata.bind", "https://graph.microsoft.com/beta/groups('dbd8de4f-5d47-48da-87f1-594bed003375')");
team.setAdditionalData(additionalData2);
Team result = graphClient.teams().post(team);


```