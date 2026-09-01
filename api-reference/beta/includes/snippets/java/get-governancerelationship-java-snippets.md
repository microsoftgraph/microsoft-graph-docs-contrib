---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRelationship result = graphClient.directory().tenantGovernance().governanceRelationships().byGovernanceRelationshipId("{governanceRelationship-id}").get();


```