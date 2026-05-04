---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.TenantGovernanceSetting tenantGovernanceSetting = new com.microsoft.graph.beta.models.tenantgovernanceservices.TenantGovernanceSetting();
tenantGovernanceSetting.setCanReceiveInvitations(true);
com.microsoft.graph.models.tenantgovernanceservices.TenantGovernanceSetting result = graphClient.directory().tenantGovernance().settings().patch(tenantGovernanceSetting);


```