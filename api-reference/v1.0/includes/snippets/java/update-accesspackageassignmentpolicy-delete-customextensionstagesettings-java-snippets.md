---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setId("5540a08f-8ab5-43f6-a923-015275799197");
accessPackageAssignmentPolicy.setDisplayName("policy with access package custom workflow extension");
accessPackageAssignmentPolicy.setDescription("Run specified access package custom workflow extension at different stages.");
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDuration);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("P365D"));
expiration.setDuration(duration);
accessPackageAssignmentPolicy.setExpiration(expiration);
accessPackageAssignmentPolicy.setRequestApprovalSettings(null);
AccessPackageAssignmentRequestorSettings requestorSettings = new AccessPackageAssignmentRequestorSettings();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("acceptRequests", true);
additionalData.put("scopeType", "AllExistingDirectorySubjects");
LinkedList<Object> allowedRequestors = new LinkedList<Object>();
additionalData.put("allowedRequestors", allowedRequestors);
requestorSettings.setAdditionalData(additionalData);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
LinkedList<CustomExtensionStageSetting> customExtensionStageSettings = new LinkedList<CustomExtensionStageSetting>();
accessPackageAssignmentPolicy.setCustomExtensionStageSettings(customExtensionStageSettings);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("accessPackageId", "ba5807c7-2aa9-4c8a-907e-4a17ee587500");
additionalData1.put("accessReviewSettings", null);
accessPackageAssignmentPolicy.setAdditionalData(additionalData1);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().byAccessPackageAssignmentPolicyId("{accessPackageAssignmentPolicy-id}").put(accessPackageAssignmentPolicy);


```