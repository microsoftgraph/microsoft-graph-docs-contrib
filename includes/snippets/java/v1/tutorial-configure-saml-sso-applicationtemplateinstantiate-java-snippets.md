---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.applicationtemplates.item.instantiate.InstantiatePostRequestBody instantiatePostRequestBody = new com.microsoft.graph.applicationtemplates.item.instantiate.InstantiatePostRequestBody();
instantiatePostRequestBody.setDisplayName("AWS Contoso");
var result = graphClient.applicationTemplates().byApplicationTemplateId("{applicationTemplate-id}").instantiate().post(instantiatePostRequestBody);


```