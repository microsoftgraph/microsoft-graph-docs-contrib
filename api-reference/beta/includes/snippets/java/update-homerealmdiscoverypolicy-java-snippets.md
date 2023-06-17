---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HomeRealmDiscoveryPolicy homeRealmDiscoveryPolicy = new HomeRealmDiscoveryPolicy();
LinkedList<String> definitionList = new LinkedList<String>();
definitionList.add("{"HomeRealmDiscoveryPolicy":
     {"AccelerateToFederatedDomain":true,
      "PreferredDomain":"federated.example.edu",
      "AlternateIdLogin":{"Enabled":true}}}");
homeRealmDiscoveryPolicy.definition = definitionList;
homeRealmDiscoveryPolicy.displayName = "Contoso default HRD Policy";

graphClient.policies().homeRealmDiscoveryPolicies("{id}")
	.buildRequest()
	.patch(homeRealmDiscoveryPolicy);

```