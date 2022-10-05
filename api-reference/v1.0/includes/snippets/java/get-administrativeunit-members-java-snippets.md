---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = graphClient.directory().administrativeUnits("8a07f5a8-edc9-4847-bbf2-dde106594bf4").members("5bde3e51-d13b-4db1-9948-fe4b109d11a7")
	.buildRequest()
	.get();

```