---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "id eq '876df28f-2e78-423b-94a5-44181bd0e225',"));

ITeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest( requestOptions )
	.expand("appDefinitions")
	.get();

```