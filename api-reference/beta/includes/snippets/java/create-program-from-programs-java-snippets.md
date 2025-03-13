---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Program program = new Program();
program.setDisplayName("testprogram3");
program.setDescription("test description");
Program result = graphClient.programs().post(program);


```