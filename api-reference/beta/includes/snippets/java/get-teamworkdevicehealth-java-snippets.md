---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkDeviceHealth teamworkDeviceHealth = graphClient.teamwork().devices("d8214fe3-4fe3-d821-e34f-21d8e34f21d8").health()
	.buildRequest()
	.get();

```