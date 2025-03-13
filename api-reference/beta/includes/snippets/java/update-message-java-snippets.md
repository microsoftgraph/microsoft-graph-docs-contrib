---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
message.setSubject("subject-value");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("content-value");
message.setBody(body);
message.setInferenceClassification(InferenceClassificationType.Other);
Message result = graphClient.me().messages().byMessageId("{message-id}").patch(message);


```