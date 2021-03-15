---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintTaskCollectionPage tasks = graphClient.print().taskDefinitions("{taskDefinitionId}").tasks()
	.buildRequest()
	.get();

```