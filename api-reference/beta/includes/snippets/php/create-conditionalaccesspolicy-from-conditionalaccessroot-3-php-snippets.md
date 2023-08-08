---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConditionalAccessPolicy();
$requestBody->setDisplayName('Demo app for documentation');

$requestBody->setState(new ConditionalAccessPolicyState('disabled'));

$conditions = new ConditionalAccessConditionSet();
$conditions->setSignInRiskLevels([new RiskLevel('high'),new RiskLevel('medium'),	]);

$conditions->setClientAppTypes([new ConditionalAccessClientApp('mobileAppsAndDesktopClients'),new ConditionalAccessClientApp('exchangeActiveSync'),new ConditionalAccessClientApp('other'),	]);

$conditionsApplications = new ConditionalAccessApplications();
$conditionsApplications->setIncludeApplications(['All', 	]);

$conditionsApplications->setExcludeApplications(['499b84ac-1321-427f-aa17-267ca6975798', '00000007-0000-0000-c000-000000000000', 'de8bc8b5-d9f9-48b1-a8ad-b748da725064', '00000012-0000-0000-c000-000000000000', '797f4846-ba00-4fd7-ba43-dac1f8f63013', '05a65629-4c1b-48c1-a78b-804c4abdd4af', '7df0a125-d3be-4c96-aa54-591f83ff541c', 	]);

$conditionsApplications->setIncludeUserActions([	]);


$conditions->setApplications($conditionsApplications);
$conditionsUsers = new ConditionalAccessUsers();
$conditionsUsers->setIncludeUsers(['a702a13d-a437-4a07-8a7e-8c052de62dfd', 	]);

$conditionsUsers->setExcludeUsers(['124c5b6a-ffa5-483a-9b88-04c3fce5574a', 'GuestsOrExternalUsers', 	]);

$conditionsUsers->setIncludeGroups([	]);

$conditionsUsers->setExcludeGroups([	]);

$conditionsUsers->setIncludeRoles(['9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3', 'cf1c38e5-3621-4004-a7cb-879624dced7c', 'c4e39bd9-1100-46d3-8c65-fb160da0071f', 	]);

$conditionsUsers->setExcludeRoles(['b0f54661-2d74-4c50-afa3-1ec803f12efe', 	]);


$conditions->setUsers($conditionsUsers);
$conditionsPlatforms = new ConditionalAccessPlatforms();
$conditionsPlatforms->setIncludePlatforms([new ConditionalAccessDevicePlatform('all'),	]);

$conditionsPlatforms->setExcludePlatforms([new ConditionalAccessDevicePlatform('iOS'),new ConditionalAccessDevicePlatform('windowsPhone'),	]);


$conditions->setPlatforms($conditionsPlatforms);
$conditionsLocations = new ConditionalAccessLocations();
$conditionsLocations->setIncludeLocations(['AllTrusted', 	]);

$conditionsLocations->setExcludeLocations(['00000000-0000-0000-0000-000000000000', 'd2136c9c-b049-47ae-b9cf-316e04ef7198', 	]);


$conditions->setLocations($conditionsLocations);
$conditionsDeviceStates = new ConditionalAccessDeviceStates();
$conditionsDeviceStates->setIncludeStates(['All', 	]);

$conditionsDeviceStates->setExcludeStates(['Compliant', 	]);


$conditions->setDeviceStates($conditionsDeviceStates);

$requestBody->setConditions($conditions);
$grantControls = new ConditionalAccessGrantControls();
$grantControls->setOperator('OR');

$grantControls->setBuiltInControls([new ConditionalAccessGrantControl('mfa'),new ConditionalAccessGrantControl('compliantDevice'),new ConditionalAccessGrantControl('domainJoinedDevice'),new ConditionalAccessGrantControl('approvedApplication'),new ConditionalAccessGrantControl('compliantApplication'),	]);

$grantControls->setCustomAuthenticationFactors([	]);

$grantControls->setTermsOfUse(['ce580154-086a-40fd-91df-8a60abac81a0', '7f29d675-caff-43e1-8a53-1b8516ed2075', 	]);


$requestBody->setGrantControls($grantControls);
$sessionControls = new ConditionalAccessSessionControls();
$SessionControls->setApplicationEnforcedRestrictions(null);

$SessionControls->setPersistentBrowser(null);

$sessionControlsCloudAppSecurity = new CloudAppSecuritySessionControl();
$sessionControlsCloudAppSecurity->setCloudAppSecurityType(new CloudAppSecuritySessionControlType('blockDownloads'));

$sessionControlsCloudAppSecurity->setIsEnabled(true);


$sessionControls->setCloudAppSecurity($sessionControlsCloudAppSecurity);
$sessionControlsSignInFrequency = new SignInFrequencySessionControl();
$sessionControlsSignInFrequency->setValue(4);

$sessionControlsSignInFrequency->setType(new SigninFrequencyType('hours'));

$sessionControlsSignInFrequency->setIsEnabled(true);


$sessionControls->setSignInFrequency($sessionControlsSignInFrequency);

$requestBody->setSessionControls($sessionControls);


$result = $graphServiceClient->identity()->conditionalAccess()->policies()->post($requestBody);


```