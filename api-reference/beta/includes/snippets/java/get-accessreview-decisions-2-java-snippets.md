---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewDecisionCollectionResponse result = graphClient.accessReviews().byAccessReviewId("{accessReview-id}").myDecisions().get();


```