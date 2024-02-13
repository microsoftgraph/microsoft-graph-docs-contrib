---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("Com.Contoso.Deal");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("companyName", "Alpine Skis");
additionalData.put("dealValue", 1010100);
additionalData.put("expirationDate", "2015-07-03T13:04:00.000Z");
extension.setAdditionalData(additionalData);
Extension result = graphClient.groups().byGroupId("{group-id}").events().byEventId("{event-id}").extensions().post(extension);


```