---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicy tokenLifetimePolicy = new TokenLifetimePolicy();
LinkedList<String> definitionList = new LinkedList<String>();
definitionList.add("{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"5:30:00"}}");
tokenLifetimePolicy.definition = definitionList;
tokenLifetimePolicy.displayName = "Contoso token lifetime policy";
tokenLifetimePolicy.isOrganizationDefault = true;

graphClient.policies().tokenLifetimePolicies("4d2f137b-e8a9-46da-a5c3-cc85b2b840a4")
	.buildRequest()
	.patch(tokenLifetimePolicy);

```