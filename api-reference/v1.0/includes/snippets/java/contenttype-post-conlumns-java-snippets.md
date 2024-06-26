---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ColumnDefinition columnDefinition = new ColumnDefinition();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("sourceColumn@odata.bind", "https://graph.microsoft.com/v1.0/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103");
columnDefinition.setAdditionalData(additionalData);
ColumnDefinition result = graphClient.sites().bySiteId("{site-id}").contentTypes().byContentTypeId("{contentType-id}").columns().post(columnDefinition);


```