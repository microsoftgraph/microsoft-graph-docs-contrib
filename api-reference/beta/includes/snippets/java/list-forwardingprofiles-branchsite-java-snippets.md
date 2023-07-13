---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingProfileCollectionPage forwardingProfiles = graphClient.networkAccess().connectivity().branches("{branchSiteId}").forwardingProfiles()
	.buildRequest()
	.get();

```