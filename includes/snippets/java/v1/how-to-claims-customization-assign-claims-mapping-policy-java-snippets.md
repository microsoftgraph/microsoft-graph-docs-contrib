---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.ReferenceCreate referenceCreate = new com.microsoft.graph.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/06d5d20d-2955-45f8-a15d-cf2f434b8116");
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").claimsMappingPolicies().ref().post(referenceCreate);


```