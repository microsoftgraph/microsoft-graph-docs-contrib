---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutboundSharedUserProfile outboundSharedUserProfile = graphClient.directory().outboundSharedUserProfiles("c228b2ae-c4fb-4eda-9620-7e73dddd1cac")
	.buildRequest()
	.get();

```