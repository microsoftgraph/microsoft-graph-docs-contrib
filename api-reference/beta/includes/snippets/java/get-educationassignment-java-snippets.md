---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = graphClient.education().classes("f4a941ff-9da6-4707-ba5b-0eae93cad0b4").assignments("3c77de7f-539b-49e1-9c96-1274f2f0ee3b")
	.buildRequest()
	.get();

```