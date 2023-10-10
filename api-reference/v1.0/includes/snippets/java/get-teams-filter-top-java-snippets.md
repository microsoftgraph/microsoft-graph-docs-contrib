---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamCollectionPage teams = graphClient.teams()
	.buildRequest()
	.filter("startswith(displayName, 'A')")
	.top(2)
	.get();

```