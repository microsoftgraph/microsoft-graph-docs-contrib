---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.setIsLanguageCustomizationEnabled(true);
b2cIdentityUserFlow.setDefaultLanguageTag("en");
B2cIdentityUserFlow result = graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").patch(b2cIdentityUserFlow);


```