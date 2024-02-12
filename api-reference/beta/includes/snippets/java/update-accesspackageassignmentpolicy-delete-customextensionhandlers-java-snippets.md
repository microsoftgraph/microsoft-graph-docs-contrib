---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setId("4540a08f-8ab5-43f6-a923-015275799197");
accessPackageAssignmentPolicy.setDisplayName("policy with custom access package workflow extension");
accessPackageAssignmentPolicy.setDescription("Run specified custom access package workflow extension at different stages.");
accessPackageAssignmentPolicy.setAccessPackageId("ba5807c7-2aa9-4c8a-907e-4a17ee587500");
accessPackageAssignmentPolicy.setRequestApprovalSettings(null);
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.setAcceptRequests(true);
requestorSettings.setScopeType("AllExistingDirectorySubjects");
LinkedList<UserSet> allowedRequestors = new LinkedList<UserSet>();
requestorSettings.setAllowedRequestors(allowedRequestors);
accessPackageAssignmentPolicy.setRequestorSettings(requestorSettings);
accessPackageAssignmentPolicy.setAccessReviewSettings(null);
LinkedList<CustomExtensionHandler> customExtensionHandlers = new LinkedList<CustomExtensionHandler>();
accessPackageAssignmentPolicy.setCustomExtensionHandlers(customExtensionHandlers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 expiration = new ();
expiration.setType("afterDuration");
expiration.setDuration("P365D");
additionalData.put("expiration", expiration);
accessPackageAssignmentPolicy.setAdditionalData(additionalData);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().byAccessPackageAssignmentPolicyId("{accessPackageAssignmentPolicy-id}").put(accessPackageAssignmentPolicy);


```