---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGroupCollectionWithReferencesPage allowedGroups = graphClient.print().shares("{printerShareId}").allowedGroups()
	.buildRequest()
	.get();

```