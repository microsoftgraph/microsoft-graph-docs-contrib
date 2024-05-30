---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2xIdentityUserFlow b2xIdentityUserFlow = new B2xIdentityUserFlow();
b2xIdentityUserFlow.setId("Partner");
b2xIdentityUserFlow.setUserFlowType(UserFlowType.SignUpOrSignIn);
b2xIdentityUserFlow.setUserFlowTypeVersion(1f);
LinkedList<IdentityProvider> identityProviders = new LinkedList<IdentityProvider>();
IdentityProvider identityProvider = new IdentityProvider();
identityProvider.setId("Facebook-OAuth");
identityProvider.setType("Facebook");
identityProvider.setName("Facebook");
identityProviders.add(identityProvider);
b2xIdentityUserFlow.setIdentityProviders(identityProviders);
B2xIdentityUserFlow result = graphClient.identity().b2xUserFlows().post(b2xIdentityUserFlow);


```