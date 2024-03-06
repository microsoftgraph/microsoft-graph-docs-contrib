---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

InferenceClassificationOverride inferenceClassificationOverride = new InferenceClassificationOverride();
inferenceClassificationOverride.setClassifyAs(InferenceClassificationType.Focused);
EmailAddress senderEmailAddress = new EmailAddress();
senderEmailAddress.setName("Samantha Booth");
senderEmailAddress.setAddress("samanthab@contoso.com");
inferenceClassificationOverride.setSenderEmailAddress(senderEmailAddress);
InferenceClassificationOverride result = graphClient.me().inferenceClassification().overrides().post(inferenceClassificationOverride);


```