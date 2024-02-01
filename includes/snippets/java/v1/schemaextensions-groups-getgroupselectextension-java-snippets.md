---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage groups = graphClient.groups()
	.buildRequest()
	.filter("bellowscollege_courses/courseId eq '123'")
	.select("displayName,id,description,bellowscollege_courses")
	.get();

```