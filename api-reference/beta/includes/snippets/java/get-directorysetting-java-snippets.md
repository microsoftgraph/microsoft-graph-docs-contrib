---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectorySetting directorySetting = graphClient.settings("f0b2d6f5-097d-4177-91af-a24e530b53cc")
	.buildRequest()
	.get();

```