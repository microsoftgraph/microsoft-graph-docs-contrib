---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("String");
idsList.add("String");
idsList.add("String");

String memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice";

graphClient.admin().windows().updates().updatableAssets("5c55730b-730b-5c55-0b73-555c0b73555c")
	.removeMembersById(UpdatableAssetRemoveMembersByIdParameterSet
		.newBuilder()
		.withIds(idsList)
		.withMemberEntityType(memberEntityType)
		.build())
	.buildRequest()
	.post();

```