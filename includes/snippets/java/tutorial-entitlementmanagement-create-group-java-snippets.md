---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Marketing group";
group.displayName = "Marketing resources";
group.mailEnabled = false;
group.mailNickname = "markres";
group.securityEnabled = true;

graphClient.groups()
	.buildRequest()
	.post(group);

```