---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetCollectionPage exclusions = graphClient.admin().windows().updates().deploymentAudiences("be0538f6-91d8-4b4a-8dbc-d6f9b70da20b").exclusions()
	.buildRequest()
	.get();

```