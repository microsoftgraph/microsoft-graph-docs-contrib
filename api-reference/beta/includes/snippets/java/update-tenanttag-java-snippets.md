---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.managedtenants.TenantTag tenantTag = new com.microsoft.graph.beta.models.managedtenants.TenantTag();
tenantTag.setDisplayName("Onboarding");
tenantTag.setDescription("Tenants that we are currently onboarding");
com.microsoft.graph.models.managedtenants.TenantTag result = graphClient.tenantRelationships().managedTenants().tenantTags().byTenantTagId("{tenantTag-id}").patch(tenantTag);


```