---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TermsAndConditionsAssignment termsAndConditionsAssignment = new TermsAndConditionsAssignment();
termsAndConditionsAssignment.setOdataType("#microsoft.graph.termsAndConditionsAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
termsAndConditionsAssignment.setTarget(target);
TermsAndConditionsAssignment result = graphClient.deviceManagement().termsAndConditions().byTermsAndConditionsId("{termsAndConditions-id}").assignments().post(termsAndConditionsAssignment);


```