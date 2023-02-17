---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DocumentSetVersion documentSetVersion = graphClient.sites("root").lists("Documents").items("2").documentSetVersions("1")
	.buildRequest()
	.get();

```