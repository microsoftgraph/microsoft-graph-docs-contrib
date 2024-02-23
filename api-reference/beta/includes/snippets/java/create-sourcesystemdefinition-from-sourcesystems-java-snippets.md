---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.SourceSystemDefinition sourceSystemDefinition = new com.microsoft.graph.beta.models.industrydata.SourceSystemDefinition();
sourceSystemDefinition.setDisplayName("Rostering source");
LinkedList<com.microsoft.graph.beta.models.industrydata.UserMatchingSetting> userMatchingSettings = new LinkedList<com.microsoft.graph.beta.models.industrydata.UserMatchingSetting>();
com.microsoft.graph.beta.models.industrydata.UserMatchingSetting userMatchingSetting = new com.microsoft.graph.beta.models.industrydata.UserMatchingSetting();
com.microsoft.graph.beta.models.industrydata.UserMatchTargetReferenceValue matchTarget = new com.microsoft.graph.beta.models.industrydata.UserMatchTargetReferenceValue();
matchTarget.setCode("userPrincipalName");
userMatchingSetting.setMatchTarget(matchTarget);
userMatchingSetting.setPriorityOrder(0);
com.microsoft.graph.beta.models.industrydata.IdentifierTypeReferenceValue sourceIdentifier = new com.microsoft.graph.beta.models.industrydata.IdentifierTypeReferenceValue();
sourceIdentifier.setCode("username");
userMatchingSetting.setSourceIdentifier(sourceIdentifier);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("roleGroup@odata.bind", "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff");
userMatchingSetting.setAdditionalData(additionalData);
userMatchingSettings.add(userMatchingSetting);
com.microsoft.graph.beta.models.industrydata.UserMatchingSetting userMatchingSetting1 = new com.microsoft.graph.beta.models.industrydata.UserMatchingSetting();
com.microsoft.graph.beta.models.industrydata.UserMatchTargetReferenceValue matchTarget1 = new com.microsoft.graph.beta.models.industrydata.UserMatchTargetReferenceValue();
matchTarget1.setCode("userPrincipalName");
userMatchingSetting1.setMatchTarget(matchTarget1);
userMatchingSetting1.setPriorityOrder(1);
com.microsoft.graph.beta.models.industrydata.IdentifierTypeReferenceValue sourceIdentifier1 = new com.microsoft.graph.beta.models.industrydata.IdentifierTypeReferenceValue();
sourceIdentifier1.setCode("username");
userMatchingSetting1.setSourceIdentifier(sourceIdentifier1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("roleGroup@odata.bind", "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')");
userMatchingSetting1.setAdditionalData(additionalData1);
userMatchingSettings.add(userMatchingSetting1);
sourceSystemDefinition.setUserMatchingSettings(userMatchingSettings);
com.microsoft.graph.models.industrydata.SourceSystemDefinition result = graphClient.external().industryData().sourceSystems().post(sourceSystemDefinition);


```