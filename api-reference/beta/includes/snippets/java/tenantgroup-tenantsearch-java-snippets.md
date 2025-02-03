---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.tenantrelationships.managedtenants.tenantgroups.microsoftgraphmanagedtenantstenantsearch.TenantSearchPostRequestBody tenantSearchPostRequestBody = new com.microsoft.graph.beta.tenantrelationships.managedtenants.tenantgroups.microsoftgraphmanagedtenantstenantsearch.TenantSearchPostRequestBody();
tenantSearchPostRequestBody.setTenantId("String");
var result = graphClient.tenantRelationships().managedTenants().tenantGroups().microsoftGraphManagedTenantsTenantSearch().post(tenantSearchPostRequestBody);


```