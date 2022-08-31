---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookCommentReply workbookCommentReply = graphClient.me().drive().items("{id}").workbook().comments("{id}").replies("{id}")
	.buildRequest()
	.get();

```