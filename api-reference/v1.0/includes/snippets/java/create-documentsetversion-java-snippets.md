---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DocumentSetVersion documentSetVersion = new DocumentSetVersion();
documentSetVersion.comment = "v1";
documentSetVersion.shouldCaptureMinorVersion = false;

graphClient.sites("root").lists("Documents").items("2").documentSetVersions()
	.buildRequest()
	.post(documentSetVersion);

```