---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("guestUserRole", "2af84b1e-32c8-42b7-82bc-daa82404023b");
authorizationPolicy.setAdditionalData(additionalData);
AuthorizationPolicy result = graphClient.policies().authorizationPolicy().byAuthorizationPolicyId("{authorizationPolicy-id}").patch(authorizationPolicy);


```