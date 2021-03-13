---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPhone itemPhone = new ItemPhone();
itemPhone.type = PhoneType.OTHER;

graphClient.users("{userId}").profile().phones("{id}")
	.buildRequest()
	.patch(itemPhone);

```