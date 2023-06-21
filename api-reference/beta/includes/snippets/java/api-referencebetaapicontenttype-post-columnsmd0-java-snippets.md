---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ColumnDefinition columnDefinition = new ColumnDefinition();
columnDefinition.additionalDataManager().put("sourceColumn@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103"));

graphClient.sites("{site-id}").contentTypes("{contentType-id}").columns()
	.buildRequest()
	.post(columnDefinition);

```