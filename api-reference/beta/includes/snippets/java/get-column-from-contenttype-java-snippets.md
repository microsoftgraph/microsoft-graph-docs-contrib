---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ColumnDefinition columnDefinition = graphClient.sites("{site-id}").contentTypes("{contentType-id}").columns("{column-id}")
	.buildRequest()
	.get();

```