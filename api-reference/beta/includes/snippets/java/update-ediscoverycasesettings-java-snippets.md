---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryCaseSettings ediscoveryCaseSettings = new com.microsoft.graph.beta.models.security.EdiscoveryCaseSettings();
ediscoveryCaseSettings.setOdataType("https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/settings/$entity");
com.microsoft.graph.beta.models.security.RedundancyDetectionSettings redundancyDetection = new com.microsoft.graph.beta.models.security.RedundancyDetectionSettings();
redundancyDetection.setIsEnabled(true);
redundancyDetection.setSimilarityThreshold(65);
redundancyDetection.setMinWords(10);
redundancyDetection.setMaxWords(500000);
ediscoveryCaseSettings.setRedundancyDetection(redundancyDetection);
com.microsoft.graph.beta.models.security.TopicModelingSettings topicModeling = new com.microsoft.graph.beta.models.security.TopicModelingSettings();
topicModeling.setIsEnabled(false);
topicModeling.setIgnoreNumbers(true);
topicModeling.setTopicCount(100);
topicModeling.setDynamicallyAdjustTopicCount(true);
ediscoveryCaseSettings.setTopicModeling(topicModeling);
com.microsoft.graph.beta.models.security.OcrSettings ocr = new com.microsoft.graph.beta.models.security.OcrSettings();
ocr.setIsEnabled(false);
ocr.setMaxImageSize(24576);
PeriodAndDuration timeout = PeriodAndDuration.ofDuration(Duration.parse("PT1M"));
ocr.setTimeout(timeout);
ediscoveryCaseSettings.setOcr(ocr);
ediscoveryCaseSettings.setCaseType(com.microsoft.graph.beta.models.security.CaseType.Standard);
ediscoveryCaseSettings.setReviewSetSettings(EnumSet.of(com.microsoft.graph.beta.models.security.ReviewSetSettings.DisableGrouping));
com.microsoft.graph.models.security.EdiscoveryCaseSettings result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").settings().patch(ediscoveryCaseSettings);


```