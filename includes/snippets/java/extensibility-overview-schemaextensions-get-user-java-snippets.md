---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = graphClient.users("0668e673-908b-44ea-861d-0661297e1a3e")
	.buildRequest()
	.select("id,displayName,extkmpdyld2_graphLearnCourses")
	.get();

```