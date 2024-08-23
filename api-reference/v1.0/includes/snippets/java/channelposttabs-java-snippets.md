---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsTab teamsTab = new TeamsTab();
teamsTab.setDisplayName("My Contoso Tab");
TeamsTabConfiguration configuration = new TeamsTabConfiguration();
configuration.setEntityId("2DCA2E6C7A10415CAF6B8AB6661B3154");
configuration.setContentUrl("https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView");
configuration.setWebsiteUrl("https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154");
configuration.setRemoveUrl("https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab");
teamsTab.setConfiguration(configuration);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8");
teamsTab.setAdditionalData(additionalData);
TeamsTab result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").tabs().post(teamsTab);


```