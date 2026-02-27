---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.setDisplayName("Demo app for documentation");
conditionalAccessPolicy.setState(ConditionalAccessPolicyState.Disabled);
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<RiskLevel> signInRiskLevels = new LinkedList<RiskLevel>();
signInRiskLevels.add(RiskLevel.High);
signInRiskLevels.add(RiskLevel.Medium);
conditions.setSignInRiskLevels(signInRiskLevels);
LinkedList<ConditionalAccessClientApp> clientAppTypes = new LinkedList<ConditionalAccessClientApp>();
clientAppTypes.add(ConditionalAccessClientApp.MobileAppsAndDesktopClients);
clientAppTypes.add(ConditionalAccessClientApp.ExchangeActiveSync);
clientAppTypes.add(ConditionalAccessClientApp.Other);
conditions.setClientAppTypes(clientAppTypes);
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplications = new LinkedList<String>();
includeApplications.add("All");
applications.setIncludeApplications(includeApplications);
LinkedList<String> excludeApplications = new LinkedList<String>();
excludeApplications.add("499b84ac-1321-427f-aa17-267ca6975798");
excludeApplications.add("00000007-0000-0000-c000-000000000000");
excludeApplications.add("de8bc8b5-d9f9-48b1-a8ad-b748da725064");
excludeApplications.add("00000012-0000-0000-c000-000000000000");
excludeApplications.add("797f4846-ba00-4fd7-ba43-dac1f8f63013");
excludeApplications.add("05a65629-4c1b-48c1-a78b-804c4abdd4af");
excludeApplications.add("7df0a125-d3be-4c96-aa54-591f83ff541c");
applications.setExcludeApplications(excludeApplications);
LinkedList<String> includeUserActions = new LinkedList<String>();
applications.setIncludeUserActions(includeUserActions);
conditions.setApplications(applications);
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeUsers = new LinkedList<String>();
includeUsers.add("a702a13d-a437-4a07-8a7e-8c052de62dfd");
users.setIncludeUsers(includeUsers);
LinkedList<String> excludeUsers = new LinkedList<String>();
excludeUsers.add("124c5b6a-ffa5-483a-9b88-04c3fce5574a");
excludeUsers.add("GuestsOrExternalUsers");
users.setExcludeUsers(excludeUsers);
LinkedList<String> includeGroups = new LinkedList<String>();
users.setIncludeGroups(includeGroups);
LinkedList<String> excludeGroups = new LinkedList<String>();
users.setExcludeGroups(excludeGroups);
LinkedList<String> includeRoles = new LinkedList<String>();
includeRoles.add("9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3");
includeRoles.add("cf1c38e5-3621-4004-a7cb-879624dced7c");
includeRoles.add("c4e39bd9-1100-46d3-8c65-fb160da0071f");
users.setIncludeRoles(includeRoles);
LinkedList<String> excludeRoles = new LinkedList<String>();
excludeRoles.add("b0f54661-2d74-4c50-afa3-1ec803f12efe");
users.setExcludeRoles(excludeRoles);
conditions.setUsers(users);
ConditionalAccessPlatforms platforms = new ConditionalAccessPlatforms();
LinkedList<ConditionalAccessDevicePlatform> includePlatforms = new LinkedList<ConditionalAccessDevicePlatform>();
includePlatforms.add(ConditionalAccessDevicePlatform.All);
platforms.setIncludePlatforms(includePlatforms);
LinkedList<ConditionalAccessDevicePlatform> excludePlatforms = new LinkedList<ConditionalAccessDevicePlatform>();
excludePlatforms.add(ConditionalAccessDevicePlatform.IOS);
excludePlatforms.add(ConditionalAccessDevicePlatform.WindowsPhone);
platforms.setExcludePlatforms(excludePlatforms);
conditions.setPlatforms(platforms);
ConditionalAccessLocations locations = new ConditionalAccessLocations();
LinkedList<String> includeLocations = new LinkedList<String>();
includeLocations.add("AllTrusted");
locations.setIncludeLocations(includeLocations);
LinkedList<String> excludeLocations = new LinkedList<String>();
excludeLocations.add("00000000-0000-0000-0000-000000000000");
excludeLocations.add("d2136c9c-b049-47ae-b9cf-316e04ef7198");
locations.setExcludeLocations(excludeLocations);
conditions.setLocations(locations);
ConditionalAccessDeviceStates deviceStates = new ConditionalAccessDeviceStates();
LinkedList<String> includeStates = new LinkedList<String>();
includeStates.add("All");
deviceStates.setIncludeStates(includeStates);
LinkedList<String> excludeStates = new LinkedList<String>();
excludeStates.add("Compliant");
deviceStates.setExcludeStates(excludeStates);
conditions.setDeviceStates(deviceStates);
conditionalAccessPolicy.setConditions(conditions);
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.setOperator("OR");
LinkedList<ConditionalAccessGrantControl> builtInControls = new LinkedList<ConditionalAccessGrantControl>();
builtInControls.add(ConditionalAccessGrantControl.Mfa);
builtInControls.add(ConditionalAccessGrantControl.CompliantDevice);
builtInControls.add(ConditionalAccessGrantControl.DomainJoinedDevice);
builtInControls.add(ConditionalAccessGrantControl.ApprovedApplication);
builtInControls.add(ConditionalAccessGrantControl.CompliantApplication);
grantControls.setBuiltInControls(builtInControls);
LinkedList<String> customAuthenticationFactors = new LinkedList<String>();
grantControls.setCustomAuthenticationFactors(customAuthenticationFactors);
LinkedList<String> termsOfUse = new LinkedList<String>();
termsOfUse.add("ce580154-086a-40fd-91df-8a60abac81a0");
termsOfUse.add("7f29d675-caff-43e1-8a53-1b8516ed2075");
grantControls.setTermsOfUse(termsOfUse);
conditionalAccessPolicy.setGrantControls(grantControls);
ConditionalAccessSessionControls sessionControls = new ConditionalAccessSessionControls();
sessionControls.setApplicationEnforcedRestrictions(null);
sessionControls.setPersistentBrowser(null);
CloudAppSecuritySessionControl cloudAppSecurity = new CloudAppSecuritySessionControl();
cloudAppSecurity.setCloudAppSecurityType(CloudAppSecuritySessionControlType.BlockDownloads);
cloudAppSecurity.setIsEnabled(true);
sessionControls.setCloudAppSecurity(cloudAppSecurity);
SignInFrequencySessionControl signInFrequency = new SignInFrequencySessionControl();
signInFrequency.setValue(4);
signInFrequency.setType(SigninFrequencyType.Hours);
signInFrequency.setIsEnabled(true);
sessionControls.setSignInFrequency(signInFrequency);
conditionalAccessPolicy.setSessionControls(sessionControls);
ConditionalAccessPolicy result = graphClient.identity().conditionalAccess().policies().post(conditionalAccessPolicy);


```