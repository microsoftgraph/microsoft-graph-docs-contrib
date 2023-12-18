---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BranchSite branchSite = new BranchSite();
branchSite.name = "My updated branch";

graphClient.networkAccess().connectivity().branches("{branchSiteId}")
	.buildRequest()
	.patch(branchSite);

```