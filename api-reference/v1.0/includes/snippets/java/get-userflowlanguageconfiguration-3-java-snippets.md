---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserFlowLanguageConfiguration result = graphClient.identity().b2xUserFlows().byB2xIdentityUserFlowId("{b2xIdentityUserFlow-id}").languages().byUserFlowLanguageConfigurationId("{userFlowLanguageConfiguration-id}").get();


```