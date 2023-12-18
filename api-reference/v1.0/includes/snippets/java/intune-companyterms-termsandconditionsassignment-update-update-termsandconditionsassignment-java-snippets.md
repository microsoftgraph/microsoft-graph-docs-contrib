---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAssignment termsAndConditionsAssignment = new TermsAndConditionsAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
termsAndConditionsAssignment.target = target;

graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").assignments("{termsAndConditionsAssignmentId}")
	.buildRequest()
	.patch(termsAndConditionsAssignment);

```