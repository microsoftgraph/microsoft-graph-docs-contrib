---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTab teamsTab = new TeamsTab();
teamsTab.displayName = "My Contoso Tab";
teamsTab.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8"));
TeamsTabConfiguration configuration = new TeamsTabConfiguration();
configuration.entityId = "2DCA2E6C7A10415CAF6B8AB6661B3154";
configuration.contentUrl = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView";
configuration.websiteUrl = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154";
configuration.removeUrl = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab";
teamsTab.configuration = configuration;

graphClient.teams("{id}").channels("{id}").tabs()
	.buildRequest()
	.post(teamsTab);

```