---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PronounsSettings pronounsSettings = graphClient.organization("{organizationId}").settings().pronouns()
	.buildRequest()
	.get();

```