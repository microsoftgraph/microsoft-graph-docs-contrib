---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TokenLifetimePolicy tokenLifetimePolicy = new TokenLifetimePolicy();
LinkedList<String> definition = new LinkedList<String>();
definition.add("{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}");
tokenLifetimePolicy.setDefinition(definition);
tokenLifetimePolicy.setDisplayName("Contoso token lifetime policy");
tokenLifetimePolicy.setIsOrganizationDefault(true);
TokenLifetimePolicy result = graphClient.policies().tokenLifetimePolicies().post(tokenLifetimePolicy);


```