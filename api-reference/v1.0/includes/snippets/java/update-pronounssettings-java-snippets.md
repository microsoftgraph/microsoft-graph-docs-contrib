---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PronounsSettings pronounsSettings = new PronounsSettings();
pronounsSettings.isEnabledInOrganization = true;

graphClient.admin().people().pronouns()
	.buildRequest()
	.patch(pronounsSettings);

```