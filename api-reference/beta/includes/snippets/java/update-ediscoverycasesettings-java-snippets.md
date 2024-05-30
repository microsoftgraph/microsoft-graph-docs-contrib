---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryCaseSettings ediscoveryCaseSettings = new com.microsoft.graph.beta.models.security.EdiscoveryCaseSettings();
ediscoveryCaseSettings.setOdataType("#microsoft.graph.security.ediscoveryCaseSettings");
com.microsoft.graph.beta.models.security.RedundancyDetectionSettings redundancyDetection = new com.microsoft.graph.beta.models.security.RedundancyDetectionSettings();
redundancyDetection.setOdataType("microsoft.graph.security.redundancyDetectionSettings");
ediscoveryCaseSettings.setRedundancyDetection(redundancyDetection);
com.microsoft.graph.beta.models.security.TopicModelingSettings topicModeling = new com.microsoft.graph.beta.models.security.TopicModelingSettings();
topicModeling.setOdataType("microsoft.graph.security.topicModelingSettings");
ediscoveryCaseSettings.setTopicModeling(topicModeling);
com.microsoft.graph.beta.models.security.OcrSettings ocr = new com.microsoft.graph.beta.models.security.OcrSettings();
ocr.setOdataType("microsoft.graph.security.ocrSettings");
ediscoveryCaseSettings.setOcr(ocr);
com.microsoft.graph.models.security.EdiscoveryCaseSettings result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").settings().patch(ediscoveryCaseSettings);


```