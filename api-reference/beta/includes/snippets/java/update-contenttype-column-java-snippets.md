---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ColumnDefinition columnDefinition = new ColumnDefinition();
columnDefinition.setRequired(true);
columnDefinition.setHidden(false);
columnDefinition.setPropagateChanges(false);
ColumnDefinition result = graphClient.sites().bySiteId("{site-id}").contentTypes().byContentTypeId("{contentType-id}").columns().byColumnDefinitionId("{columnDefinition-id}").patch(columnDefinition);


```