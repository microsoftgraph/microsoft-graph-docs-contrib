---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.setDisplayName("Require MFA to EXO from non-compliant devices.");
conditionalAccessPolicy.setState(ConditionalAccessPolicyState.Enabled);
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("00000002-0000-0ff1-ce00-000000000000");
applications.setIncludeApplications(includeApplications);
conditions.setApplications(applications);
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeGroups = new LinkedList<String>();
includeGroups.add("ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba");
users.setIncludeGroups(includeGroups);
conditions.setUsers(users);
conditionalAccessPolicy.setConditions(conditions);
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.setOperator("OR");
LinkedList<ConditionalAccessGrantControl> builtInControls = new LinkedList<ConditionalAccessGrantControl>();
builtInControls.add(ConditionalAccessGrantControl.Mfa);
grantControls.setBuiltInControls(builtInControls);
conditionalAccessPolicy.setGrantControls(grantControls);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().post(conditionalAccessPolicy);


```