---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.tenantrelationships.managedtenants.tenanttags.item.microsoftgraphmanagedtenantsassigntag.AssignTagPostRequestBody assignTagPostRequestBody = new com.microsoft.graph.beta.tenantrelationships.managedtenants.tenanttags.item.microsoftgraphmanagedtenantsassigntag.AssignTagPostRequestBody();
LinkedList<String> tenantIds = new LinkedList<String>();
tenantIds.add("String");
assignTagPostRequestBody.setTenantIds(tenantIds);
var result = graphClient.tenantRelationships().managedTenants().tenantTags().byTenantTagId("{tenantTag-id}").microsoftGraphManagedTenantsAssignTag().post(assignTagPostRequestBody);


```