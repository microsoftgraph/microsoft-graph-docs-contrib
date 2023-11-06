---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage internalSponsors = graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}").internalSponsors()
	.buildRequest()
	.get();

```