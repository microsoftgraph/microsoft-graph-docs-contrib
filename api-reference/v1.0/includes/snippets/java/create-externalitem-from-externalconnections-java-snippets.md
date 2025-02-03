---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.externalconnectors.ExternalItem externalItem = new com.microsoft.graph.models.externalconnectors.ExternalItem();
LinkedList<com.microsoft.graph.models.externalconnectors.Acl> acl = new LinkedList<com.microsoft.graph.models.externalconnectors.Acl>();
com.microsoft.graph.models.externalconnectors.Acl acl1 = new com.microsoft.graph.models.externalconnectors.Acl();
acl1.setType(com.microsoft.graph.models.externalconnectors.AclType.User);
acl1.setValue("e811976d-83df-4cbd-8b9b-5215b18aa874");
acl1.setAccessType(com.microsoft.graph.models.externalconnectors.AccessType.Grant);
acl.add(acl1);
com.microsoft.graph.models.externalconnectors.Acl acl2 = new com.microsoft.graph.models.externalconnectors.Acl();
acl2.setType(com.microsoft.graph.models.externalconnectors.AclType.ExternalGroup);
acl2.setValue("14m1b9c38qe647f6a");
acl2.setAccessType(com.microsoft.graph.models.externalconnectors.AccessType.Deny);
acl.add(acl2);
externalItem.setAcl(acl);
com.microsoft.graph.models.externalconnectors.Properties properties = new com.microsoft.graph.models.externalconnectors.Properties();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("title", "Error in the payment gateway");
additionalData.put("priority", 1);
additionalData.put("assignee", "john@contoso.com");
properties.setAdditionalData(additionalData);
externalItem.setProperties(properties);
com.microsoft.graph.models.externalconnectors.ExternalItemContent content = new com.microsoft.graph.models.externalconnectors.ExternalItemContent();
content.setValue("Error in payment gateway...");
content.setType(com.microsoft.graph.models.externalconnectors.ExternalItemContentType.Text);
externalItem.setContent(content);
com.microsoft.graph.models.externalconnectors.ExternalItem result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").items().byExternalItemId("{externalItem-id}").put(externalItem);


```