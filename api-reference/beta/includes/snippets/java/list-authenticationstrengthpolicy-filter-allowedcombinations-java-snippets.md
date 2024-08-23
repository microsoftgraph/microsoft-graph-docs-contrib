---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationStrengthPolicyCollectionResponse result = graphClient.policies().authenticationStrengthPolicies().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "allowedCombinations/any(x:x has 'sms, password')";
});


```