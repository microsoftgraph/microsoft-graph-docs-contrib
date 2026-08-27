---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.assignsensitivitylabel.AssignSensitivityLabelPostRequestBody assignSensitivityLabelPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.assignsensitivitylabel.AssignSensitivityLabelPostRequestBody();
assignSensitivityLabelPostRequestBody.setSensitivityLabelId("5feba255-812e-446a-ac59-a7044ef827b5");
assignSensitivityLabelPostRequestBody.setAssignmentMethod(SensitivityLabelAssignmentMethod.Standard);
assignSensitivityLabelPostRequestBody.setJustificationText("test_justification");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 appliedByUser = new ();
appliedByUser.setUserPrincipalName("adelev@contoso.com");
additionalData.put("appliedByUser", appliedByUser);
assignSensitivityLabelPostRequestBody.setAdditionalData(additionalData);
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").assignSensitivityLabel().post(assignSensitivityLabelPostRequestBody);


```