---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.displayName = "Sales department users";
accessPackageAssignmentPolicy.description = "All users from sales department";
accessPackageAssignmentPolicy.allowedTargetScope = AllowedTargetScope.SPECIFIC_DIRECTORY_USERS;
LinkedList<SubjectSet> specificAllowedTargetsList = new LinkedList<SubjectSet>();
AttributeRuleMembers specificAllowedTargets = new AttributeRuleMembers();
specificAllowedTargets.description = "Membership rule for all users from sales department";
specificAllowedTargets.membershipRule = "(user.department -eq \"Sales\")";
specificAllowedTargetsList.add(specificAllowedTargets);
accessPackageAssignmentPolicy.specificAllowedTargets = specificAllowedTargetsList;
AccessPackageAutomaticRequestSettings automaticRequestSettings = new AccessPackageAutomaticRequestSettings();
automaticRequestSettings.requestAccessForAllowedTargets = true;
accessPackageAssignmentPolicy.automaticRequestSettings = automaticRequestSettings;
AccessPackage accessPackage = new AccessPackage();
accessPackage.id = "8a36831e-1527-4b2b-aff2-81259a8d8e76";
accessPackageAssignmentPolicy.accessPackage = accessPackage;

graphClient.identityGovernance().entitlementManagement().assignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```