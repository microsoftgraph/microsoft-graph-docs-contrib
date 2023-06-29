---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.servicePrincipals("19c308f2-e088-464d-8ccb-7137b7bab660").homeRealmDiscoveryPolicies("6c6f154f-cb39-4ff9-bf5b-62d5ad585cde").reference()
	.buildRequest()
	.delete();

```