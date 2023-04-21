---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage appliesTo = graphClient.policies().tokenLifetimePolicies("4d2f137b-e8a9-46da-a5c3-cc85b2b840a4").appliesTo()
	.buildRequest()
	.get();

```