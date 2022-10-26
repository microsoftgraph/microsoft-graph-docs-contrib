---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveCollectionPage drives = graphClient.users("48d31887-5fad-4d73-a9f5-3c356e68a038").drives()
	.buildRequest()
	.get();

```