---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("policy-with-verified-id");
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
LinkedList<CustomExtensionHandler> customExtensionHandlers = new LinkedList<CustomExtensionHandler>();
accessPackageAssignmentPolicy.setCustomExtensionHandlers(customExtensionHandlers);
VerifiableCredentialSettings verifiableCredentialSettings = new VerifiableCredentialSettings();
LinkedList<VerifiableCredentialType> credentialTypes = new LinkedList<VerifiableCredentialType>();
VerifiableCredentialType verifiableCredentialType = new VerifiableCredentialType();
LinkedList<String> issuers = new LinkedList<String>();
issuers.add("did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...");
verifiableCredentialType.setIssuers(issuers);
verifiableCredentialType.setCredentialType("VerifiedCredentialExpert");
credentialTypes.add(verifiableCredentialType);
verifiableCredentialSettings.setCredentialTypes(credentialTypes);
accessPackageAssignmentPolicy.setVerifiableCredentialSettings(verifiableCredentialSettings);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 expiration = new ();
expiration.setType("afterDuration");
expiration.setDuration("P365D");
additionalData1.put("expiration", expiration);
accessPackageAssignmentPolicy.setAdditionalData(additionalData1);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies().post(accessPackageAssignmentPolicy);


```