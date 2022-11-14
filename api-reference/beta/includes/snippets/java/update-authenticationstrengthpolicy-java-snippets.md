---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationStrengthPolicy authenticationStrengthPolicy = new AuthenticationStrengthPolicy();
authenticationStrengthPolicy.displayName = "FIDO2 only";
authenticationStrengthPolicy.description = "An auth strength allowing only FIDO2 security keys.";

graphClient.policies().authenticationStrengthPolicies("a34a4c89-c5bf-4c0b-927d-adc396bf1f19")
	.buildRequest()
	.patch(authenticationStrengthPolicy);

```