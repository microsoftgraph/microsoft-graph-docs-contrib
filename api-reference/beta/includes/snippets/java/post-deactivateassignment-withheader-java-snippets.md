---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "include-unknown-enum-members"));

graphClient.education().classes("ffac078e-1b63-42d0-bc2a-d280896e289a").assignments("2b8090d7-8de9-4fb4-af5d-2e2f68ae098a")
	.deactivate()
	.buildRequest( requestOptions )
	.post();

```