---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRequest governanceRequest = new com.microsoft.graph.beta.models.tenantgovernanceservices.GovernanceRequest();
governanceRequest.setGovernedTenantId("bbbbcccc-1111-dddd-2222-eeee3333ffff");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("governancePolicyTemplate@odata.bind", "https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4");
governanceRequest.setAdditionalData(additionalData);
com.microsoft.graph.models.tenantgovernanceservices.GovernanceRequest result = graphClient.directory().tenantGovernance().governanceRequests().post(governanceRequest);


```