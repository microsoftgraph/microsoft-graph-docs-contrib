---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignments("7242e03e-048c-437b-8810-3e89b285a362").submissions("3cea5cf6-55dc-d6c7-2f5b-3b5cd2e79c3a")
	.unsubmit()
	.buildRequest()
	.post();

```