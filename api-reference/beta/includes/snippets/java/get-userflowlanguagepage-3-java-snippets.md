---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").languages().byUserFlowLanguageConfigurationId("{userFlowLanguageConfiguration-id}").defaultPages().byUserFlowLanguagePageId("{userFlowLanguagePage-id}").content().get();


```