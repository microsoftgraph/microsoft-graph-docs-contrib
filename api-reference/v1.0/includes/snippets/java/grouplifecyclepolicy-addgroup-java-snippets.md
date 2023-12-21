---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String groupId = "ffffffff-ffff-ffff-ffff-ffffffffffff";

graphClient.groupLifecyclePolicies("{id}")
	.addGroup(GroupLifecyclePolicyAddGroupParameterSet
		.newBuilder()
		.withGroupId(groupId)
		.build())
	.buildRequest()
	.post();

```