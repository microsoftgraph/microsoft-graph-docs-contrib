---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directory().federationConfigurations("96db02e2-80c1-5555-bc3a-de92ffb8c5be")
	.buildRequest()
	.delete();

```