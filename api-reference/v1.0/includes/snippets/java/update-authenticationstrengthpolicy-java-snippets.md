---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationStrengthPolicy authenticationStrengthPolicy = new AuthenticationStrengthPolicy();
authenticationStrengthPolicy.setOdataType("#microsoft.graph.authenticationStrengthPolicy");
authenticationStrengthPolicy.setDisplayName("FIDO2 only");
authenticationStrengthPolicy.setDescription("An auth strength allowing only FIDO2 security keys.");
AuthenticationStrengthPolicy result = graphClient.policies().authenticationStrengthPolicies().byAuthenticationStrengthPolicyId("{authenticationStrengthPolicy-id}").patch(authenticationStrengthPolicy);


```