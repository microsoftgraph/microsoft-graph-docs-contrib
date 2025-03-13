---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.serviceprincipals.item.approleassignments.AppRoleAssignmentsPostRequestBody appRoleAssignmentsPostRequestBody = new com.microsoft.graph.beta.serviceprincipals.item.approleassignments.AppRoleAssignmentsPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("principalId", "4628e7df-dff3-407c-a08f-75f08c0806dc");
additionalData.put("principalType", "User");
additionalData.put("appRoleId", "18d14569-c3bd-439b-9a66-3a2aee01d14f");
additionalData.put("resourceId", "a8cac399-cde5-4516-a674-819503c61313");
appRoleAssignmentsPostRequestBody.setAdditionalData(additionalData);
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignments().post(appRoleAssignmentsPostRequestBody);


```