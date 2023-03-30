---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("84b80893-8749-40a3-97b7-68513b600544");
idsList.add("5d6059b6-368d-45f8-91e1-8e07d485f1d0");
idsList.add("0b944de3-e0fc-4774-a49a-b135213725ef");
idsList.add("b75a5ab2-fe55-4463-bd31-d21ad555c6e0");

LinkedList<String> typesList = new LinkedList<String>();
typesList.add("user");
typesList.add("group");
typesList.add("device");

graphClient.directoryObjects()
	.getByIds(DirectoryObjectGetByIdsParameterSet
		.newBuilder()
		.withIds(idsList)
		.withTypes(typesList)
		.build())
	.buildRequest()
	.post();

```