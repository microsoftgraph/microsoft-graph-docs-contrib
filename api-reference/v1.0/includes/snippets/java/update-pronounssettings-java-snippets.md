---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PronounsSettings pronounsSettings = new PronounsSettings();
pronounsSettings.setIsEnabledInOrganization(true);
PronounsSettings result = graphClient.admin().people().pronouns().patch(pronounsSettings);


```