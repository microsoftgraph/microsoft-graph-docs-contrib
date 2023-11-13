---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage group = graphClient.users("{id}").memberOf().microsoft.graph.group()
	.buildRequest()
	.filter("appRoleAssignments/$count gt 0")
	.select("id,displayName")
	.get();

```