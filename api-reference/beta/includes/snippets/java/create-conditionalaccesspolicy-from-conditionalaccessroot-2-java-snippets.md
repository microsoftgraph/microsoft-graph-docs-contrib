---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.setDisplayName("Block access to EXO non-trusted regions.");
conditionalAccessPolicy.setState(ConditionalAccessPolicyState.Enabled);
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<ConditionalAccessClientApp> clientAppTypes = new LinkedList<ConditionalAccessClientApp>();
clientAppTypes.add(ConditionalAccessClientApp.All);
conditions.setClientAppTypes(clientAppTypes);
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
ConditionalAccessLocations locations = new ConditionalAccessLocations();
LinkedList<String> includeLocations = new LinkedList<String>();
includeLocations.add("198ad66e-87b3-4157-85a3-8a7b51794ee9");
locations.setIncludeLocations(includeLocations);
conditions.setLocations(locations);
conditionalAccessPolicy.setConditions(conditions);
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.setOperator("OR");
LinkedList<ConditionalAccessGrantControl> builtInControls = new LinkedList<ConditionalAccessGrantControl>();
builtInControls.add(ConditionalAccessGrantControl.Block);
grantControls.setBuiltInControls(builtInControls);
conditionalAccessPolicy.setGrantControls(grantControls);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().post(conditionalAccessPolicy);


```