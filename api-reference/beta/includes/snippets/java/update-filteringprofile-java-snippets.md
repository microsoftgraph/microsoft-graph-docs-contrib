---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilteringProfile filteringProfile = new FilteringProfile();
filteringProfile.state = Status.DISABLED;

graphClient.networkAccess().filteringProfiles("{filteringProfileId}")
	.buildRequest()
	.patch(filteringProfile);

```