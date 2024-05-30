---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateclassificationresults.EvaluateClassificationResultsPostRequestBody evaluateClassificationResultsPostRequestBody = new com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateclassificationresults.EvaluateClassificationResultsPostRequestBody();
com.microsoft.graph.beta.models.security.ContentInfo contentInfo = new com.microsoft.graph.beta.models.security.ContentInfo();
contentInfo.setOdataType("#microsoft.graph.security.contentInfo");
contentInfo.setContentFormat("File");
contentInfo.setIdentifier("c:\user\new.docx");
contentInfo.setState(com.microsoft.graph.beta.models.security.ContentState.Rest);
LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair> metadata = new LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair>();
contentInfo.setMetadata(metadata);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("format@odata.type", "#microsoft.graph.security.contentFormat");
additionalData.put("format", "default");
additionalData.put("state@odata.type", "#microsoft.graph.security.contentState");
contentInfo.setAdditionalData(additionalData);
evaluateClassificationResultsPostRequestBody.setContentInfo(contentInfo);
LinkedList<com.microsoft.graph.beta.models.security.ClassificationResult> classificationResults = new LinkedList<com.microsoft.graph.beta.models.security.ClassificationResult>();
com.microsoft.graph.beta.models.security.ClassificationResult classificationResult = new com.microsoft.graph.beta.models.security.ClassificationResult();
classificationResult.setSensitiveTypeId("50842eb7-edc8-4019-85dd-5a5c1f2bb085");
classificationResult.setCount(7);
classificationResult.setConfidenceLevel(99);
classificationResults.add(classificationResult);
evaluateClassificationResultsPostRequestBody.setClassificationResults(classificationResults);
var result = graphClient.users().byUserId("{user-id}").security().informationProtection().sensitivityLabels().microsoftGraphSecurityEvaluateClassificationResults().post(evaluateClassificationResultsPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("User-Agent", "ContosoLOBApp/1.0");
});


```