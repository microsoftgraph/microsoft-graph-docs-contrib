---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateapplication.EvaluateApplicationPostRequestBody evaluateApplicationPostRequestBody = new com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateapplication.EvaluateApplicationPostRequestBody();
com.microsoft.graph.beta.models.security.ContentInfo contentInfo = new com.microsoft.graph.beta.models.security.ContentInfo();
contentInfo.setOdataType("#microsoft.graph.security.contentInfo");
contentInfo.setContentFormat("File");
contentInfo.setIdentifier(null);
contentInfo.setState(com.microsoft.graph.beta.models.security.ContentState.Rest);
LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair> metadata = new LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair>();
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled");
keyValuePair.setValue("True");
metadata.add(keyValuePair);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair1 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair1.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair1.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method");
keyValuePair1.setValue("Standard");
metadata.add(keyValuePair1);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair2 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair2.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair2.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate");
keyValuePair2.setValue("1/1/0001 12:00:00 AM");
metadata.add(keyValuePair2);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair3 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair3.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair3.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId");
keyValuePair3.setValue("cfa4cf1d-a337-4481-aa99-19d8f3d63f7c");
metadata.add(keyValuePair3);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair4 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair4.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair4.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name");
keyValuePair4.setValue("LabelScopedToBob_Tests");
metadata.add(keyValuePair4);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair5 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair5.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair5.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits");
keyValuePair5.setValue("0");
metadata.add(keyValuePair5);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair6 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair6.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair6.setName("MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId");
keyValuePair6.setValue("00000000-0000-0000-0000-000000000000");
metadata.add(keyValuePair6);
contentInfo.setMetadata(metadata);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("format@odata.type", "#microsoft.graph.security.contentFormat");
additionalData.put("format", "default");
additionalData.put("state@odata.type", "#microsoft.graph.security.contentState");
additionalData.put("metadata@odata.type", "#Collection(microsoft.graph.security.keyValuePair)");
contentInfo.setAdditionalData(additionalData);
evaluateApplicationPostRequestBody.setContentInfo(contentInfo);
com.microsoft.graph.beta.models.security.LabelingOptions labelingOptions = new com.microsoft.graph.beta.models.security.LabelingOptions();
labelingOptions.setOdataType("#microsoft.graph.security.labelingOptions");
labelingOptions.setAssignmentMethod(com.microsoft.graph.beta.models.security.AssignmentMethod.Standard);
labelingOptions.setLabelId("836ff34f-b604-4a62-a68c-d6be4205d569");
com.microsoft.graph.beta.models.security.DowngradeJustification downgradeJustification = new com.microsoft.graph.beta.models.security.DowngradeJustification();
downgradeJustification.setJustificationMessage("Justified");
downgradeJustification.setIsDowngradeJustified(true);
labelingOptions.setDowngradeJustification(downgradeJustification);
LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair> extendedProperties = new LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair>();
labelingOptions.setExtendedProperties(extendedProperties);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("assignmentMethod@odata.type", "#microsoft.graph.security.assignmentMethod");
additionalData1.put("labelId@odata.type", "#Guid");
additionalData1.put("extendedProperties@odata.type", "#Collection(microsoft.graph.security.keyValuePair)");
labelingOptions.setAdditionalData(additionalData1);
evaluateApplicationPostRequestBody.setLabelingOptions(labelingOptions);
var result = graphClient.users().byUserId("{user-id}").security().informationProtection().sensitivityLabels().microsoftGraphSecurityEvaluateApplication().post(evaluateApplicationPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("User-Agent", "ContosoLobApp/1.0");
});


```