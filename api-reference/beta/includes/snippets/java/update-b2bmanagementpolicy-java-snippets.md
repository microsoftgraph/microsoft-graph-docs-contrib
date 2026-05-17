---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2bManagementPolicy b2bManagementPolicy = new B2bManagementPolicy();
b2bManagementPolicy.setOdataType("#microsoft.graph.b2bManagementPolicy");
b2bManagementPolicy.setDescription("Policy used for B2B features");
b2bManagementPolicy.setDisplayName("Policy1");
LinkedList<String> definition = new LinkedList<String>();
definition.add("{'B2BManagementPolicy':{'Version':1}}");
b2bManagementPolicy.setDefinition(definition);
b2bManagementPolicy.setIsOrganizationDefault(true);
B2bManagementPolicy result = graphClient.policies().b2bManagementPolicies().byB2bManagementPolicyId("{b2bManagementPolicy-id}").patch(b2bManagementPolicy);


```