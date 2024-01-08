---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage externalSponsors = graphClient.identityGovernance().entitlementManagement().assignments("{accessPackageAssignmentId}").target().connectedOrganization().externalSponsors()
	.buildRequest()
	.get();

```