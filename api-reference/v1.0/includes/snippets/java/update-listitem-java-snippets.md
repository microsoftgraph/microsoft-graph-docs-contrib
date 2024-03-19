---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FieldValueSet fieldValueSet = new FieldValueSet();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("Color", "Fuchsia");
additionalData.put("Quantity", 934);
fieldValueSet.setAdditionalData(additionalData);
FieldValueSet result = graphClient.sites().bySiteId("{site-id}").lists().byListId("{list-id}").items().byListItemId("{listItem-id}").fields().patch(fieldValueSet);


```