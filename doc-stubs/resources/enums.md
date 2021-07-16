---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: enumTypes
---

### appliedConditionalAccessPolicyResult values 



|Member|
|:---|
|success|
|failure|
|notApplied|
|notEnabled|
|unknown|
|unknownFutureValue|
|reportOnlySuccess|
|reportOnlyFailure|
|reportOnlyNotApplied|
|reportOnlyInterrupted|

### authenticationMethodFeature values 



|Member|
|:---|
|ssprRegistered|
|ssprEnabled|
|ssprCapable|
|passwordlessCapable|
|mfaCapable|

### authMethodsType values 



|Member|
|:---|
|email|
|mobileSMS|
|mobilePhone|
|officePhone|
|securityQuestion|
|appNotification|
|appNotificationCode|
|appNotificationAndCode|
|appPassword|
|fido|
|alternateMobilePhone|
|mobilePhoneAndSMS|
|unknownFutureValue|

### azureADLicenseType values 



|Member|
|:---|
|none|
|free|
|basic|
|premiumP1|
|premiumP2|
|unknownFutureValue|

### conditionalAccessConditions values 



|Member|
|:---|
|none|
|application|
|users|
|devicePlatform|
|location|
|clientType|
|signInRisk|
|userRisk|
|time|
|deviceState|
|client|
|ipAddressSeenByAzureAD|
|ipAddressSeenByResourceProvider|
|unknownFutureValue|

### conditionalAccessRule values 



|Member|
|:---|
|allApps|
|firstPartyApps|
|office365|
|appId|
|acr|
|appFilter|
|allUsers|
|guest|
|groupId|
|roleId|
|userId|
|allDevicePlatforms|
|devicePlatform|
|allLocations|
|insideCorpnet|
|allTrustedLocations|
|locationId|
|allDevices|
|deviceFilter|
|deviceState|
|unknownFutureValue|
|deviceFilterIncludeRuleNotMatched|
|allDeviceStates|

### conditionalAccessStatus values 



|Member|
|:---|
|success|
|failure|
|notApplied|
|unknownFutureValue|

### expirationRequirement values 



|Member|
|:---|
|rememberMultifactorAuthenticationOnTrustedDevices|
|tenantTokenLifetimePolicy|
|audienceTokenLifetimePolicy|
|signInFrequencyPeriodicReauthentication|
|ngcMfa|
|signInFrequencyEveryTime|
|unknownFutureValue|

### featureType values 



|Member|
|:---|
|registration|
|reset|
|unknownFutureValue|

### groupType values 



|Member|
|:---|
|unifiedGroups|
|azureAD|
|unknownFutureValue|

### includedUserRoles values 



|Member|
|:---|
|all|
|privilegedAdmin|
|admin|
|user|
|unknownFutureValue|

### includedUserTypes values 



|Member|
|:---|
|all|
|member|
|guest|
|unknownFutureValue|

### initiatorType values 



|Member|
|:---|
|user|
|application|
|system|
|unknownFutureValue|

### migrationStatus values 



|Member|
|:---|
|ready|
|needsReview|
|additionalStepsRequired|
|unknownFutureValue|

### networkType values 



|Member|
|:---|
|intranet|
|extranet|
|namedNetwork|
|trusted|
|trustedNamedLocation|
|unknownFutureValue|

### operationResult values 



|Member|
|:---|
|success|
|failure|
|timeout|
|unknownFutureValue|

### provisioningAction values 



|Member|
|:---|
|other|
|create|
|delete|
|disable|
|update|
|stagedDelete|
|unknownFutureValue|

### provisioningResult values 



|Member|
|:---|
|success|
|failure|
|skipped|
|warning|
|unknownFutureValue|

### provisioningStatusErrorCategory values 



|Member|
|:---|
|failure|
|nonServiceFailure|
|success|
|unknownFutureValue|

### provisioningStepType values 



|Member|
|:---|
|import|
|scoping|
|matching|
|processing|
|referenceResolution|
|export|
|unknownFutureValue|

### registrationAuthMethod values 



|Member|
|:---|
|email|
|mobilePhone|
|officePhone|
|securityQuestion|
|appNotification|
|appCode|
|alternateMobilePhone|
|fido|
|appPassword|
|unknownFutureValue|

### registrationStatusType values 



|Member|
|:---|
|registered|
|enabled|
|capable|
|mfaRegistered|
|unknownFutureValue|

### requirementProvider values 



|Member|
|:---|
|user|
|request|
|servicePrincipal|
|v1ConditionalAccess|
|multiConditionalAccess|
|tenantSessionRiskPolicy|
|accountCompromisePolicies|
|v1ConditionalAccessDependency|
|v1ConditionalAccessPolicyIdRequested|
|mfaRegistrationRequiredByIdentityProtectionPolicy|
|baselineProtection|
|mfaRegistrationRequiredByBaselineProtection|
|mfaRegistrationRequiredByMultiConditionalAccess|
|enforcedForCspAdmins|
|securityDefaults|
|mfaRegistrationRequiredBySecurityDefaults|
|proofUpCodeRequest|
|crossTenantOutboundRule|
|gpsLocationCondition|
|riskBasedPolicy|
|unknownFutureValue|

### signInAccessType values 



|Member|
|:---|
|none|
|b2bCollaboration|
|b2bDirectConnect|
|microsoftSupport|
|serviceProvider|
|unknownFutureValue|

### signInIdentifierType values 



|Member|
|:---|
|userPrincipalName|
|phoneNumber|
|proxyAddress|
|qrCode|
|onPremisesUserPrincipalName|
|unknownFutureValue|

### signInUserType values 



|Member|
|:---|
|member|
|guest|
|unknownFutureValue|

### usageAuthMethod values 



|Member|
|:---|
|email|
|mobileSMS|
|mobileCall|
|officePhone|
|securityQuestion|
|appNotification|
|appCode|
|alternateMobileCall|
|fido|
|appPassword|
|unknownFutureValue|

