---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Extension extension = new Extension();
extension.setOdataType("Microsoft.OutlookServices.OpenTypeExtension");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("extensionName", "Com.Contoso.Estimate");
additionalData.put("companyName", "Contoso");
additionalData.put("expirationDate", "2016-07-30T11:00:00.000Z");
additionalData.put("DealValue", 1010100);
LinkedList<String> topPicks = new LinkedList<String>();
topPicks.add("Employees only");
topPicks.add("Add spouse or guest");
topPicks.add("Add family");
additionalData.put("topPicks", topPicks);
extension.setAdditionalData(additionalData);
Extension result = graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").posts().byPostId("{post-id}").extensions().byExtensionId("{extension-id}").patch(extension);


```