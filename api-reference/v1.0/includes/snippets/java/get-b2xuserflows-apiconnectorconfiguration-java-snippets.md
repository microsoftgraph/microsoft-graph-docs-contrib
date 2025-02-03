---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserFlowApiConnectorConfiguration result = graphClient.identity().b2xUserFlows().byB2xIdentityUserFlowId("{b2xIdentityUserFlow-id}").apiConnectorConfiguration().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"postFederationSignup", "postAttributeCollection"};
});


```