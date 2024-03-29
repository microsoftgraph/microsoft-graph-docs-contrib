---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewReviewer accessReviewReviewer = new AccessReviewReviewer();
accessReviewReviewer.setId("006111db-0810-4494-a6df-904d368bd81b");
AccessReviewReviewer result = graphClient.accessReviews().byAccessReviewId("{accessReview-id}").reviewers().post(accessReviewReviewer);


```