---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRequest governanceRequest = new GovernanceRequest();
governanceRequest.setStatus(RequestStatus.Accepted);
GovernanceRequest result = graphClient.directory().tenantGovernance().governanceRequests().byGovernanceRequestId("{governanceRequest-id}").patch(governanceRequest);


```