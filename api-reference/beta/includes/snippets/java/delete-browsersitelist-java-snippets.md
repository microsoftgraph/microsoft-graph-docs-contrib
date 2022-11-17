---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().edge().internetExplorerMode().siteLists("36ba61eb-c492-4283-a38b-963a1dbb2f69")
	.buildRequest()
	.delete();

```