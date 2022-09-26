---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage owners = graphClient.servicePrincipals("00063ffc-54e9-405d-b8f3-56124728e051").owners()
	.buildRequest()
	.get();

```