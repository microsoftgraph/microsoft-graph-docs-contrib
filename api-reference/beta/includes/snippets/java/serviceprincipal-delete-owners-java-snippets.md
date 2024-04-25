---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.owners.item.ref.$refDeleteRequestBody refDeleteRequestBody = new com.microsoft.graph.serviceprincipals.item.owners.item.ref.$refDeleteRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "https://graph.microsoft.com/v1.0/directoryObjects/{id}");
refDeleteRequestBody.setAdditionalData(additionalData);
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").owners().byDirectoryObjectId("{directoryObject-id}").ref().delete(refDeleteRequestBody);


```