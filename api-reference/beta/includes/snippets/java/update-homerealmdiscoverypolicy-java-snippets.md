---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HomeRealmDiscoveryPolicy homeRealmDiscoveryPolicy = new HomeRealmDiscoveryPolicy();
LinkedList<String> definition = new LinkedList<String>();
definition.add("{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}");
homeRealmDiscoveryPolicy.setDefinition(definition);
homeRealmDiscoveryPolicy.setDisplayName("Contoso default HRD Policy");
HomeRealmDiscoveryPolicy result = graphClient.policies().homeRealmDiscoveryPolicies().byHomeRealmDiscoveryPolicyId("{homeRealmDiscoveryPolicy-id}").patch(homeRealmDiscoveryPolicy);


```