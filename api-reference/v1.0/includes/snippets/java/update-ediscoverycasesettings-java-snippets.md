---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCaseSettings ediscoveryCaseSettings = new EdiscoveryCaseSettings();
RedundancyDetectionSettings redundancyDetection = new RedundancyDetectionSettings();
ediscoveryCaseSettings.redundancyDetection = redundancyDetection;
TopicModelingSettings topicModeling = new TopicModelingSettings();
ediscoveryCaseSettings.topicModeling = topicModeling;
OcrSettings ocr = new OcrSettings();
ediscoveryCaseSettings.ocr = ocr;

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").settings()
	.buildRequest()
	.patch(ediscoveryCaseSettings);

```