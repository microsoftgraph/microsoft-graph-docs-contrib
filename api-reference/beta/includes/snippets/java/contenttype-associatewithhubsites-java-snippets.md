---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> hubSiteUrlsList = new LinkedList<String>();
hubSiteUrlsList.add("https://graph.microsoft.com/beta/sites/id");

Boolean propagateToExistingLists = false;

graphClient.sites("id").contentTypes("id")
	.associateWithHubSites(hubSiteUrlsList,propagateToExistingLists)
	.buildRequest()
	.post();

```