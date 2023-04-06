---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppManagementPolicy appManagementPolicy = new AppManagementPolicy();
appManagementPolicy.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"));

graphClient.applications("{id}").appManagementPolicies().references()
	.buildRequest()
	.post(appManagementPolicy);

```