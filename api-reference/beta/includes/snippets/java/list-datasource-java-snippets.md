---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DataSourceCollectionWithReferencesPage custodianSources = graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").searches("c61a5860-d634-4d14-aea7-d82b6f4eb7af").custodianSources()
	.buildRequest()
	.get();

```