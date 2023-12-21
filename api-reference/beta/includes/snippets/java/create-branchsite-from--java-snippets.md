---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BranchSite branchSite = new BranchSite();
branchSite.name = "test branch - 11:50";
branchSite.country = "United States";
branchSite.region = Region.EAST_U_S;
branchSite.bandwidthCapacity = 500L;

graphClient.networkAccess().connectivity().branches()
	.buildRequest()
	.post(branchSite);

```