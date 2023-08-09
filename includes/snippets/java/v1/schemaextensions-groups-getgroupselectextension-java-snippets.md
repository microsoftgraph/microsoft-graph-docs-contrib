---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage groups = graphClient.groups()
	.buildRequest()
	.filter("graphlearn_courses/courseId eq '123'")
	.select("displayName,id,description,graphlearn_courses")
	.get();

```