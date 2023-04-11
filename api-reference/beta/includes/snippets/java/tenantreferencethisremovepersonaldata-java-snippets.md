---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directory().outboundSharedUserProfiles("c228b2ae-c4fb-4eda-9620-7e73dddd1cac").tenants("62bfb458-9474-4c44-896b-b30942d055f0")
	.removePersonalData()
	.buildRequest()
	.post();

```