---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.tenantrelationships.managedtenants.managementactions.item.microsoftgraphmanagedtenantsapply.ApplyPostRequestBody applyPostRequestBody = new com.microsoft.graph.beta.tenantrelationships.managedtenants.managementactions.item.microsoftgraphmanagedtenantsapply.ApplyPostRequestBody();
applyPostRequestBody.setTenantId("String");
applyPostRequestBody.setTenantGroupId("String");
applyPostRequestBody.setManagementTemplateId("String");
var result = graphClient.tenantRelationships().managedTenants().managementActions().byManagementActionId("{managementAction-id}").microsoftGraphManagedTenantsApply().post(applyPostRequestBody);


```