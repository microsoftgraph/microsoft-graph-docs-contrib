---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReview accessReview = new AccessReview();
accessReview.setDisplayName("TestReview new name");
AccessReview result = graphClient.accessReviews().byAccessReviewId("{accessReview-id}").patch(accessReview);


```