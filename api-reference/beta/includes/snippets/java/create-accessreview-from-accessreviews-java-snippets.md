---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReview accessReview = new AccessReview();
accessReview.setDisplayName("TestReview");
OffsetDateTime startDateTime = OffsetDateTime.parse("2017-02-10T00:35:53.214Z");
accessReview.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2017-03-12T00:35:53.214Z");
accessReview.setEndDateTime(endDateTime);
Identity reviewedEntity = new Identity();
reviewedEntity.setId("99025615-a0b1-47ec-9117-35377b10998b");
accessReview.setReviewedEntity(reviewedEntity);
accessReview.setReviewerType("delegated");
accessReview.setBusinessFlowTemplateId("6e4f3d20-c5c3-407f-9695-8460952bcc68");
accessReview.setDescription("Sample description");
LinkedList<AccessReviewReviewer> reviewers = new LinkedList<AccessReviewReviewer>();
AccessReviewReviewer accessReviewReviewer = new AccessReviewReviewer();
accessReviewReviewer.setId("f260246a-09b1-4fd5-8d18-daed736071ec");
reviewers.add(accessReviewReviewer);
AccessReviewReviewer accessReviewReviewer1 = new AccessReviewReviewer();
accessReviewReviewer1.setId("5a4e184c-4ee5-4883-96e9-b371f8da88e3");
reviewers.add(accessReviewReviewer1);
accessReview.setReviewers(reviewers);
AccessReviewSettings settings = new AccessReviewSettings();
settings.setMailNotificationsEnabled(true);
settings.setRemindersEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setAutoReviewEnabled(false);
settings.setActivityDurationInDays(30);
settings.setAutoApplyReviewResultsEnabled(false);
settings.setAccessRecommendationsEnabled(false);
AccessReviewRecurrenceSettings recurrenceSettings = new AccessReviewRecurrenceSettings();
recurrenceSettings.setRecurrenceType("onetime");
recurrenceSettings.setRecurrenceEndType("endBy");
recurrenceSettings.setDurationInDays(0);
recurrenceSettings.setRecurrenceCount(0);
settings.setRecurrenceSettings(recurrenceSettings);
AutoReviewSettings autoReviewSettings = new AutoReviewSettings();
autoReviewSettings.setNotReviewedResult("Deny");
settings.setAutoReviewSettings(autoReviewSettings);
accessReview.setSettings(settings);
AccessReview result = graphClient.accessReviews().post(accessReview);


```