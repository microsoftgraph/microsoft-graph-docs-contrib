---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.ReferenceCreate referenceCreate = new com.microsoft.graph.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e");
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").claimsMappingPolicies().ref().post(referenceCreate);


```