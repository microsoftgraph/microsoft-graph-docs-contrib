---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ListItem listItem = new ListItem();
FieldValueSet fields = new FieldValueSet();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("Title", "Widget");
additionalData.put("Color", "Purple");
additionalData.put("Weight", 32);
fields.setAdditionalData(additionalData);
listItem.setFields(fields);
ListItem result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().post(listItem);


```