---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.managedtenants.TenantTag tenantTag = new com.microsoft.graph.beta.models.managedtenants.TenantTag();
tenantTag.setDisplayName("Support");
tenantTag.setDescription("Tenants that have purchased extended support");
com.microsoft.graph.models.managedtenants.TenantTag result = graphClient.tenantRelationships().managedTenants().tenantTags().post(tenantTag);


```