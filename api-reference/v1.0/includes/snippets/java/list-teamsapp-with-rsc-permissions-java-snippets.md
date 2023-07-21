---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest()
	.filter("id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'")
	.expand("appDefinitions($select=id,authorization)")
	.get();

```