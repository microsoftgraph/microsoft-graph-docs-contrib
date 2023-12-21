---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringProfileCollectionPage filteringProfiles = graphClient.networkAccess().filteringProfiles()
	.buildRequest()
	.get();

```