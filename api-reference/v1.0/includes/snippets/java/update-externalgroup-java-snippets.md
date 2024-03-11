---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.externalconnectors.ExternalGroup externalGroup = new com.microsoft.graph.models.externalconnectors.ExternalGroup();
externalGroup.setDisplayName("Contoso Marketing");
externalGroup.setDescription("The product marketing team");
com.microsoft.graph.models.externalconnectors.ExternalGroup result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").groups().byExternalGroupId("{externalGroup-id}").patch(externalGroup);


```