---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HomeRealmDiscoveryPolicyCollectionWithReferencesPage homeRealmDiscoveryPolicies = graphClient.servicePrincipals("19c308f2-e088-464d-8ccb-7137b7bab660").homeRealmDiscoveryPolicies()
	.buildRequest()
	.get();

```