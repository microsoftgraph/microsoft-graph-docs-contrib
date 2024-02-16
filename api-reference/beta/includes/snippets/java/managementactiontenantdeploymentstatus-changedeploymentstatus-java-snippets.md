---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.tenantrelationships.managedtenants.managementactiontenantdeploymentstatuses.microsoftgraphmanagedtenantschangedeploymentstatus.ChangeDeploymentStatusPostRequestBody changeDeploymentStatusPostRequestBody = new com.microsoft.graph.beta.tenantrelationships.managedtenants.managementactiontenantdeploymentstatuses.microsoftgraphmanagedtenantschangedeploymentstatus.ChangeDeploymentStatusPostRequestBody();
changeDeploymentStatusPostRequestBody.setTenantGroupId("String");
changeDeploymentStatusPostRequestBody.setTenantId("String");
changeDeploymentStatusPostRequestBody.setManagementActionId("String");
changeDeploymentStatusPostRequestBody.setManagementTemplateId("String");
changeDeploymentStatusPostRequestBody.setStatus("String");
var result = graphClient.tenantRelationships().managedTenants().managementActionTenantDeploymentStatuses().microsoftGraphManagedTenantsChangeDeploymentStatus().post(changeDeploymentStatusPostRequestBody);


```