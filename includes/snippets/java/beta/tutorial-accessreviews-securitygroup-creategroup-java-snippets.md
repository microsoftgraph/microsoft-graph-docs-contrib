---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Building security";
group.displayName = "Building security";
LinkedList<String> groupTypesList = new LinkedList<String>();
group.groupTypes = groupTypesList;
group.mailEnabled = false;
group.mailNickname = "buildingsecurity";
group.securityEnabled = true;
group.additionalDataManager().put("owners@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca\"]"));
group.additionalDataManager().put("members@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6\",  \"https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7\"]"));

graphClient.groups()
	.buildRequest()
	.post(group);

```