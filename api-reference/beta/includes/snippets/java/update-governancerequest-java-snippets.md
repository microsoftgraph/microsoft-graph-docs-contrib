---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRequest governanceRequest = new com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRequest();
governanceRequest.setStatus(com.microsoft.graph.beta.models.tenantgovernanceservices.RequestStatus.Accepted);
com.microsoft.graph.models.tenantgovernanceservices.GovernanceRequest result = graphClient.directory().tenantGovernance().governanceRequests().byGovernanceRequestId("{governanceRequest-id}").patch(governanceRequest);


```