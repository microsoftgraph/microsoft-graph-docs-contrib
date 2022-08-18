---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DocumentSetVersionCollectionPage documentSetVersions = graphClient.sites("root").lists("Documents").items("1").documentSetVersions()
	.buildRequest()
	.get();

```