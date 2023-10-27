---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostTrackerCollectionWithReferencesPage trackers = graphClient.security().threatIntelligence().hosts("contoso.com").trackers()
	.buildRequest()
	.get();

```