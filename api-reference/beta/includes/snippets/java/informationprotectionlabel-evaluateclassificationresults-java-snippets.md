---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.informationprotection.policy.labels.evaluateclassificationresults.EvaluateClassificationResultsPostRequestBody evaluateClassificationResultsPostRequestBody = new com.microsoft.graph.beta.informationprotection.policy.labels.evaluateclassificationresults.EvaluateClassificationResultsPostRequestBody();
ContentInfo contentInfo = new ContentInfo();
contentInfo.setOdataType("#microsoft.graph.contentInfo");
contentInfo.setFormat(ContentFormat.Default);
contentInfo.setIdentifier(null);
contentInfo.setState(ContentState.Rest);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("format@odata.type", "#microsoft.graph.contentFormat");
additionalData.put("state@odata.type", "#microsoft.graph.contentState");
contentInfo.setAdditionalData(additionalData);
evaluateClassificationResultsPostRequestBody.setContentInfo(contentInfo);
LinkedList<ClassificationResult> classificationResults = new LinkedList<ClassificationResult>();
ClassificationResult classificationResult = new ClassificationResult();
classificationResult.setSensitiveTypeId("cb353f78-2b72-4c3c-8827-92ebe4f69fdf");
classificationResult.setCount(4);
classificationResult.setConfidenceLevel(75);
classificationResults.add(classificationResult);
evaluateClassificationResultsPostRequestBody.setClassificationResults(classificationResults);
var result = graphClient.informationProtection().policy().labels().evaluateClassificationResults().post(evaluateClassificationResultsPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("User-Agent", "ContosoLOBApp/1.0");
});


```