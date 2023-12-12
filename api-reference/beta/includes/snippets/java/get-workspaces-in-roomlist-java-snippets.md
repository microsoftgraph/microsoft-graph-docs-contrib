---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkspaceCollectionPage workspaces = graphClient.places("bldg2@contoso.com").microsoft.graph.roomlist().workspaces()
	.buildRequest()
	.get();

```