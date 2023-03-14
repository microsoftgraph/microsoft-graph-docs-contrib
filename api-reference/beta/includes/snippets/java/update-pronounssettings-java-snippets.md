---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PronounsSettings pronounsSettings = new PronounsSettings();
pronounsSettings.isEnabledInOrganization = true;

graphClient.organization("{organizationId}").settings().pronouns()
	.buildRequest()
	.patch(pronounsSettings);

```