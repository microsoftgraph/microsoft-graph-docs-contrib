---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.setDisplayName("Policy for risky sign-in block access");
conditionalAccessPolicy.setState(ConditionalAccessPolicyState.Enabled);
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<RiskLevel> signInRiskLevels = new LinkedList<RiskLevel>();
signInRiskLevels.add(RiskLevel.High);
signInRiskLevels.add(RiskLevel.Medium);
conditions.setSignInRiskLevels(signInRiskLevels);
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("All");
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeUsers = new LinkedList<String>();
includeUsers.add("4628e7df-dff3-407c-a08f-75f08c0806dc");
users.setIncludeUsers(includeUsers);
conditions.setUsers(users);
conditionalAccessPolicy.setConditions(conditions);
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.setOperator("OR");
LinkedList<ConditionalAccessGrantControl> builtInControls = new LinkedList<ConditionalAccessGrantControl>();
builtInControls.add(ConditionalAccessGrantControl.Block);
grantControls.setBuiltInControls(builtInControls);
conditionalAccessPolicy.setGrantControls(grantControls);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().post(conditionalAccessPolicy);


```