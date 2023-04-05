---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.displayName = "myGroup";

graphClient.termStore().groups()
	.buildRequest()
	.post(group);

```