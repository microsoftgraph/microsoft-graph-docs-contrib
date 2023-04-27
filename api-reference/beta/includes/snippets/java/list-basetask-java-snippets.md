---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content tasks = graphClient.me().tasks().lists().aQMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNm().tasks()
	.buildRequest()
	.get();

```