---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ColumnDefinition columnDefinition = new ColumnDefinition();
columnDefinition.setDescription("test");
columnDefinition.setEnforceUniqueValues(false);
columnDefinition.setHidden(false);
columnDefinition.setIndexed(false);
columnDefinition.setName("Title");
TextColumn text = new TextColumn();
text.setAllowMultipleLines(false);
text.setAppendChangesToExistingText(false);
text.setLinesForEditing(0);
text.setMaxLength(255);
columnDefinition.setText(text);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isSearchable", false);
columnDefinition.setAdditionalData(additionalData);
ColumnDefinition result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").columns().post(columnDefinition);


```