---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.informationprotection.policy.labels.evaluateremoval.EvaluateRemovalPostRequestBody evaluateRemovalPostRequestBody = new com.microsoft.graph.beta.informationprotection.policy.labels.evaluateremoval.EvaluateRemovalPostRequestBody();
ContentInfo contentInfo = new ContentInfo();
contentInfo.setOdataType("#microsoft.graph.contentInfo");
contentInfo.setFormat(ContentFormat.Default);
contentInfo.setIdentifier(null);
contentInfo.setState(ContentState.Rest);
LinkedList<KeyValuePair> metadata = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled");
keyValuePair.setValue("True");
metadata.add(keyValuePair);
KeyValuePair keyValuePair1 = new KeyValuePair();
keyValuePair1.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair1.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method");
keyValuePair1.setValue("Standard");
metadata.add(keyValuePair1);
KeyValuePair keyValuePair2 = new KeyValuePair();
keyValuePair2.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair2.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate");
keyValuePair2.setValue("1/1/0001 12:00:00 AM");
metadata.add(keyValuePair2);
KeyValuePair keyValuePair3 = new KeyValuePair();
keyValuePair3.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair3.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId");
keyValuePair3.setValue("cfa4cf1d-a337-4481-aa99-19d8f3d63f7c");
metadata.add(keyValuePair3);
KeyValuePair keyValuePair4 = new KeyValuePair();
keyValuePair4.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair4.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name");
keyValuePair4.setValue("General");
metadata.add(keyValuePair4);
KeyValuePair keyValuePair5 = new KeyValuePair();
keyValuePair5.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair5.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits");
keyValuePair5.setValue("0");
metadata.add(keyValuePair5);
KeyValuePair keyValuePair6 = new KeyValuePair();
keyValuePair6.setOdataType("#microsoft.graph.keyValuePair");
keyValuePair6.setName("MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId");
keyValuePair6.setValue("00000000-0000-0000-0000-000000000000");
metadata.add(keyValuePair6);
contentInfo.setMetadata(metadata);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("format@odata.type", "#microsoft.graph.contentFormat");
additionalData.put("state@odata.type", "#microsoft.graph.contentState");
additionalData.put("metadata@odata.type", "#Collection(microsoft.graph.keyValuePair)");
contentInfo.setAdditionalData(additionalData);
evaluateRemovalPostRequestBody.setContentInfo(contentInfo);
DowngradeJustification downgradeJustification = new DowngradeJustification();
downgradeJustification.setJustificationMessage("The information has been declassified.");
downgradeJustification.setIsDowngradeJustified(true);
evaluateRemovalPostRequestBody.setDowngradeJustification(downgradeJustification);
var result = graphClient.informationProtection().policy().labels().evaluateRemoval().post(evaluateRemovalPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("User-Agent", "ContosoLOBApp/1.0");
});


```