---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceCreate referenceCreate = new com.microsoft.graph.beta.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/beta/identityProviders/{id}");
graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").identityProviders().ref().post(referenceCreate);


```