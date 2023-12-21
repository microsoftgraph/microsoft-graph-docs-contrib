---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BranchSiteCollectionPage branches = graphClient.networkAccess().connectivity().branches()
	.buildRequest()
	.get();

```