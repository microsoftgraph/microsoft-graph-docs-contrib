---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicy tokenLifetimePolicy = new TokenLifetimePolicy();
tokenLifetimePolicy.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4"));

graphClient.servicePrincipals("2a8f9e7a-af01-413a-9592-c32ec0e5c1a7").tokenLifetimePolicies().references()
	.buildRequest()
	.post(tokenLifetimePolicy);

```