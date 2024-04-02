---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateremoval.EvaluateRemovalPostRequestBody evaluateRemovalPostRequestBody = new com.microsoft.graph.beta.users.item.security.informationprotection.sensitivitylabels.microsoftgraphsecurityevaluateremoval.EvaluateRemovalPostRequestBody();
com.microsoft.graph.beta.models.security.ContentInfo contentInfo = new com.microsoft.graph.beta.models.security.ContentInfo();
contentInfo.setOdataType("#microsoft.graph.security.contentInfo");
contentInfo.setIdentifier(null);
contentInfo.setState(com.microsoft.graph.beta.models.security.ContentState.Rest);
LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair> metadata = new LinkedList<com.microsoft.graph.beta.models.security.KeyValuePair>();
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled");
keyValuePair.setValue("True");
metadata.add(keyValuePair);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair1 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair1.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method");
keyValuePair1.setValue("Standard");
metadata.add(keyValuePair1);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair2 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair2.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate");
keyValuePair2.setValue("1/1/0001 12:00:00 AM");
metadata.add(keyValuePair2);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair3 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair3.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair3.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId");
keyValuePair3.setValue("cfa4cf1d-a337-4481-aa99-19d8f3d63f7c");
metadata.add(keyValuePair3);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair4 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair4.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair4.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name");
keyValuePair4.setValue("LabelScopedToBob_Tests");
metadata.add(keyValuePair4);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair5 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair5.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair5.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits");
keyValuePair5.setValue("0");
metadata.add(keyValuePair5);
com.microsoft.graph.beta.models.security.KeyValuePair keyValuePair6 = new com.microsoft.graph.beta.models.security.KeyValuePair();
keyValuePair6.setOdataType("#microsoft.graph.security.keyValuePair");
keyValuePair6.setName("MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId");
keyValuePair6.setValue("00000000-0000-0000-0000-000000000000");
metadata.add(keyValuePair6);
contentInfo.setMetadata(metadata);
evaluateRemovalPostRequestBody.setContentInfo(contentInfo);
com.microsoft.graph.beta.models.security.DowngradeJustification downgradeJustification = new com.microsoft.graph.beta.models.security.DowngradeJustification();
downgradeJustification.setJustificationMessage("The information has been declassified.");
downgradeJustification.setIsDowngradeJustified(true);
evaluateRemovalPostRequestBody.setDowngradeJustification(downgradeJustification);
var result = graphClient.users().byUserId("{user-id}").security().informationProtection().sensitivityLabels().microsoftGraphSecurityEvaluateRemoval().post(evaluateRemovalPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("User-Agent", "ContosoLOBApp/1.0");
});


```