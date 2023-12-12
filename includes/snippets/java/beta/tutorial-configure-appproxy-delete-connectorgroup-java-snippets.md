---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("3e6f4c35-a04b-4d03-b98a-66fff89b72e6")
	.buildRequest()
	.delete();

```