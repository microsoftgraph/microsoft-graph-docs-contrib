---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.applications.item.setverifiedpublisher.SetVerifiedPublisherPostRequestBody setVerifiedPublisherPostRequestBody = new com.microsoft.graph.beta.applications.item.setverifiedpublisher.SetVerifiedPublisherPostRequestBody();
setVerifiedPublisherPostRequestBody.setVerifiedPublisherId("1234567");
graphClient.applications().byApplicationId("{application-id}").setVerifiedPublisher().post(setVerifiedPublisherPostRequestBody);


```