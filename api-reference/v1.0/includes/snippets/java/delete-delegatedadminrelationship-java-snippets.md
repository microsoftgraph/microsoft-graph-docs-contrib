---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\""));

graphClient.tenantRelationships().delegatedAdminRelationships("5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836")
	.buildRequest( requestOptions )
	.delete();

```