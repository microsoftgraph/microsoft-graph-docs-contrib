---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "8afc02cb-4d62-4dba-b536-9f6d73e9be26";

graphClient.applications("7b45cf6d-9083-4eb2-92c4-a7e090f1fc40").owners().references()
	.buildRequest()
	.post(directoryObject);

```