---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodsPolicy authenticationMethodsPolicy = new AuthenticationMethodsPolicy();
RegistrationEnforcement registrationEnforcement = new RegistrationEnforcement();
AuthenticationMethodsRegistrationCampaign authenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign();
authenticationMethodsRegistrationCampaign.snoozeDurationInDays = 1;
authenticationMethodsRegistrationCampaign.state = AdvancedConfigState.ENABLED;
LinkedList<ExcludeTarget> excludeTargetsList = new LinkedList<ExcludeTarget>();
authenticationMethodsRegistrationCampaign.excludeTargets = excludeTargetsList;
LinkedList<AuthenticationMethodsRegistrationCampaignIncludeTarget> includeTargetsList = new LinkedList<AuthenticationMethodsRegistrationCampaignIncludeTarget>();
AuthenticationMethodsRegistrationCampaignIncludeTarget includeTargets = new AuthenticationMethodsRegistrationCampaignIncludeTarget();
includeTargets.id = "3ee3a9de-0a86-4e12-a287-9769accf1ba2";
includeTargets.targetType = AuthenticationMethodTargetType.GROUP;
includeTargets.targetedAuthenticationMethod = "microsoftAuthenticator";
includeTargetsList.add(includeTargets);
authenticationMethodsRegistrationCampaign.includeTargets = includeTargetsList;
registrationEnforcement.authenticationMethodsRegistrationCampaign = authenticationMethodsRegistrationCampaign;
authenticationMethodsPolicy.registrationEnforcement = registrationEnforcement;
ReportSuspiciousActivitySettings reportSuspiciousActivitySettings = new ReportSuspiciousActivitySettings();
reportSuspiciousActivitySettings.state = AdvancedConfigState.ENABLED;
IncludeTarget includeTarget = new IncludeTarget();
includeTarget.targetType = AuthenticationMethodTargetType.GROUP;
includeTarget.id = "all_users";
reportSuspiciousActivitySettings.includeTarget = includeTarget;
reportSuspiciousActivitySettings.voiceReportingCode = 0;
authenticationMethodsPolicy.reportSuspiciousActivitySettings = reportSuspiciousActivitySettings;

graphClient.policies().authenticationMethodsPolicy()
	.buildRequest()
	.patch(authenticationMethodsPolicy);

```