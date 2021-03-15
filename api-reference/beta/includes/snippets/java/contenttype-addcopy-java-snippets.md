---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String contentType = "https://graph.microsoft.com/beta/sites/id/contentTypes/0x0101";

graphClient.sites("id").lists("{list-id}").contentTypes()
	.addCopy(contentType)
	.buildRequest()
	.post();

```