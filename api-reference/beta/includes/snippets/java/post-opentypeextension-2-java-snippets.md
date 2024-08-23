---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("Com.Contoso.Referral");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("companyName", "Wingtip Toys");
additionalData.put("dealValue", 500050);
additionalData.put("expirationDate", "2015-12-03T10:00:00.000Z");
extension.setAdditionalData(additionalData);
Extension result = graphClient.me().messages().byMessageId("{message-id}").extensions().post(extension);


```