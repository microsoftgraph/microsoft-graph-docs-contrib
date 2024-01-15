---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.deviceEnrollmentLimit = 5;

graphClient.users()
	.buildRequest()
	.post(user);

```