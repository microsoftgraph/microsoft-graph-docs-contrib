---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicy tokenLifetimePolicy = new TokenLifetimePolicy();
LinkedList<String> definitionList = new LinkedList<String>();
definitionList.add("{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"8:00:00"}}");
tokenLifetimePolicy.definition = definitionList;
tokenLifetimePolicy.displayName = "Contoso token lifetime policy";
tokenLifetimePolicy.isOrganizationDefault = true;

graphClient.policies().tokenLifetimePolicies()
	.buildRequest()
	.post(tokenLifetimePolicy);

```