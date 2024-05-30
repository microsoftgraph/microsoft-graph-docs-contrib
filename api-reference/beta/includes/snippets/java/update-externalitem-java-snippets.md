---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.externalconnectors.ExternalItem externalItem = new com.microsoft.graph.beta.models.externalconnectors.ExternalItem();
LinkedList<com.microsoft.graph.beta.models.externalconnectors.Acl> acl = new LinkedList<com.microsoft.graph.beta.models.externalconnectors.Acl>();
com.microsoft.graph.beta.models.externalconnectors.Acl acl1 = new com.microsoft.graph.beta.models.externalconnectors.Acl();
acl1.setType(com.microsoft.graph.beta.models.externalconnectors.AclType.Everyone);
acl1.setValue("67a141d8-cf4e-4528-ba07-bed21bfacd2d");
acl1.setAccessType(com.microsoft.graph.beta.models.externalconnectors.AccessType.Grant);
acl.add(acl1);
externalItem.setAcl(acl);
com.microsoft.graph.models.externalconnectors.ExternalItem result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").items().byExternalItemId("{externalItem-id}").put(externalItem);


```