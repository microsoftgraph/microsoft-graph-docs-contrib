---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.setId("Customer");
b2cIdentityUserFlow.setUserFlowType(UserFlowType.SignUpOrSignIn);
b2cIdentityUserFlow.setUserFlowTypeVersion(3f);
B2cIdentityUserFlow result = graphClient.identity().b2cUserFlows().post(b2cIdentityUserFlow);


```