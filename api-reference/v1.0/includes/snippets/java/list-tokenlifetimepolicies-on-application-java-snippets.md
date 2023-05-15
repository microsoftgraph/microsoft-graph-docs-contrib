---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicyCollectionWithReferencesPage tokenLifetimePolicies = graphClient.applications("3ccc9971-9ae7-45d6-8de8-263fd25fe116").tokenLifetimePolicies()
	.buildRequest()
	.get();

```