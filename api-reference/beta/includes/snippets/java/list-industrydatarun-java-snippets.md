---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IndustryDataRunCollectionPage runs = graphClient.external().industryData().runs()
	.buildRequest()
	.get();

```