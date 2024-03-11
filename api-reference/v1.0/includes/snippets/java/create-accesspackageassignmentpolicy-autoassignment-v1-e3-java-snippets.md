---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.setDisplayName("Sales department users");
accessPackageAssignmentPolicy.setDescription("All users from sales department");
accessPackageAssignmentPolicy.setAllowedTargetScope(AllowedTargetScope.SpecificDirectoryUsers);
LinkedList<SubjectSet> specificAllowedTargets = new LinkedList<SubjectSet>();
AttributeRuleMembers subjectSet = new AttributeRuleMembers();
subjectSet.setOdataType("#microsoft.graph.attributeRuleMembers");
subjectSet.setDescription("Membership rule for all users from sales department");
subjectSet.setMembershipRule("(user.department -eq \"Sales\")");
specificAllowedTargets.add(subjectSet);
accessPackageAssignmentPolicy.setSpecificAllowedTargets(specificAllowedTargets);
AccessPackageAutomaticRequestSettings automaticRequestSettings = new AccessPackageAutomaticRequestSettings();
automaticRequestSettings.setRequestAccessForAllowedTargets(true);
automaticRequestSettings.setRemoveAccessWhenTargetLeavesAllowedTargets(true);
PeriodAndDuration gracePeriodBeforeAccessRemoval = PeriodAndDuration.ofDuration(Duration.parse("P7D"));
automaticRequestSettings.setGracePeriodBeforeAccessRemoval(gracePeriodBeforeAccessRemoval);
accessPackageAssignmentPolicy.setAutomaticRequestSettings(automaticRequestSettings);
AccessPackage accessPackage = new AccessPackage();
accessPackage.setId("8a36831e-1527-4b2b-aff2-81259a8d8e76");
accessPackageAssignmentPolicy.setAccessPackage(accessPackage);
AccessPackageAssignmentPolicy result = graphClient.identityGovernance().entitlementManagement().assignmentPolicies().post(accessPackageAssignmentPolicy);


```