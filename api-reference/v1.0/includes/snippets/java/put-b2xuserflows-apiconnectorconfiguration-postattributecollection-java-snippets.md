---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.ReferenceUpdate referenceUpdate = new com.microsoft.graph.models.ReferenceUpdate();
referenceUpdate.setOdataId("https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}");
graphClient.identity().b2xUserFlows().byB2xIdentityUserFlowId("{b2xIdentityUserFlow-id}").apiConnectorConfiguration().postAttributeCollection().ref().put(referenceUpdate);


```