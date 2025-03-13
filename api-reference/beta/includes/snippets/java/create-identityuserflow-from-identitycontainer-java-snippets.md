---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityUserFlow identityUserFlow = new IdentityUserFlow();
identityUserFlow.setId("Pol1");
identityUserFlow.setUserFlowType(UserFlowType.SignUpOrSignIn);
identityUserFlow.setUserFlowTypeVersion(1f);
IdentityUserFlow result = graphClient.identity().userFlows().post(identityUserFlow);


```