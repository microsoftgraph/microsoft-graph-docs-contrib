---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceSystemDefinition sourceSystemDefinition = new SourceSystemDefinition();
sourceSystemDefinition.displayName = "Rostering source";
LinkedList<UserMatchingSetting> userMatchingSettingsList = new LinkedList<UserMatchingSetting>();
UserMatchingSetting userMatchingSettings = new UserMatchingSetting();
UserMatchTargetReferenceValue matchTarget = new UserMatchTargetReferenceValue();
matchTarget.code = "userPrincipalName";
userMatchingSettings.matchTarget = matchTarget;
userMatchingSettings.priorityOrder = 0;
userMatchingSettings.additionalDataManager().put("roleGroup@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/external/industryData/roleGroups/staff"));
IdentifierTypeReferenceValue sourceIdentifier = new IdentifierTypeReferenceValue();
sourceIdentifier.code = "username";
userMatchingSettings.sourceIdentifier = sourceIdentifier;
userMatchingSettingsList.add(userMatchingSettings);
UserMatchingSetting userMatchingSettings1 = new UserMatchingSetting();
UserMatchTargetReferenceValue matchTarget1 = new UserMatchTargetReferenceValue();
matchTarget1.code = "userPrincipalName";
userMatchingSettings1.matchTarget = matchTarget1;
userMatchingSettings1.priorityOrder = 1;
userMatchingSettings1.additionalDataManager().put("roleGroup@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/external/industryData/roleGroups('students')"));
IdentifierTypeReferenceValue sourceIdentifier1 = new IdentifierTypeReferenceValue();
sourceIdentifier1.code = "username";
userMatchingSettings1.sourceIdentifier = sourceIdentifier1;
userMatchingSettingsList.add(userMatchingSettings1);
sourceSystemDefinition.userMatchingSettings = userMatchingSettingsList;

graphClient.external().industryData().sourceSystems()
	.buildRequest()
	.post(sourceSystemDefinition);

```