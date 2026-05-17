---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRelationship governanceRelationship = new com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRelationship();
governanceRelationship.setStatus(com.microsoft.graph.beta.models.tenantgovernanceservices.RelationshipStatus.Terminated);
com.microsoft.graph.models.tenantgovernanceservices.GovernanceRelationship result = graphClient.directory().tenantGovernance().governanceRelationships().byGovernanceRelationshipId("{governanceRelationship-id}").patch(governanceRelationship);


```