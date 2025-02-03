---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TokenIssuancePolicy tokenIssuancePolicy = new TokenIssuancePolicy();
LinkedList<String> definition = new LinkedList<String>();
definition.add("definition-value");
tokenIssuancePolicy.setDefinition(definition);
tokenIssuancePolicy.setDisplayName("displayName-value");
tokenIssuancePolicy.setIsOrganizationDefault(true);
TokenIssuancePolicy result = graphClient.policies().tokenIssuancePolicies().post(tokenIssuancePolicy);


```