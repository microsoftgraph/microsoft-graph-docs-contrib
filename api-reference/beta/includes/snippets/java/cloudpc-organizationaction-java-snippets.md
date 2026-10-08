---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.organizationaction.OrganizationActionPostRequestBody organizationActionPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.organizationaction.OrganizationActionPostRequestBody();
organizationActionPostRequestBody.setActionType(CloudPcOrganizationActionType.Activate);
var result = graphClient.deviceManagement().virtualEndpoint().organizationAction().post(organizationActionPostRequestBody);


```