---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkDeviceConfiguration teamworkDeviceConfiguration = graphClient.teamwork().devices("e19229ed-29ed-e192-ed29-92e1ed2992e1").configuration()
	.buildRequest()
	.get();

```