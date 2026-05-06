---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomAuthenticationExtension customAuthenticationExtension = new CustomAuthenticationExtension();
customAuthenticationExtension.setOdataType("#microsoft.graph.onVerifiedIdClaimValidationCustomExtension");
customAuthenticationExtension.setDisplayName("Verified ID Claim Validation (updated)");
customAuthenticationExtension.setDescription("Updated description for Verified ID claim validation");
CustomAuthenticationExtension result = graphClient.identity().customAuthenticationExtensions().byCustomAuthenticationExtensionId("{customAuthenticationExtension-id}").patch(customAuthenticationExtension);


```