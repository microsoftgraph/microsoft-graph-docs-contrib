---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RecycleBinItemCollectionPage items = graphClient.sites("contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a").recycleBin().items()
	.buildRequest()
	.get();

```