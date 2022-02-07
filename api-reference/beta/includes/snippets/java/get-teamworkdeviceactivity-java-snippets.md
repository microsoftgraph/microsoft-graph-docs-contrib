---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkDeviceActivity teamworkDeviceActivity = graphClient.teamwork().devices("1ae3fe60-fe60-1ae3-60fe-e31a60fee31a").activity()
	.buildRequest()
	.get();

```