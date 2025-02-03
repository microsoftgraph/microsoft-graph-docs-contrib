---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrinterShare printerShare = new PrinterShare();
printerShare.setName("name-value");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("printer@odata.bind", "https://graph.microsoft.com/beta/print/printers/{id}");
printerShare.setAdditionalData(additionalData);
PrinterShare result = graphClient.print().shares().post(printerShare);


```