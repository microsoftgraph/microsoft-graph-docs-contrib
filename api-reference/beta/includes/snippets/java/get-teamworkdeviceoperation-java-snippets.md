---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkDeviceOperation teamworkDeviceOperation = graphClient.teamwork().devices("0f3ce432-e432-0f3c-32e4-3c0f32e43c0f").operations("eab261f8-61f8-eab2-f861-b2eaf861b2ea")
	.buildRequest()
	.get();

```