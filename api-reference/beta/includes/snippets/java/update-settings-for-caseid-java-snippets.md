---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.CaseSettings caseSettings = new com.microsoft.graph.beta.models.ediscovery.CaseSettings();
com.microsoft.graph.beta.models.ediscovery.RedundancyDetectionSettings redundancyDetection = new com.microsoft.graph.beta.models.ediscovery.RedundancyDetectionSettings();
redundancyDetection.setIsEnabled(false);
redundancyDetection.setSimilarityThreshold(70);
redundancyDetection.setMinWords(12);
redundancyDetection.setMaxWords(400000);
caseSettings.setRedundancyDetection(redundancyDetection);
com.microsoft.graph.beta.models.ediscovery.TopicModelingSettings topicModeling = new com.microsoft.graph.beta.models.ediscovery.TopicModelingSettings();
topicModeling.setIsEnabled(false);
topicModeling.setIgnoreNumbers(false);
topicModeling.setTopicCount(50);
topicModeling.setDynamicallyAdjustTopicCount(false);
caseSettings.setTopicModeling(topicModeling);
com.microsoft.graph.beta.models.ediscovery.OcrSettings ocr = new com.microsoft.graph.beta.models.ediscovery.OcrSettings();
ocr.setIsEnabled(true);
ocr.setMaxImageSize(12000);
caseSettings.setOcr(ocr);
com.microsoft.graph.models.ediscovery.CaseSettings result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").settings().patch(caseSettings);


```