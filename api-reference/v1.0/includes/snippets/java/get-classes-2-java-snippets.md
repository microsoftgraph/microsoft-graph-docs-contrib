---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClassCollectionWithReferencesPage classes = graphClient.education().schools("f2598f43-629c-4ea9-9265-97a34839644e").classes()
	.buildRequest()
	.get();

```