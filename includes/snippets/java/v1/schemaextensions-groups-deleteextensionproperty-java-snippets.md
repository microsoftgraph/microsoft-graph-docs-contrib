---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.bellowscollege_courses = null;

graphClient.groups("8fb45944-4085-449f-b95d-f7dd74a1b081")
	.buildRequest()
	.patch(group);

```