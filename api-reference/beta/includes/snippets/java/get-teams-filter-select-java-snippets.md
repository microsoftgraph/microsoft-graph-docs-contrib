---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamCollectionPage teams = graphClient.teams()
	.buildRequest()
	.filter("displayName eq 'A Contoso Team'")
	.select("id,description")
	.get();

```