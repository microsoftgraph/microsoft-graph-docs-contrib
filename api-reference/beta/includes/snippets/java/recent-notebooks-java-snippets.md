---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

INotebookGetrecentnotebooksCollectionPage getrecentnotebooks = graphClient.me().onenote().notebooks()
	.getrecentnotebooks(true)
	.buildRequest()
	.get();

```