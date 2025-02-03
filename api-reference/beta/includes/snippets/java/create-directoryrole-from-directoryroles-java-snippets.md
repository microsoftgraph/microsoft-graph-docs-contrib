---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DirectoryRole directoryRole = new DirectoryRole();
directoryRole.setRoleTemplateId("fe930be7-5e62-47db-91af-98c3a49a38b1");
DirectoryRole result = graphClient.directoryRoles().post(directoryRole);


```