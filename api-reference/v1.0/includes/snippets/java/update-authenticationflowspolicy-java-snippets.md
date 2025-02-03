---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationFlowsPolicy authenticationFlowsPolicy = new AuthenticationFlowsPolicy();
SelfServiceSignUpAuthenticationFlowConfiguration selfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration();
selfServiceSignUp.setIsEnabled(true);
authenticationFlowsPolicy.setSelfServiceSignUp(selfServiceSignUp);
AuthenticationFlowsPolicy result = graphClient.policies().authenticationFlowsPolicy().patch(authenticationFlowsPolicy);


```