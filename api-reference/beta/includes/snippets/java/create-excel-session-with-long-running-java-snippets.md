---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "respond-async"));

Boolean persistChanges = true;

graphClient.me().drive().items("{drive-item-id}").workbook()
	.createSession(WorkbookCreateSessionParameterSet
		.newBuilder()
		.withPersistChanges(persistChanges)
		.build())
	.buildRequest( requestOptions )
	.post();

```