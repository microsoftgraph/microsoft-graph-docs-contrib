---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.ReferenceCreate referenceCreate = new com.microsoft.graph.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/v1.0/users/{id}");
graphClient.identityGovernance().entitlementManagement().connectedOrganizations().byConnectedOrganizationId("{connectedOrganization-id}").externalSponsors().ref().post(referenceCreate);


```