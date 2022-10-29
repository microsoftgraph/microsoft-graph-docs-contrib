---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSchoolCollectionWithReferencesPage schools = graphClient.education().classes("7e4ec76c-8276-43ef-ba10-9aaa197cb212").schools()
	.buildRequest()
	.get();

```