---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SectionGroup sectionGroup = graphClient.me().onenote().sectionGroups("1-0b13154b-d92d-46c3-b18b-838c4c9fb88d")
	.buildRequest()
	.get();

```