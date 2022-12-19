---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/groups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2"));

graphClient.identityGovernance().entitlementManagement().accessPackages("{id}").incompatibleGroups().references()
	.buildRequest()
	.post(group);

```