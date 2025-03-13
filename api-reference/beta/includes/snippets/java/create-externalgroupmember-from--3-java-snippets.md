---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.externalconnectors.Identity identity = new com.microsoft.graph.beta.models.externalconnectors.Identity();
identity.setId("1431b9c38ee647f6a");
identity.setType(com.microsoft.graph.beta.models.externalconnectors.IdentityType.ExternalGroup);
com.microsoft.graph.models.externalconnectors.Identity result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").groups().byExternalGroupId("{externalGroup-id}").members().post(identity);


```