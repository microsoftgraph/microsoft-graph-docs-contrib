---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("extension-policy");
accessPackageAssignmentPolicy.setDescription("test");
accessPackageAssignmentPolicy.setAccessPackageId("ba5807c7-2aa9-4c8a-907e-4a17ee587500");
accessPackageAssignmentPolicy.setCanExtend(false);
accessPackageAssignmentPolicy.setRequestApprovalSettings(null);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setAcceptRequests(true);
requestorSettings.setScopeType("AllExistingDirectorySubjects");
LinkedList<UserSet> allowedRequestors = new LinkedList<UserSet>();
requestorSettings.setAllowedRequestors(allowedRequestors);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isOnBehalfAllowed", false);
requestorSettings.setAdditionalData(additionalData);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
accessPackageAssignmentPolicy.setAccessReviewSettings(null);
LinkedList<AccessPackageQuestion> questions = new LinkedList<AccessPackageQuestion>();
accessPackageAssignmentPolicy.setQuestions(questions);
LinkedList<CustomExtensionStageSetting> customExtensionStageSettings = new LinkedList<CustomExtensionStageSetting>();
CustomExtensionStageSetting customExtensionStageSetting = new CustomExtensionStageSetting();
customExtensionStageSetting.setStage(AccessPackageCustomExtensionStage.AssignmentRequestCreated);
CustomCalloutExtension customExtension = new CustomCalloutExtension();
customExtension.setId("219f57b6-7983-45a1-be01-2c228b7a43f8");
customExtensionStageSetting.setCustomExtension(customExtension);
customExtensionStageSettings.add(customExtensionStageSetting);
CustomExtensionStageSetting customExtensionStageSetting1 = new CustomExtensionStageSetting();
customExtensionStageSetting1.setStage(AccessPackageCustomExtensionStage.AssignmentRequestGranted);
CustomCalloutExtension customExtension1 = new CustomCalloutExtension();
customExtension1.setId("219f57b6-7983-45a1-be01-2c228b7a43f8");
customExtensionStageSetting1.setCustomExtension(customExtension1);
customExtensionStageSettings.add(customExtensionStageSetting1);
accessPackageAssignmentPolicy.setCustomExtensionStageSettings(customExtensionStageSettings);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 expiration = new ();
expiration.setType("afterDuration");
expiration.setDuration("P365D");
additionalData1.put("expiration", expiration);
accessPackageAssignmentPolicy.setAdditionalData(additionalData1);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().post(accessPackageAssignmentPolicy);


```