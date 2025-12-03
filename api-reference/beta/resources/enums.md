---
title: "Enum values"
description: "Microsoft Graph enumeration values."
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "non-product-specific"
author: "MSGraphDocsvTeam"
ms.date: 12/02/2025
ms.custom: sfi-ropc-nochange
---

# Enum values

Namespace: microsoft.graph

### placeFeatureEnablement values

|Member|
|:---|
|unknown|
|enabled|
|disabled|
|unknownFutureValue|

### accessReviewPrincipalScopeType values

|Member|
|:---|
|allUsers|
|guestUsers|
|inactiveUsers|
|inactiveGuestUsers|
|unknownFutureValue|

### accessReviewResourceScopeType values

|Member|
|:---|
|group|
|catalog|
|servicePrincipal|
|directoryRole|
|accessPackageAssignmentPolicy|
|unknownFutureValue|

### applicationDataType values

|Member|
|:---|
|none|
|codingFiles|
|creditCards|
|databaseFiles|
|documents|
|mediaFiles|
|unknownFutureValue|

### csaStarLevel values

|Member|
|:---|
|none|
|attestation|
|certification|
|continuousMonitoring|
|cStarAssessment|
|selfAssessment|
|notSupported|
|unknownFutureValue|

### dataProtection values

|Member|
|:---|
|none|
|impactAssessments|
|officers|
|secureCrossBorderDataTransfer|
|unknownFutureValue|

### dataRetentionLevel values

|Member|
|:---|
|none|
|dataRetained|
|deletedImmediately|
|deletedWithin1Month|
|deletedWithin2Weeks|
|deletedWithin3Months|
|deletedWithinMoreThan3Months|
|unknownFutureValue|

### fedRampLevel values

|Member|
|:---|
|none|
|high|
|liSaas|
|low|
|moderate|
|notSupported|
|unknownFutureValue|

### holdType values

|Member|
|:---|
|none|
|private|
|public|
|unknownFutureValue|

### passwordPolicy values

|Member|
|:---|
|none|
|changePasswordPeriod|
|charactersCombination|
|passwordHistoryAndReuse|
|passwordLengthLimit|
|personalInformationUse|
|unknownFutureValue|

### pciVersion values

|Member|
|:---|
|none|
|v3_2_1|
|v4|
|notSupported|
|unknownFutureValue|

### restEncryptionType values

|Member|
|:---|
|none|
|aes|
|bitlocker|
|blowfish|
|des|
|rc4|
|rsa|
|notSupported|
|unknownFutureValue|

### sslVersion values

|Member|
|:---|
|none|
|ssl3_0|
|tls1_0|
|tls1_1|
|tls1_2|
|tls1_3|
|notSupported|
|unknownFutureValue|

### userOwnership values

|Member|
|:---|
|none|
|lawfulBasisForProcessing|
|rightToAccess|
|rightToBeInformed|
|rightToDataPortability|
|rightToObject|
|rightToRectification|
|rightToRestrictionOfProcessing|
|rightsRelatedToAutomatedDecisionMaking|

### sensorStatus values 

|Member|
|:---|
|active|
|inactive|
|unknownFutureValue|

### readingCoachStoryType values

|Member|
|:---|
|aiGenerated|
|readWorks|
|userProvided|
|unknownFutureValue|

### changeAnnouncementChangeType values

|Member|
|:---|
|breakingChange|
|deprecation|
|endOfSupport|
|featureChange|
|other|
|retirement|
|securityIncident|
|uxChange|
|unknownFutureValue|

### hardwareOathTokenHashFunction values

|Member|
|:---|
|hmacsha1|
|hmacsha256|
|unknownFutureValue|

### hardwareOathTokenStatus values

|Member|
|:---|
|available|
|assigned|
|activated|
|failedActivation|
|unknownFutureValue|

### provisionState values

| Member |
| -------------------- |
| notProvisioned |
| provisioningInProgress |
| provisioningFailed |
| provisioningCompleted |
| unknownFutureValue |

### oidcResponseType values

|Member|
|:---|
|code|
|id_token|
|token|
|unknownFutureValue|

### approvalOperationStatus values

| Member |
| -------------------- |
| scheduled |
| inProgress |
| succeeded |
| failed |
| timeout |
| unknownFutureValue |

### approverRole values

| Member |
| -------------------- |
| approver |
| owner |

### approvalItemState values

| Member |
| -------------------- |
| canceled |
| created |
| pending |
| completed |

### approvalItemType values

| Member |
| -------------------- |
| basic |
| basicAwaitAll |
| custom |
| customAwaitAll |

### responseFeedbackType values

| Member |
| -------------------- |
| none |
| notDetected |
| veryUnpleasant |
| unpleasant |
| neutral |
| pleasant |
| veryPleasant |
| unknownFutureValue |

### responseEmotionType values

| Member |
| -------------------- |
| none |
| confident |
| excited |
| happy |
| motivated |
| peaceful |
| ambitious |
| cheerful |
| comfortable |
| creative |
| determined |
| energized |
| focused |
| fulfilled |
| grateful |
| included |
| inspired |
| optimistic |
| proud |
| successful |
| valuable |
| annoyed |
| bored |
| calm |
| confused |
| glad |
| content |
| pensive |
| reserved |
| restless |
| shocked |
| tired |
| angry |
| depressed |
| exhausted |
| lonely |
| nervous |
| anxious |
| apathetic |
| concerned |
| disappointed |
| frightened |
| frustrated |
| hopeless |
| hurt |
| jealous |
| miserable |
| overwhelmed |
| skeptical |
| stressed |
| stuck |
| worthless |
| awed |
| ashamed |
| curious |
| sensitive |
| sad |
| unknownFutureValue |

### virtualEventRegistrationPredefinedQuestionLabel values

| Member |
| -------------------- |
| street |
| city |
| state |
| postalCode         |
| countryOrRegion |
| industry |
| jobTitle |
| organization |
| unknownFutureValue |

### fileStorageContainerOwnershipType values

| Member |
| -------------------- |
| tenantOwned |
| unknownfuturevalue |

### groupAccessType values

| Member |
| -------------------- |
| none |
| private |
| secret |
| public |

### fileStorageContainerStatus values

| Member |
| -------------------- |
| inactive |
| active |
| unknownfuturevalue |

### sharePointMigrationJobErrorLevel values

|Member|
|:---|
|important|
|warning|
|error|
|fatalError|
|unknownFutureValue|

### sharePointMigrationObjectType values

|Member|
|:---|
|site|
|web|
|folder|
|list|
|listItem|
|file|
|alert|
|sharedWithObject|
|invalid|
|unknownFutureValue|

### siteLockState values

| Value         |
| --------------- |
| unlocked      |
| lockedReadOnly |

### userDefaultAuthenticationMethod values

| Member |
| -------------------- |
| push |
| oath |
| voiceMobile |
| voiceAlternateMobile |
| voiceOffice |
| sms |
| none |
| unknownFutureValue |

### applicationKeyUsage values

| Member |
| -------------------- |
| sign |
| verify |
| unknownFutureValue |

### applicationKeyType values

| Member |
| -------------------- |
| clientSecret |
| certificate |
| unknownFutureValue |

### plannerTaskCompletionRequirements values

| Member |
| -------------------- |
| none |
| checklistCompletion |
| unknownFutureValue |
| formCompletion |
| approvalCompletion |

### plannerApprovalStatus values

| Member |
| -------------------- |
| requested |
| approved |
| rejected |
| cancelled |
| unknownFutureValue |

### applicationKeyOrigin values

| Member |
| -------------------- |
| application |
| servicePrincipal |
| unknownFutureValue |

### authenticationAttributeCollectionInputType values

| Member |
| ---- |
| text |
| radioSingleSelect |
| checkboxMultiSelect |
| boolean |
| unknownFutureValue |

### userType values

| Member |
| ---- |
| member |
| guest |
| unknownFutureValue |

### assignmentType values

| Member |
| ------------------ |
| required |
| recommeded |
| unknownFutureValue |
| peerRecommeded |

### certificateAuthorityType values

|Member|
|:---|
|root|
|intermediate|
|unknownFutureValue|

### courseStatus values

| Member |
| ---------- |
| notStarted |
| inProgress |
| completed |

### usqState values

| Member |
| --------- |
| norma. |
| nearing |
| critical |
| full |
| overLimit |

### userPurpose values

| Member |
| ------------------ |
| user |
| linked |
| shared |
| room |
| equipment |
| others |
| unknownFutureValue |

### releaseType values

| Member |
| ---- |
| preview |
| generallyAvailable |
| unknownFutureValue |

### requiredLicenses values

| Member |
| ---- |
| notApplicable |
| microsoftEntraIdFree |
| microsoftEntraIdP1 |
| microsoftEntraIdP2 |
| microsoftEntraIdGovernance |
| microsoftEntraWorkloadId |
| unknownFutureValue |
| aatp |

### recommendationCategory values

| Member |
| -------------------- |
| identityBestPractice |
| identitySecureScore |
| unknownFutureValue |
| mdiSecureScore |

### recommendationFeatureAreas values

| Member |
| ------------------ |
| users |
| groups |
| devices |
| applications |
| accessReviews |
| conditionalAccess |
| governance |
| unknownFutureValue |

### recommendationPriority values

| Member |
| ------ |
| low |
| medium |
| high |

### recommendationStatus values

| Member |
| ------------------ |
| active |
| completedBySystem |
| completedByUser |
| dismissed |
| postponed |
| unknownFutureValue |
| riskAccepted |
| thirdParty |
| planned |
| alternateMitigation |

### recommendationType values

| Member |
| ----------------------------------- |
| adfsAppsMigration |
| enableDesktopSSO |
| enablePHS |
| enableProvisioning |
| switchFromPerUserMFA |
| tenantMFA |
| thirdPartyApps |
| turnOffPerUserMFA |
| useAuthenticatorApp |
| useMyApps |
| staleApps |
| staleAppCreds |
| applicationCredentialExpiry |
| servicePrincipalKeyExpiry |
| adminMFAV2 |
| blockLegacyAuthentication |
| integratedApps |
| mfaRegistrationV2 |
| pwagePolicyNew |
| passwordHashSync |
| oneAdmin |
| roleOverlap |
| selfServicePasswordReset |
| signinRiskPolicy |
| userRiskPolicy |
| verifyAppPublisher |
| privateLinkForAAD |
| appRoleAssignmentsGroups |
| appRoleAssignmentsUsers |
| managedIdentity |
| overprivilegedApps |
| unknownFutureValue |
| longLivedCredentials |
| aadConnectDeprecated |
| adalToMsalMigration |
| ownerlessApps |
| inactiveGuests |
| aadGraphDeprecationApplication |
| aadGraphDeprecationServicePrincipal |
| mfaServerDeprecation |

### layoutTemplateType values

| Member |
| ------------------ |
| default |
| verticalSplit |
| unknownFutureValue |

### conditionalAccessExternalTenantsMembershipKind values

| Member |
| ------------------ |
| all |
| enumerated |
| unknownFutureValue |

### conditionalAccessGuestOrExternalUserTypes values

| Member |
| ---------------------- |
| none |
| internalGuest |
| b2bCollaborationGuest |
| b2bCollaborationMember |
| b2bDirectConnectUser |
| otherExternalUser |
| serviceProvider |
| unknownFutureValue |

### teamTemplateAudience values

| Member |
| ------------------ |
| organization |
| user |
| public |
| unknownFutureValue |

### decisionItemPrincipalResourceMembershipType values

| Member |
| ------------------ |
| direct |
| indirect |
| unknownFutureValue |

### signInFrequencyAuthenticationType values

| Member |
| --------------------------------- |
| primaryAndSecondaryAuthentication |
| secondaryAuthentication |
| unknownFutureValue |

### signInFrequencyInterval values

| Member |
| --------- |
| timeBased |
| everyTime |

### authenticationProtocol values

| Member |
| ------------------ |
| wsFed |
| saml |
| unknownFutureValue |

### federatedIdpMfaBehavior values

| Member |
| ----------------------------- |
| acceptIfMfaDoneByFederatedIdp |
| enforceMfaByFederatedIdp |
| rejectMfaByFederatedIdp |
| unknownFutureValue |

### promptLoginBehavior values

| Member |
| -------------------------------------- |
| translateToFreshPasswordAuthentication |
| nativeSupport |
| disabled |
| unknownFutureValue |

### bookingsAvailabilityStatus values

| Member |
| ------------------ |
| available |
| busy |
| slotsAvailable |
| outOfOffice |
| unknownFutureValue |

### accessPackageCustomExtensionHandlerStatus values

| Member |
| ------------------ |
| requestSent |
| requestReceived |
| unknownFutureValue |

### accessPackageSubjectLifecycle values

| Member |
| ---- |
| notDefined |
| notGoverned |
| governed |
| unknownFutureValue |

### accessPackageSuggestionFilterByCurrentUserOptions values

| Member |
| ---- |
| none |
| relatedPeopleAssignments |
| assignmentHistory |
| unknownFutureValue |

### accessPackageSuggestionRelatedPeopleInsightLevel values

| Member |
| ---- |
| disabled |
| count |
| countAndNames |
| unknownFutureValue |

### customExtensionCalloutInstanceStatus values

| Member |
| ------------------ |
| calloutSent |
| callbackReceived |
| calloutFailed |
| callbackTimedOut |
| waitingForCallback |
| unknownFutureValue |

### accessPackageCustomExtensionStage values

| Member |
| -------------------------------------- |
| assignmentRequestCreated |
| assignmentRequestApproved |
| assignmentRequestGranted |
| assignmentRequestRemoved |
| assignmentFourteenDaysBeforeExpiration |
| assignmentOneDayBeforeExpiration |
| unknownFutureValue |

### accessReviewHistoryStatus values

| Member |
| ------------------ |
| done |
| inprogress |
| error |
| requested |
| unknownFutureValue |

### accessReviewHistoryDecisionFilter values

| Member |
| ------------------ |
| approve |
| deny |
| notReviewed |
| dontKnow |
| notNotified |
| unknownFutureValue |

### crossTenantAccessPolicyTargetConfigurationAccessType values

| Member |
| ------------------ |
| allowed |
| blocked |
| unknownFutureValue |

### crossTenantAccessPolicyTargetType values

| Member |
| ------ |
| user |
| group |

### multiTenantOrganizationMemberProcessingStatus values

| Member |
| ---- |
| notStarted |
| running |
| succeeded |
| failed |
| unknownFutureValue |

### multiTenantOrganizationMemberRole values

| Member |
| ---- |
| owner |
| member |
| unknownFutureValue |

### multiTenantOrganizationMemberState values

| Member |
| ---- |
| pending |
| active |
| removed |
| unknownFutureValue |

### multiTenantOrganizationState values

| Member |
| ---- |
| active |
| inactive |
| unknownFutureValue |

### templateApplicationLevel values

| Member |
| ---- |
| none |
| newPartners |
| existingPartners |
| unknownFutureValue |

### approvalFilterByCurrentUserOptions values

| Member |
| ------------------ |
| target |
| createdBy |
| approver |
| unknownFutureValue |

### accessPackageFilterByCurrentUserOptions values

| Member |
| ------------------ |
| allowedRequestor |
| unknownFutureValue |

### userSignInRecommendationScope values

| Member |
| ----------- |
| tenant |
| application |

### incomingTokenType values

| Member |
| ------------------- |
| none |
| primaryRefreshToken |
| saml11 |
| saml20 |
| unknownFutureValue |
| remoteDesktopToken |
| refreshToken       |

### approverInformationVisibilityvalues

| Member |
| ---- |
| no |
| yes |
| default |
| unknownFutureValue |

### protocolType values

| Member |
| ------------------ |
| none |
| oAuth2 |
| ropc |
| wsFederation |
| saml20 |
| deviceCode |
| unknownFutureValue |
| authenticationTransfer |
| nativeAuth |
| implicitAccessTokenAndGetResponseMode |
| implicitIdTokenAndGetResponseMode |
| implicitAccessTokenAndPostResponseMode |
| implicitIdTokenAndPostResponseMode |
| authorizationCodeWithoutPkce |
| authorizationCodeWithPkce |
| clientCredentials |
| refreshTokenGrant |
| encryptedAuthorizeResponse |
| directUserGrant |
| kerberos |
| prtGrant |
| seamlessSso |
| prtBrokerBased |
| prtNonBrokerBased |
| onBehalfOf |
| samlOnBehalfOf |

### accessReviewInstanceDecisionItemFilterByCurrentUserOptions values

| Member |
| ------------------ |
| reviewer |
| unknownFutureValue |

### accessReviewStageFilterByCurrentUserOptions values

| Member |
| ------------------ |
| reviewer |
| unknownFutureValue |

### continuousAccessEvaluationMode values

| Member |
| ------------------ |
| strictEnforcement |
| disabled |
| unknownFutureValue |
| strictLocation |

### msiType values

| Member |
| ------------------ |
| none |
| userAssigned |
| systemAssigned |
| unknownFutureValue |

### multiFactorAuthConfiguration values

| Member             | Value | Description                                                                           |
| ------------------ | ----- | ------------------------------------------------------------------------------------- |
| notRequired        | 0     | No multifactor authentication is required for a user to complete device registration. |
| required           | 1     | Multifactor authentication is required for a user to complete device registration.    |
| unknownFutureValue | 2     | Evolvable enumeration sentinel value. Don't use.                                     |

### policyScope values

| Member             | Value | Description                                                                    |
| ------------------ | ----- | ------------------------------------------------------------------------------ |
| none               | 0     | The policy doesn't apply to any users or groups in the organization.          |
| all                | 1     | The policy applies to all users and groups in the organization. Default value. |
| selected           | 2     | The policy applies to specific users or groups in the organization.            |
| unknownFutureValue | 3     | Evolvable enumeration sentinel value. Don't use.                              |

### appManagementRestrictionState values

| Member |
| ---- |
| enabled |
| disabled |
| unknownFutureValue |

### appCredentialRestrictionType values

| Member |
| ---------------------- |
| passwordAddition |
| passwordLifetime |
| symmetricKeyAddition |
| symmetricKeyLifetime |
| customPasswordAddition |
| unknownFutureValue |

### appKeyCredentialRestrictionType values

| Member |
| --------------------- |
| asymmetricKeyLifetime |
| trustedCertificateAuthority |
| unknownFutureValue |

### customSecurityAttributeComparisonOperator values

| Member |
| ---- |
| equals |
| unknownFutureValue |

### synchronizationSecret values

| Member |
| ------------------------------- |
| None |
| UserName |
| Password |
| SecretToken |
| AppKey |
| BaseAddress |
| ClientIdentifier |
| ClientSecret |
| SingleSignOnType |
| Sandbox |
| Url |
| Domain |
| ConsumerKey |
| ConsumerSecret |
| TokenKey |
| TokenExpiration |
| Oauth2AccessToken |
| Oauth2AccessTokenCreationTime |
| Oauth2RefreshToken |
| SyncAll |
| InstanceName |
| Oauth2ClientId |
| Oauth2ClientSecret |
| CompanyId |
| UpdateKeyOnSoftDelete |
| SynchronizationSchedule |
| SystemOfRecord |
| SandboxName |
| EnforceDomain |
| SyncNotificationSettings |
| SkipOutOfScopeDeletions |
| Oauth2AuthorizationCode |
| Oauth2RedirectUri |
| ApplicationTemplateIdentifier |
| Oauth2TokenExchangeUri |
| Oauth2AuthorizationUri |
| AuthenticationType |
| Server |
| PerformInboundEntitlementGrants |
| HardDeletesEnabled |
| SyncAgentCompatibilityKey |
| SyncAgentADContainer |
| ValidateDomain |
| TestReferences |
| ConnectionString |

### synchronizationScheduleState values

| Member |
| -------- |
| Active |
| Disabled |
| Paused |

### synchronizationStatusCode values

| Member |
| ------------- |
| NotConfigured |
| NotRun |
| Active |
| Paused |
| Quarantine |

### synchronizationTaskExecutionResult values

| Member |
| ---------------- |
| Succeeded |
| Failed |
| EntryLevelErrors |

### quarantineReason values

| Member |
| ------------------------------------ |
| EncounteredBaseEscrowThreshold |
| EncounteredTotalEscrowThreshold |
| EncounteredEscrowProportionThreshold |
| EncounteredQuarantineException |
| Unknown |
| QuarantinedOnDemand |
| TooManyDeletes |
| IngestionInterrupted |

### attributeMappingSourceType values

| Member |
| --------- |
| Attribute |
| Constant |
| Function |

### filterMode values

| Member |
| ------- |
| include |
| exclude |

### lifecycleEventType values

| Member |
| ----------------------- |
| missed |
| subscriptionRemoved |
| reauthorizationRequired |

### changeType values

| Member |
| ------- |
| created |
| updated |
| deleted |

### countryLookupMethodType values

| Member |
| ------------------- |
| clientIpAddress |
| authenticatorAppGps |

### approvalState values

| Member |
| -------- |
| pending |
| approved |
| denied |
| aborted |
| canceled |

### roleSummaryStatus values

| Member |
| ------ |
| ok |
| bad |

### dataPolicyOperationStatus values

| Member |
| ------------------ |
| notStarted |
| running |
| complete |
| failed |
| unknownFutureValue |

### conditionalAccessClientApp values

| Member |
| --------------------------- |
| all |
| browser |
| mobileAppsAndDesktopClients |
| exchangeActiveSync |
| easSupported |
| other |

### consentRequestFilterByCurrentUserOptions values

| Member |
| ------------------ |
| reviewer |
| unknownFutureValue |

### attributeType values

| Member |
| --------- |
| String |
| Integer |
| Reference |
| Binary |
| Boolean |
| DateTime |

### scopeOperatorType values

| Member |
| ------ |
| Binary |
| Unary |

### synchronizationJobRestartScope values

| Member |
| ---- |
| None |
| ConnectorDataStore |
| Escrows |
| Watermark |
| QuarantineState |
| Full |
| ForceDeletes |

### synchronizationMetadata values

| Member |
| ---- |
| GalleryApplicationIdentifier |
| GalleryApplicationKey |
| IsOAuthEnabled |
| IsSynchronizationAgentAssignmentRequired |
| IsSynchronizationAgentRequired |
| IsSynchronizationInPreview |
| OAuthSettings |
| SynchronizationLearnMoreIbizaFwLink |
| ConfigurationFields |

### mutability values

| Member |
| --------- |
| ReadWrite |
| ReadOnly |
| Immutable |
| WriteOnly |

### directoryDefinitionDiscoverabilities values

| Member |
| ------------------- |
| None |
| AttributeNames |
| AttributeDataTypes |
| AttributeReadOnly |
| ReferenceAttributes |
| UnknownFutureValue |

### objectDefinitionMetadata values

| Member |
| ---- |
| PropertyNameAccountEnabled |
| PropertyNameSoftDeleted |
| IsSoftDeletionSupported |
| IsSynchronizeAllSupported |
| ConnectorDataStorageRequired |
| Extensions |
| BaseObjectName |

### connectorGroupRegion values

| Member |
| ------------------ |
| nam |
| eur |
| aus |
| asia |
| ind |
| unknownFutureValue |

### connectorGroupType values

| Member |
| ---------------- |
| applicationProxy |

### onPremisesPublishingType values

| Member |
| ------------------ |
| applicationProxy |
| exchangeOnline |
| authentication |
| provisioning |
| intunePfx |
| oflineDomainJoin |
| unknownFutureValue |
|privateAccess|

### agentStatus values

| Member |
| -------- |
| active |
| inactive |

### connectorStatus values

| Member |
| -------- |
| active |
| inactive |

### callType values

| Member |
| ------------------ |
| unknown |
| groupCall |
| peerToPeer |
| unknownFutureValue |

### tone values

| Member |
| ------ |
| tone0 |
| tone1 |
| tone2 |
| tone3 |
| tone4 |
| tone5 |
| tone6 |
| tone7 |
| tone8 |
| tone9 |
| star |
| pound |
| a |
| b |
| c |
| d |
| flash |

### callState values

| Member |
| ---------------- |
| incoming |
| establishing |
| ringing |
| established |
| hold |
| transferring |
| transferAccepted |
| redirecting |
| terminating |
| terminated |

### routingPolicy values

| Member |
| ---------------------------- |
| none |
| noMissedCall |
| disableForwardingExceptPhone |
| disableForwarding |
| preferSkypeForBusiness |
| unknownFutureValue |

### meetingCapabilities values

| Member |
| ------------------ |
| questionAndAnswer |
| unknownFutureValue |

### onlineMeetingRole values

| Member |
| ------------------ |
| attendee |
| presenter |
| producer |
| unknownFutureValue |

### autoAdmittedUsersType values

| Member |
| ----------------- |
| everyoneInCompany |
| everyone |

### mediaState values

| Member |
| ------------------ |
| active |
| inactive |
| unknownFutureValue |

### callDirection values

| Member |
| -------- |
| incoming |
| outgoing |

### modality values

| Member |
| ----------------------- |
| audio |
| video |
| videoBasedScreenSharing |
| data |
| screenSharing |
| unknownFutureValue |

### endpointType values

| Member |
| ------------------------- |
| default |
| voicemail |
| skypeForBusiness |
| skypeForBusinessVoipPhone |
| unknownFutureValue |

### kerberosSignOnMappingAttributeType values

| Member |
| ------------------------------- |
| userPrincipalName |
| onPremisesUserPrincipalName |
| userPrincipalUsername |
| onPremisesUserPrincipalUsername |
| onPremisesSAMAccountName |

### externalAuthenticationType values

| Member |
| -------------------- |
| passthru |
| aadPreAuthentication |

### recipientScopeType values

| Member |
| ------------------ |
| none |
| internal |
| external |
| externalPartner |
| externalNonPartner |

### appliedConditionalAccessPolicyResult values

| Member |
| --------------------- |
| success |
| failure |
| notApplied |
| notEnabled |
| unknown |
| unknownFutureValue |
| reportOnlySuccess |
| reportOnlyFailure |
| reportOnlyNotApplied |
| reportOnlyInterrupted |

### microsoftAuthenticatorAuthenticationMode values

| Member |
| --------------- |
| any |
| push |
| deviceBasedPush |

### authenticationMethodFeature values

| Member |
| ------------------- |
| ssprRegistered |
| ssprEnabled |
| ssprCapable |
| passwordlessCapable |
| mfaCapable |

### authMethodsType values

| Member |
| ---------------------- |
| email |
| mobileSMS |
| mobilePhone |
| officePhone |
| securityQuestion |
| appNotification |
| appNotificationCode |
| appNotificationAndCode |
| appPassword |
| fido |
| alternateMobilePhone |
| mobilePhoneAndSMS |
| unknownFutureValue |

### defaultMfaMethodType values

| Member |
| -------------------------- |
| none |
| mobilePhone |
| alternateMobilePhone |
| officePhone |
| microsoftAuthenticatorPush |
| softwareOneTimePasscode |
| unknownFutureValue |

### clientCredentialType values

| Member |
| --------------------------- |
| none |
| clientSecret |
| clientAssertion |
| federatedIdentityCredential |
| managedIdentity |
| certificate |
| unknownFutureValue |

### azureADLicenseType values

| Member |
| ------------------ |
| none |
| free |
| basic |
| premiumP1 |
| premiumP2 |
| unknownFutureValue |

### conditionalAccessConditions values

| Member |
| ------------------------------- |
| none |
| application |
| users |
| devicePlatform |
| location |
| clientType |
| signInRisk |
| userRisk |
| time |
| deviceState |
| client |
| ipAddressSeenByAzureAD |
| ipAddressSeenByResourceProvider |
| unknownFutureValue |
| servicePrincipals |
| servicePrincipalRisk |
| authenticationFlows |
| insiderRisk |

### conditionalAccessStatus values

| Member |
| ------------------ |
| success |
| failure |
| notApplied |
| unknownFutureValue |

### featureType values

| Member |
| ------------------ |
| registration |
| reset |
| unknownFutureValue |

### groupType values

| Member |
| ------------------ |
| unifiedGroups |
| azureAD |
| unknownFutureValue |

### includedUserRoles values

| Member |
| ------------------ |
| all |
| privilegedAdmin |
| admin |
| user |
| unknownFutureValue |

### includedUserTypes values

| Member |
| ------------------ |
| all |
| member |
| guest |
| unknownFutureValue |

### initiatorType values

| Member |
| ------------------ |
| user |
| app |
| system |
| unknownFutureValue |

### migrationStatus values

| Member |
| ----------------------- |
| ready |
| needsReview |
| additionalStepsRequired |
| unknownFutureValue |

### networkType values

| Member |
| ------------------ |
| intranet |
| extranet |
| namedNetwork |
| trusted |
| unknownFutureValue |

### operationResult values

| Member |
| ------------------ |
| success |
| failure |
| timeout |
| unknownFutureValue |

### provisioningResult values

| Member |
| ------------------ |
| success |
| failure |
| skipped |
| warning |
| unknownFutureValue |

### provisioningStepType values

| Member |
| ------------------- |
| import |
| scoping |
| matching |
| processing |
| referenceResolution |
| export |
| unknownFutureValue |

### registrationAuthMethod values

| Member |
| -------------------- |
| email |
| mobilePhone |
| officePhone |
| securityQuestion |
| appNotification |
| appCode |
| alternateMobilePhone |
| fido |
| appPassword |
| unknownFutureValue |

### registrationStatusType values

| Member |
| ------------------ |
| registered |
| enabled |
| capable |
| mfaRegistered |
| unknownFutureValue |

### signInIdentifierType values

| Member |
| --------------------------- |
| userPrincipalName |
| phoneNumber |
| proxyAddress |
| qrCode |
| onPremisesUserPrincipalName |
| unknownFutureValue |

### signInUserType values

| Member |
| ------------------ |
| member |
| guest |
| unknownFutureValue |

### requirementProvider values

| Member |
| ------------------------------------------------- |
| user |
| request |
| servicePrincipal |
| v1ConditionalAccess |
| multiConditionalAccess |
| tenantSessionRiskPolicy |
| accountCompromisePolicies |
| v1ConditionalAccessDependency |
| v1ConditionalAccessPolicyIdRequested |
| mfaRegistrationRequiredByIdentityProtectionPolicy |
| baselineProtection |
| mfaRegistrationRequiredByBaselineProtection |
| mfaRegistrationRequiredByMultiConditionalAccess |
| enforcedForCspAdmins |
| securityDefaults |
| mfaRegistrationRequiredBySecurityDefaults |
| proofUpCodeRequest |
| crossTenantOutboundRule |
| gpsLocationCondition |
| riskBasedPolicy |
| unknownFutureValue |
| scopeBasedAuthRequirementPolicy |
| authenticationStrengths |

### riskDetail values

| Member |
| ----------------------------------------- |
| none |
| adminGeneratedTemporaryPassword |
| userPerformedSecuredPasswordChange |
| userPerformedSecuredPasswordReset |
| adminConfirmedSigninSafe |
| aiConfirmedSigninSafe |
| userPassedMFADrivenByRiskBasedPolicy |
| adminDismissedAllRiskForUser |
| adminConfirmedSigninCompromised |
| hidden |
| adminConfirmedUserCompromised |
| unknownFutureValue |
| adminConfirmedServicePrincipalCompromised |
| adminDismissedAllRiskForServicePrincipal |
| m365DAdminDismissedDetection |
| userChangedPasswordOnPremises |
| adminDismissedRiskForSignIn |
| adminConfirmedAccountSafe |
| adminConfirmedAgentSafe |
| adminConfirmedAgentCompromised |
| adminDismissedRiskForAgent |

<!-- maintenance comment: Do not delete enum delcaration for riskEventType until all properties of this type are marked as deleted. Dec 28, 2021: Pending eventTypes (in riskUserActivity) and riskType (in riskDetection)-->
### riskEventType values

| Member |
| -------------------------------------------- |
| unlikelyTravel |
| anonymizedIPAddress |
| maliciousIPAddress |
| unfamiliarFeatures |
| malwareInfectedIPAddress |
| suspiciousIPAddress |
| leakedCredentials |
| investigationsThreatIntelligence |
| generic |
| adminConfirmedUserCompromised |
| mcasImpossibleTravel |
| mcasSuspiciousInboxManipulationRules |
| investigationsThreatIntelligenceSigninLinked |
| maliciousIPAddressValidCredentialsBlockedIP |
| unknownFutureValue |

### usageAuthMethod values

| Member |
| ------------------- |
| email |
| mobileSMS |
| mobileCall |
| officePhone |
| securityQuestion |
| appNotification |
| appCode |
| alternateMobileCall |
| fido |
| appPassword |
| unknownFutureValue |
| externalAuthMethod |
| hardwareOneTimePasscode |
| windowsHelloForBusiness |
| microsoftAuthenticatorPasswordless |
| temporaryAccessPass |
| macOsSecureEnclaveKey |
| passKeyDeviceBound |
| passKeyDeviceBoundAuthenticator |
| passKeyDeviceBoundWindowsHello |
| softwareOneTimePasscode |
| microsoftAuthenticatorPush |
| mobilePhone |
| sms |
| alternateMobilePhone |
| fido2SecurityKey |
| oneTimePasscode |
| passKeySynced |

### authenticationAppAdminConfiguration values

| Member |
| ------------------ |
| notApplicable |
| enabled |
| disabled |
| unknownFutureValue |

### authenticationAppEvaluation values

| Member |
| ------------------ |
| success |
| failure |
| unknownFutureValue |

### authenticationAppPolicyStatus values

| Member |
| --------------------------------- |
| unknown |
| appLockOutOfDate |
| appLockEnabled |
| appLockDisabled |
| appContextOutOfDate |
| appContextShown |
| appContextNotShown |
| locationContextOutOfDate |
| locationContextShown |
| locationContextNotShown |
| numberMatchOutOfDate |
| numberMatchCorrectNumberEntered |
| numberMatchIncorrectNumberEntered |
| numberMatchDeny |
| tamperResistantHardwareOutOfDate |
| tamperResistantHardwareUsed |
| tamperResistantHardwareNotUsed |
| unknownFutureValue |

### authenticationMethodKeyStrength values

| Member |
| ------- |
| normal |
| weak |
| unknown |

### authenticationMethodPlatform values

| Member |
| ------- |
| windows |
| macOS |
| iOS |
| android |
| linux |
| unknown |

### authenticationContextDetail values

| Member |
| ------------------- |
| required |
| previouslySatisfied |
| notApplicable |
| unknownFutureValue |

### educationAddedStudentAction values

| Member |
| ------------------ |
| none |
| assignIfOpen |
| unknownFutureValue |

### educationAddToCalendarOptions values

| Member |
| --------------------- |
| none |
| studentsAndPublisher |
| studentsAndTeamOwners |
| unknownFutureValue |
| studentsOnly |

### educationModuleStatus values

| Member |
| ------------------ |
| draft |
| published |

### educationAssignmentStatus values

| Member |
| ------------------ |
| draft |
| published |
| assigned |
| unknownFutureValue |
| inactive |

### educationSubmissionStatus values

| Member |
| ---- |
| working |
| submitted |
| returned |
| unknownFutureValue |
| reassigned |
| excused |

### educationFeedbackResourceOutcomeStatus values

| Member |
| ------------------ |
| notPublished |
| pendingPublish |
| published |
| failedPublish |
| unknownFutureValue |

### externalEmailOtpState values

| Member |
| ------------------ |
| default |
| enabled |
| disabled |
| unknownFutureValue |

### expirationRequirement values

| Member |
| ------------------------------------------------- |
| rememberMultifactorAuthenticationOnTrustedDevices |
| tenantTokenLifetimePolicy |
| audienceTokenLifetimePolicy |
| signInFrequencyPeriodicReauthentication |
| ngcMfa |
| signInFrequencyEveryTime |
| unknownFutureValue |

### replyRestriction values

| Member |
| --------------- |
| everyone |
| authorAndModerators |
| unknownFutureValue |

### userNewMessageRestriction values

| Member |
| --------------- |
| everyone |
| everyoneExceptGuests |
| moderators |
| unknownFutureValue |

### volumeType values

| Member |
| --------------------- |
| operatingSystemVolume |
| fixedDataVolume |
| removableDataVolume |
| unknownFutureValue |

### allowedAudiences values

| Member |
| ---------------------- |
| me |
| family |
| contacts |
| groupMembers |
| organization |
| federatedOrganizations |
| everyone |
| unknownFutureValue |

### attestationLevel values

| Member |
| ------------------ |
| attested |
| notAttested |
| unknownFutureValue |

### emailType values

| Member |
| -------- |
| unknown |
| work |
| personal |
| main |
| other |

### authenticationMethodSignInState values

| Member |
| -------------------- |
| notSupported |
| notAllowedByPolicy |
| notEnabled |
| phoneNumberNotUnique |
| ready |
| notConfigured |
| unknownFutureValue |

### authenticationPhoneType values

| Member |
| ------------------ |
| mobile |
| alternateMobile |
| office |
| unknownFutureValue |

### authenticationMethodTargetType values

| Member |
| ------ |
| user |
| group |
| unknownFutureValue |

### authenticationMethodState values

| Member |
| -------- |
| enabled |
| disabled |

### fido2RestrictionEnforcementType values

| Member |
| ------------------ |
| allow |
| block |
| unknownFutureValue |

### x509CertificateAuthenticationMode values

| Member |
| --------------------------- |
| x509CertificateSingleFactor |
| x509CertificateMultiFactor |
| unknownFutureValue |

### x509CertificateAffinityLevel values

| Member |
| ------------------ |
| low |
| high |
| unknownFutureValue |

### x509CertificateRuleType values

| Member |
| ------------------------- |
| issuerSubject |
| policyOID |
| unknownFutureValue |
| issuerSubjectAndPolicyOID |

### x509CertificateIssuerHintsState values

| Member |
| ---- |
| disabled |
| enabled |
| unknownFutureValue |

### x509CertificateCRLValidationConfigurationState values

| Member |
| ---- |
| disabled |
| enabled |
| unknownFutureValue |

### anniversaryType values

| Member |
| ------------------ |
| birthday |
| wedding |
| unknownFutureValue |

### skillProficiencyLevel values

| Member |
| -------------------- |
| elementary |
| limitedWorking |
| generalProfessional |
| advancedProfessional |
| expert |
| unknownFutureValue |

### languageProficiencyLevel values

| Member |
| ------------------- |
| elementary |
| conversational |
| limitedWorking |
| professionalWorking |
| fullProfessional |
| nativeOrBilingual |
| unknownFutureValue |

### personRelationship values

| Member |
| ------------------ |
| manager |
| colleague |
| directReport |
| dotLineReport |
| assistant |
| dotLineManager |
| alternateContact |
| friend |
| spouse |
| sibling |
| child |
| parent |
| sponsor |
| emergencyContact |
| other |
| unknownFutureValue |

### attachmentType values

| Member |
| --------------- |
| file |
| item |
| reference |

### analyticsActivityType values

| Member |
| --------------- |
| call |
| chat |
| email |
| focus |
| meeting |

### entityTypes values

| Member |
| ------------------ |
| event |
| message |
| driveItem |
| externalItem |
| site |
| list |
| listItem |
| drive |
| acronym |
| bookmark |
| chatMessage |
| qna |
| unknownFutureValue |

### searchAlterationType values

| Member |
| ------------ |
| modification |
| suggestion |

### bucketAggregationSortProperty values

| Member |
| ----------- |
| count |
| keyAsString |
| keyAsNumber |

### contactRelationship values

| Member             | Value | Description                              |
| ------------------ | ----- | ---------------------------------------- |
| parent             | 0     | The user's parent.                       |
| relative           | 1     | The user's relative.                     |
| aide               | 2     | The user's aide.                         |
| doctor             | 3     | The user's doctor.                       |
| guardian           | 4     | The user's guardian.                     |
| child              | 5     | The user's child.                        |
| other              | 6     | An unspecified relationship to the user. |
| unknownFutureValue | 7     | Marker value for future compatibility.   |

### scheduleEntityTheme values

| Member |
| -------------------------- |
| white |
| blue |
| green |
| purple |
| pink |
| yellow |
| gray |
| darkBlue |
| darkGreen |
| darkPurple |
| darkPink |
| darkYellow |
| unknownFutureValue |

### timeOffReasonIconType values

| Member |
| ------------------ |
| none |
| car |
| calendar |
| running |
| plane |
| firstAid |
| doctor |
| notWorking |
| clock |
| juryDuty |
| globe |
| cup |
| phone |
| weather |
| umbrella |
| piggyBank |
| dog |
| cake |
| trafficCone |
| pin |
| sunny |
| unknownFutureValue |

### timeCardState values

| Member |
| ------------------ |
| clockedIn |
| onBreak |
| clockedOut |
| unknownFutureValue |

### scheduleChangeState values

| Member |
| ----------------------------- |
| pending |
| approved |
| declined |
| unknownFutureValue |

### scheduleChangeRequestActor values

| Member |
| ----------------------------- |
| sender |
| recipient |
| manager |
| system |
| unknownFutureValue |

### windowsSettingType values

| Member |
| ------------------ |
| roaming |
| backup |
| unknownFutureValue |

### workforceIntegrationEncryptionProtocol values

| Member |
| ----------------------------- |
| sharedSecret |
| unknownFutureValue |

### workforceIntegrationSupportedEntities values

| Member |
| -------------------- |
| none |
| shift |
| swapRequest |
| userShiftPreferences |
| openShift |
| openShiftRequest |
| offerShiftRequest |
| unknownFutureValue |
| timeCard |
| timeOffReason |
| timeOff |
| timeOffRequest |

### confirmedBy values

| Member |
| ------------------ |
| none |
| user |
| manager |
| unknownFutureValue |

### timeZoneStandard values

| Member |
| ------------------ |
| windows |
| iana |

### freeBusyStatus values

| Member           | Value |
| ---------------- | ----- |
| free             | 0     |
| tentative        | 1     |
| busy             | 2     |
| oof              | 3     |
| workingElsewhere | 4     |
| unknown          | -1    |

### physicalAddressType values

| Member |
| -------------------------- |
| unknown |
| home |
| business |
| other |

### attendeeType values

| Member |
| -------------------------- |
| required |
| optional |
| resource |

### externalAudienceScope values

| Member |
| -------------------------- |
| none |
| contactsOnly |
| all |

### automaticRepliesStatus values

| Member |
| -------------------------- |
| disabled |
| alwaysEnabled |
| scheduled |

### calendarColor values

| Member      | Value |
| ----------- | ----- |
| auto        | -1    |
| lightBlue   | 0     |
| lightGreen  | 1     |
| lightOrange | 2     |
| lightGray   | 3     |
| lightYellow | 4     |
| lightTeal   | 5     |
| lightPink   | 6     |
| lightBrown  | 7     |
| lightRed    | 8     |
| maxColor    | 9     |

### educationExternalSource values

| Member |
| -------------------------- |
| sis |
| lms |
| manual |
| unknownFutureValue |

### educationGender values

| Member |
| -------------------------- |
| female |
| male |
| other |
| unknownFutureValue |

### eventType values

| Member |
| -------------------------- |
| singleInstance |
| occurrence |
| exception |
| seriesMaster |

### sensitivity values

| Member |
| -------------------------- |
| normal |
| personal |
| private |
| confidential |

### importance values

| Member |
| -------------------------- |
| low |
| normal |
| high |

### educationUserRole values

| Member |
| ---------------------- |
| student |
| teacher |
| faculty |

### meetingMessageType values

| Member |
| ------------------ |
| none |
| meetingRequest |
| meetingCancelled |
| meetingAccepted |
| meetingTentativelyAccepted |
| meetingDeclined |

### followupFlagStatus values

| Member |
| -------------------------- |
| notFlagged |
| complete |
| flagged |

### inferenceClassificationType values

| Member |
| ------------------ |
| focused |
| other |

### iosNotificationAlertType values

| Member |
| -------------------------- |
| deviceDefault |
| banner |
| modal |
| none |

### deviceEnrollmentFailureReason values

| Member |
| -------------- |
| unknown |
| authentication |
| authorization |
| accountValidation |
| userValidation |
| deviceNotSupported |
| inMaintenance |
| badRequest |
| featureNotSupported |
| enrollmentRestrictionsEnforced |
| clientDisconnected |

### bodyType values

| Member |
| ---------- |
| text |
| html |

### locationType values

| Member |
| -------------------------- |
| default |
| conferenceRoom |
| homeAddress |
| businessAddress |
| geoCoordinates |
| streetAddress |
| hotel |
| restaurant |
| localBusiness |
| postalAddress |

### locationUniqueIdType values

| Member |
| -------------------------- |
| unknown |
| locationStore |
| directory |
| private |
| bing |

### messageActionFlag values

| Member |
| -------------------------- |
| any |
| call |
| doNotForward |
| followUp |
| fyi |
| forward |
| noResponseNecessary |
| read |
| reply |
| replyToAll |
| review |

### onenoteUserRole values

| Member      | Value |
| ----------- | ----- |
| Owner       | 0     |
| Contributor | 1     |
| Reader      | 2     |
| None        | -1    |

### operationStatus values

| Member |
| ------------------ |
| NotStarted |
| Running |
| Completed |
| Failed |

### onenotePatchActionType values

| Member |
| -------------------------- |
| Replace |
| Append |
| Delete |
| Insert |
| Prepend |

### onenotePatchInsertPosition values

| Member |
| -------------------------- |
| After |
| Before |

### phoneType values

| Member |
| -------------------------- |
| home |
| business |
| mobile |
| other |
| assistant |
| homeFax |
| businessFax |
| otherFax |
| pager |
| radio |

### plannerPreviewType values

| Member |
| -------------------------- |
| automatic |
| noPreview |
| checklist |
| description |
| reference |

### status values

| Member |
| ------------------ |
| active |
| updated |
| deleted |
| ignored |
| unknownFutureValue |

### weekIndex values

| Member |
| -------------------------- |
| first |
| second |
| third |
| fourth |
| last |

### dayOfWeek values

| Member |
| -------------------------- |
| sunday |
| monday |
| tuesday |
| wednesday |
| thursday |
| friday |
| saturday |

### recurrencePatternType values

| Member |
| -------------------------- |
| daily |
| weekly |
| absoluteMonthly |
| relativeMonthly |
| absoluteYearly |
| relativeYearly |

### recurrenceRangeType values

| Member |
| -------------------------- |
| endDate |
| noEnd |
| numbered |

### onenoteSourceService values

| Member |
| ---------------------- |
| Unknown |
| OneDrive |
| OneDriveForBusiness |
| OnPremOneDriveForBusiness |

### responseType values

| Member |
| -------------------------- |
| none |
| organizer |
| tentativelyAccepted |
| accepted |
| declined |
| notResponded |

### activityDomain values

| Member |
| -------------------------- |
| unknown |
| work |
| personal |
| unrestricted |

### websiteType values

| Member |
| -------------------------- |
| other |
| home |
| work |
| blog |
| profile |

### categoryColor values

| Member   | Value |
| -------- | ----- |
| none     | -1    |
| preset0  | 0     |
| preset1  | 1     |
| preset2  | 2     |
| preset3  | 3     |
| preset4  | 4     |
| preset5  | 5     |
| preset6  | 6     |
| preset7  | 7     |
| preset8  | 8     |
| preset9  | 9     |
| preset10 | 10    |
| preset11 | 11    |
| preset12 | 12    |
| preset13 | 13    |
| preset14 | 14    |
| preset15 | 15    |
| preset16 | 16    |
| preset17 | 17    |
| preset18 | 18    |
| preset19 | 19    |
| preset20 | 20    |
| preset21 | 21    |
| preset22 | 22    |
| preset23 | 23    |
| preset24 | 24    |

### alertFeedback values

Possible feedback values on the alert provided by an analyst.

| Member         | Value | Description               |
| -------------- | ----- | ------------------------- |
| unknown        | 0     | Unknown.                  |
| truePositive   | 1     | Alert is true-positive.   |
| falsePositive  | 2     | Alert is false-positive.  |
| benignPositive | 3     | Alert is benign-positive. |

### fileHashType values

| Member              | Value | Description                    |
| ------------------- | ----- | ------------------------------ |
| unknown             | 0     | Unknown type.                  |
| sha1                | 1     | SHA1 hash type.                |
| sha256              | 2     | SHA256 hash type.              |
| md5                 | 3     | MD5 hash type.                 |
| authenticodeHash256 | 4     | AuthenticodeHash256 hash type. |
| lsHash              | 5     | LsHash hash type.              |
| ctph                | 6     | CTPH hash type.                |
| peSha1              | 7     | PESHA1 hash type.              |
| peSha256            | 8     | PESHA256 hash type.            |

### connectionDirection values

| Member   | Value | Description          |
| -------- | ----- | -------------------- |
| unknown  | 0     | Unknown connection.  |
| inbound  | 1     | Inbound connection.  |
| outbound | 2     | Outbound connection. |

### connectionStatus values

| Member    | Value | Description                |
| --------- | ----- | -------------------------- |
| unknown   | 0     | Unknown connection status. |
| attempted | 1     | Connection attempted.      |
| succeeded | 2     | Connection succeeded.      |
| blocked   | 3     | Connection blocked.        |
| failed    | 4     | Connection failed.         |

### processIntegrityLevel values

| Member    | Value | Description                   |
| --------- | ----- | ----------------------------- |
| unknown   | 0     | Unknown.                      |
| untrusted | 10    | Integrity level is Untrusted. |
| low       | 20    | Integrity level is Low.       |
| medium    | 30    | Integrity level is Medium.    |
| high      | 40    | Integrity level is High.      |
| system    | 50    | Integrity level is System.    |

### registryHive values

Enum for registry hives as defined by [Registry Hives](/windows/desktop/sysinfo/registry-hives).

| Member                  | Value | Description                       |
| ----------------------- | ----- | --------------------------------- |
| unknown                 | 0     | Unknown hive.                     |
| currentConfig           | 1     | HKEY_CURRENT_CONFIG hive.         |
| currentUser             | 2     | HKEY_CURRENT_USER hive.           |
| localMachineSam         | 3     | HKEY_LOCAL_MACHINE\SAM hive.      |
| localMachineSamSoftware | 4     | HKEY_LOCAL_MACHINE\Software hive. |
| localMachineSystem      | 5     | HKEY_LOCAL_MACHINE\System hive.   |
| usersDefault            | 6     | HKEY_USERS\\.DEFAULT hive.        |

### registryOperation values

Operation that changed the registry key name and/or value.

| Member  | Value | Description                  |
| ------- | ----- | ---------------------------- |
| unknown | 0     | Unknown registry value type. |
| create  | 1     | Create registry.             |
| modify  | 2     | Modify registry.             |
| delete  | 3     | Delete registry.             |

### registryValueType values

Enum for registry value types as defined by [Registry value types](/windows/desktop/sysinfo/registry-value-types).

| Member            | Value | Description                                  |
| ----------------- | ----- | -------------------------------------------- |
| unknown           | 0     | Unknown registry value type.                 |
| binary            | 1     | REG_BINARY registry value type.              |
| dword             | 2     | REG_DWORD registry value type.               |
| dwordLittleEndian | 3     | REG_DWORD_LITTLE_ENDIAN registry value type. |
| dwordBigEndian    | 4     | REG_DWORD_BIG_ENDIAN registry value type.    |
| expandSz          | 5     | REG_EXPAND_SZ registry value type.           |
| link              | 6     | REG_LINK registry value type.                |
| multiSz           | 7     | REG_MULTI_SZ registry value type.            |
| none              | 8     | REG_NONE registry value type.                |
| qword             | 9     | REG_QWORD registry value type.               |
| qwordlittleEndian | 10    | REG_QWORD_LITTLE_ENDIAN registry value type. |
| sz                | 11    | REG_SZ registry value type.                  |

### alertSeverity values

Enum for severity of alerts.

| Member        | Value | Description                       |
| ------------- | ----- | --------------------------------- |
| unknown       | 0     | Severity is unknown.              |
| informational | 1     | Severity is only for information. |
| low           | 2     | Severity is low.                  |
| medium        | 3     | Severity is medium.               |
| high          | 4     | Severity is high.                 |

### alertStatus values

Possible values of an Alert lifecycle status (stage).

| Member     | Value | Description           |
| ---------- | ----- | --------------------- |
| unknown    | 0     | Unknown status.       |
| newAlert   | 10    | Alert is new.         |
| inProgress | 20    | Alert is in progress. |
| resolved   | 30    | Alert is resolved.    |

### emailRole values

Possible values for email roles.

| Member    | Value | Description             |
| --------- | ----- | ----------------------- |
| unknown   | 0     | Unknown Role.           |
| sender    | 1     | Sender of the email.    |
| recipient | 2     | Recipient of the email. |

### logonType values

Possible values for the method of user signin.

| Member            | Value | Description                  |
| ----------------- | ----- | ---------------------------- |
| unknown           | -1    | Unknown.                     |
| interactive       | 0     | Logon is interactive.        |
| remoteInteractive | 1     | Logon is remote interactive. |
| network           | 2     | Logon is network.            |
| batch             | 3     | Logon is batch.              |
| service           | 4     | Logon is service.            |

### userAccountSecurityType values

Possible values for user account types (group membership), per Windows definition.

| Member        | Value | Description                     |
| ------------- | ----- | ------------------------------- |
| unknown       | -1    | Unknown.                        |
| standard      | 0     | Member of Standard Users group. |
| power         | 1     | Member of Power Users group.    |
| administrator | 2     | Member of Administrators group. |

### chatMessagePolicyViolationDlpActionType values

| Value |
| ------------------- |
| none |
| NotifySender |
| BlockAccess |
| BlockAccessExternal |

### scopeOperatorMultiValuedComparisonType values

| Member |
| ---- |
| All |
| Any |

### riskLevel values

| Member |
| ------------------ |
| low |
| medium |
| high |
| hidden |
| none |
| unknownFutureValue |

### riskState values

| Member |
| -------------------- |
| none |
| confirmedSafe |
| remediated |
| dismissed |
| atRisk |
| confirmedCompromised |
| unknownFutureValue |

### advancedConfigState values

| Member |
| ------------------ |
| default |
| enabled |
| disabled |
| unknownFutureValue |

### referenceAttachmentPermission values

| Member |
| ---------------- |
| other |
| view |
| edit |
| anonymousView |
| anonymousEdit |
| organizationView |
| organizationEdit |

### referenceAttachmentProvider values

| Member |
| ---------------- |
| other |
| oneDriveBusiness |
| oneDriveConsumer |
| dropbox |

### exchangeIdFormat values

| Member |
| -------------------- |
| entryId |
| ewsId |
| immutableEntryId |
| restId |
| restImmutableEntryId |

### attributeDefinitionMetadata values

| Member |
| ---- |
| BaseAttributeName |
| ComplexObjectDefinition |
| IsContainer |
| IsCustomerDefined |
| IsDomainQualified |
| LinkPropertyNames |
| LinkTypeName |
| MaximumLength |
| ReferencedProperty |

### attributeFlowBehavior values

| Member |
| ---- |
| FlowWhenChanged |
| FlowAlways |

### attributeFlowType values

| Member |
| ----------------- |
| Always |
| ObjectAddOnly |
| MultiValueAddOnly |
| ValueAddOnly |
| AttributeAddOnly |

### objectFlowTypes values

| Member |
| ---- |
| None |
| Add |
| Update |
| Delete |

### objectMappingMetadata values

| Member |
| ---- |
| EscrowBehavior |
| DisableMonitoringForChanges |
| OriginalJoiningProperty |
| Disposition |
| IsCustomerDefined |
| ExcludeFromReporting |
| Unsynchronized |

### chatMessageType values

| Member |
| ------------------ |
| message |
| chatEvent |
| typing |
| unknownFutureValue |
| systemEventMessage |

### chatMessageImportance values

| Member |
| ------ |
| normal |
| high |
| urgent |

### stagedFeatureName values

| Member |
| ------------------------- |
| passthroughAuthentication |
| seamlessSso |
| passwordHashSync |
| emailAsAlternateId |
| unknownFutureValue |
| certificateBasedAuthentication |

### tokenIssuerType values

| Member |
| ------------------------------ |
| AzureAD |
| ADFederationServices |
| unknownFutureValue |
| AzureADBackupAuth |
| ADFederationServicesMFAAdapter |
| NPSExtension |

### riskDetectionTimingType values

| Member |
| ------------------ |
| notDefined |
| realtime |
| nearRealtime |
| offline |
| unknownFutureValue |

### chatMessagePolicyViolationUserActionType values

| Member              | Int value | Description                                                                                                        |
| ------------------- | --------- | ------------------------------------------------------------------------------------------------------------------ |
| None                | 0         | Default value. This is the value on a message when the user hasn't taken an action on the message blocked by DLP. |
| Override            | 1         | Sender has overridden the message verdict and sent the message anyway.                                             |
| ReportFalsePositive | 2         | Sender has reported the message verdict to the admins as a false positive.                                         |

### chatMessagePolicyViolationVerdictDetailsType values

| Member                            | Int value | Description                                                                                                                                                                                                                                                           |
| --------------------------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| None                              | 0         | User isn't allowed to override the message. User isn't allowed to report a message as false positive if policyTip isn't provided. In all other scenarios, user can report a message as false positive.                                                             |
| AllowFalsePositiveOverride        | 1         | User isn't allowed to explicitly override the block unless this is combined with `AllowOverrideWithoutJustification` or `AllowOverrideWithJustification` flags. Reporting a false positive on the violation automatically overrides the block and sends the message. |
| AllowOverrideWithoutJustification | 2         | User is allowed to override the block and send the message. Justification text isn't required. Exclusive to `AllowOverrideWithJustification`.                                                                                                                        |
| AllowOverrideWithJustification    | 4         | User is allowed to override the block and send the message. Justification text is required. Exclusive to `AllowOverrideWithoutJustification`.                                                                                                                         |

### entityType values

| Member |
| ------------ |
| event |
| message |
| driveItem |
| externalFile |
| externalItem |

### onlineMeetingProviderType values

| Member |
| ---------------- |
| unknown |
| skypeForBusiness |
| skypeForConsumer |
| teamsForBusiness |

### delegateMeetingMessageDeliveryOptions values

| Member |
| --------------------------------------- |
| sendToDelegateAndInformationToPrincipal |
| sendToDelegateAndPrincipal |
| sendToDelegateOnly |

### calendarRoleType values

| Member |
| --------------------------------- |
| none |
| freeBusyRead |
| limitedRead |
| read |
| write |
| delegateWithoutPrivateEventAccess |
| delegateWithPrivateEventAccess |
| custom |

### contentFormat values

| Member  | Value | Description                          |
| ------- | ----- | ------------------------------------ |
| default | 0     | Content is a file or non-email type. |
| email   | 1     | Content is an email.                 |

### contentState values

| Member | Value | Description                                                                      |
| ------ | ----- | -------------------------------------------------------------------------------- |
| rest   | 0     | Data is at rest; A file in a share, for example.                                 |
| motion | 1     | Data is in motion. A file intercepted by a network appliance in transit.         |
| use    | 2     | Data is in use. A file is open in a client application such as Microsoft Office. |

### assignmentMethod values

| Member     | Value | Description                                                                                                                      |
| ---------- | ----- | -------------------------------------------------------------------------------------------------------------------------------- |
| standard   | 0     | The label was set by a service or policy condition.                                                                              |
| privileged | 1     | The label was set explicitly by a user.                                                                                          |
| auto       | 2     | Allows override of any existing label. Justification required on downgrade. Results in `standard` assignment method in metadata. |

### actionSource values

| Member        | Value | Description                                                  |
| ------------- | ----- | ------------------------------------------------------------ |
| manual        | 0     | A user manually selected the label.                          |
| automatic     | 1     | The label was chosen as a result of policy conditions.       |
| recommended   | 2     | The elected to apply a recommended label.                    |
| policyDefault | 3     | The user no action and the policy-default label was applied. |
| mandatory     | 4     | The user chose a label after being forced to choose.         |

### contentAlignment values

| Member | Value | Description                         |
| ------ | ----- | ----------------------------------- |
| left   | 0     | Align content marking to the left.  |
| right  | 1     | Align content marking to the right. |
| center | 2     | Center content marking.             |

### watermarkLayout values

| Member     | Value | Description                 |
| ---------- | ----- | --------------------------- |
| horizontal | 0     | Use a horizontal watermark. |
| diagonal   | 1     | Use a diagonal watermark.   |

### conditionalAccessPolicyState values

| Member |
| --------------------------------- |
| enabled |
| disabled |
| enabledForReportingButNotEnforced |

### privateNetworkDestinationType values

|Member|
|:---|
|ipAddress|
|ipRange|
|ipRangeCidr|
|fqdn|
|dnsSuffix|
|unknownFutureValue|
|servicePrincipalName|

### privateNetworkProtocol values

|Member|
|:---|
|tcp|
|udp|
|unknownFutureValue|

### conditionalAccessGrantControl values

| Member |
| -------------------- |
| block |
| mfa |
| compliantDevice |
| domainJoinedDevice |
| approvedApplication |
| compliantApplication |
| passwordChange |
| unknownFutureValue |

### perUserMfaState values

| Member |
| ---- |
| disabled |
| enforced |
| enabled |
| unknownFutureValue |

### conditionalAccessRule values

| Member |
| --------------------------------- |
| allApps |
| firstPartyApps |
| office365 |
| appId |
| acr |
| appFilter |
| allUsers |
| guest |
| groupId |
| roleId |
| userId |
| allDevicePlatforms |
| devicePlatform |
| allLocations |
| insideCorpnet |
| allTrustedLocations |
| locationId |
| allDevices |
| deviceFilter |
| deviceState |
| unknownFutureValue |
| deviceFilterIncludeRuleNotMatched |
| allDeviceStates |
| anonymizedIPAddress |
| unfamiliarFeatures |
| nationStateIPAddress |
| realTimeThreatIntelligence |
| internalGuest |
| b2bCollaborationGuest |
| b2bCollaborationMember |
| b2bDirectConnectUser |
| otherExternalUser |
| serviceProvider |
| microsoftAdminPortals |
| deviceCodeFlow |
| authenticationTransfer |
| insiderRisk |

### signInAccessType values

| Member |
| ------------------ |
| none |
| b2bCollaboration |
| b2bDirectConnect |
| microsoftSupport |
| serviceProvider |
| unknownFutureValue |
| passthrough |

### signinFrequencyType values

| Member |
| ------ |
| days |
| hours |

### originalTransferMethods values

| Member |
| ---- |
| none |
| deviceCodeFlow |
| authenticationTransfer |
| unknownFutureValue |

### tokenProtectionStatus values

| Member |
| ---- |
| none |
| bound |
| unbound |
| unknownFutureValue |

### conditionalAccessAudienceReason values

| Member |
| ------ |
| none |
| resourcelessRequest |
| confidentialClientIdToken |
| confidentialClientNonIdToken |
| resourceMapping |
| resourceMappingDefault |
| scopeMapping |
| scopeMappingDefault |
| delegatedScope |
| firstPartyResourceDefault |
| thirdPartyResourceDefault |
| unknownFutureValue |

### persistentBrowserSessionMode values

| Member |
| ------ |
| always |
| never |

### cloudAppSecuritySessionControlType values

| Member |
| -------------- |
| mcasConfigured |
| monitorOnly |
| blockDownloads |

### conditionalAccessDevicePlatform values

| Member |
| ------------------ |
| android |
| iOS |
| windows |
| windowsPhone |
| macOS |
| all |
| unknownFutureValue |

### priority values

| Member | Value |
| ------ | ----- |
| None   | 0     |
| High   | 1     |
| Low    | 2     |

### templateScenarios values

| Member |
| ------------------ |
| new |
| secureFoundation |
| zeroTrust |
| remoteWork |
| protectAdmins |
| emergingThreats |
| unknownFutureValue |

### threatAssessmentContentType values

| Member | Value | Description             |
| ------ | ----- | ----------------------- |
| mail   | 1     | Mail threat.            |
| url    | 2     | URL threat.             |
| file   | 3     | Attachment file threat. |

### threatExpectedAssessment values

| Member  | Value | Description                      |
| ------- | ----- | -------------------------------- |
| block   | 1     | The threat should be blocked.    |
| unblock | 2     | The threat shouldn't be blocked. |

### threatCategory values

| Member             | Value | Description        |
| ------------------ | ----- | ------------------ |
| spam               | 1     | Spam threat.       |
| phishing           | 2     | Phishing threat.   |
| malware            | 3     | Malware threat.    |
| unknownFutureValue | 4     | A sentinel member. |

### threatAssessmentStatus values

| Member    | Value | Description                              |
| --------- | ----- | ---------------------------------------- |
| pending   | 1     | The threat assessment still in progress. |
| completed | 2     | The threat assessment completed.         |

### threatAssessmentRequestSource values

| Member        | Value | Description              |
| ------------- | ----- | ------------------------ |
| undefined     | 0     | Not yet know.            |
| user          | 1     | User submission.         |
| administrator | 2     | Tenant admin submission. |

### threatAssessmentResultType values

| Member             | Value | Description                                          |
| ------------------ | ----- | ---------------------------------------------------- |
| checkPolicy        | 1     | The policy check result, only for `mail` assessment. |
| rescan             | 2     | The rescan result.                                   |
| unknownFutureValue | 3     | A sentinel member.                                   |

### mailDestinationRoutingReason values

| Member                | Value | Description                         |
| --------------------- | ----- | ----------------------------------- |
| none                  | 0     | Not yet know.                       |
| mailFlowRule          | 1     | Exchange transport rule.            |
| safeSender            | 2     | Safe sender list.                   |
| blockedSender         | 3     | Blocked sender list.                |
| advancedSpamFiltering | 4     | Advanced spam flitering option.     |
| domainAllowList       | 5     | Sender domain allow list.           |
| domainBlockList       | 6     | Sender domain block list.           |
| notInAddressBook      | 7     | Exclude sender not in address book. |
| firstTimeSender       | 8     | Blocked due to first time sender.   |
| autoPurgeToInbox      | 9     | TimeTravel move message to inbox.   |
| autoPurgeToJunk       | 10    | TimeTravel move message to junk.    |
| autoPurgeToDeleted    | 11    | TimeTravel move message to deleted. |
| outbound              | 12    | Outbound mail.                      |
| notJunk               | 13    | Allow due to not junk.              |
| junk                  | 14    | Blocked due to junk.                |
| unknownFutureValue    | 15    | A sentinel member.                  |

### threatAssessmentRequestPivotProperty values

| Member                       | Value | Description                                                            |
| ---------------------------- | ----- | ---------------------------------------------------------------------- |
| threatCategory               | 1     | Aggregate threat assessment request by `threatCategory`.               |
| mailDestinationRoutingReason | 2     | Aggregate threat assessment request by `mailDestinationRoutingReason`. |

### userFlowType values

| Member |
| ----------------------- |
| signUp |
| signIn |
| signUpOrSignIn |
| passwordReset |
| profileUpdate |
| resourceOwner |
| unknownFutureValue |

### openIdConnectResponseMode values

| Member |
| ----------------------- |
| form_post |
| query |
| unknownFutureValue |

### wellknownListName values

| Member |
| ----------------------- |
| none |
| defaultList |
| flaggedEmails |
| unknownFutureValue |

### taskStatus values

| Member |
| ----------------------- |
| notStarted |
| inProgress |
| completed |
| waitingOnOthers |
| deferred |

### columnTypes values

| Member             | Description                                        |
| ------------------ | -------------------------------------------------- |
| note               | multiline text.                                    |
| text               | single line text.                                  |
| choice             | choice column                                      |
| multichoice        | multichoice column.                                |
| number             | number column.                                     |
| currency           | currency column.                                   |
| dateTime           | dateTime column.                                   |
| lookup             | lookup column.                                     |
| boolean            | Yes/No column.                                     |
| user               | person or group column.                            |
| url                | hyperlink or picture column.                       |
| calculated         | calculated column.                                 |
| location           | location column.                                   |
| geolocation        | geolocation column.                                |
| term               | managed metadata column.                           |
| multiterm          | managed metadata column accepting multiple values. |
| thumbnail          | Image column.                                      |
| approvalStatus     | Content approval status column.                    |
| unknownFutureValue | unknownFuturevalue                                 |

### contentModelType values

| Member |
| ---- |
| teachingMethod |
| layoutMethod |
| freeformSelectionMethod |
| prebuiltContractModel |
| prebuiltInvoiceModel |
| prebuiltReceiptModel |
| unknownFutureValue |

### documentProcessingJobStatus values

| Member |
| ---- |
| inProgress |
| completed |
| failed |
| unknownFutureValue |

### documentProcessingJobType values

| Member |
| ---- |
| File |
| Folder |
| UnknownFutureValue |

### connectedOrganizationState values

| Member             | Value | Description                                                                                                                                                                                                      |
| ------------------ | ----- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| configured         | 0     | Connected Organizations with this state value are included in assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects`.                                                        |
| proposed           | 1     | Connected Organizations that are automatically created by the system have this state value. They aren't included in assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects`. |
| unknownFutureValue | 2     | A sentinel member.                                                                                                                                                                                               |

### identityUserFlowAttributeDataType values

| Member             | Value | Description                 |
| ------------------ | ----- | --------------------------- |
| string             | 1     | String data type            |
| boolean            | 2     | Boolean data type           |
| int64              | 3     | Int data type               |
| stringCollection   | 4     | String collection data type |
| dateTime           | 5     |                             |
| unknownFutureValue | 6     | A sentinel member.          |

### identityUserFlowAttributeType values

| Member             | Value | Description                                                        |
| ------------------ | ----- | ------------------------------------------------------------------ |
| builtIn            | 1     | This user flow attribute type denotes it was created by the system |
| custom             | 2     | This user flow attribute type denotes it was created by the user   |
| required           | 3     |                                                                    |
| unknownFutureValue | 4     | A sentinel member.                                                 |

### permissionClassificationType values

| Member |
| -------- |
| low |
| medium |
| high |

### permissionType values

| Member |
| -------------------------- |
| application |
| delegated |
| delegatedUserConsentable |

### identityUserFlowAttributeInputType values

| Member |
| -------------------- |
| textBox |
| dateTimeDropDown |
| radioSingleSelect |
| dropdownSingleSelect |
| emailBox |
| checkboxMultiSelect |

### teamworkActivityTopicSource values

| Member |
| ---- |
| entityUrl |
| text |

### cloudPcProvisioningPolicyImageType values

| Member |
| ------- |
| custom |
| gallery |
| unknownFutureValue |

### cloudPcPolicySettingType values

| Member |
| ---- |
| region |
| singleSignOn |
| unknownFutureValue |

### chatType values

| Member | Value | Description |
| ------ | ----- | ----------- |
| oneOnOne | 0 | Indicates that the chat is a 1:1 chat. The roster size is fixed for this type of chat, the member can't be removed / added. |
| group | 1 | Indicates that the chat is a Group chat. The roster size (of at least two person) can be updated for this type of chat. The members can be removed / added later on. |
| meeting | 2 | Indicates that the chat is a Meeting chat, which is created as a side effect of creation of an OnlineMeeting. |
| unknownFutureValue | 3 | Sentinel value to indicate future values. |

### singleSignOnMode values

| Member |
| ------------------ |
| none |
| onPremisesKerberos |
| aadHeaderBased |
| pingHeaderBased |

### plannerContainerType values

| Member |
| ---- |
| group |
| unknownFutureValue |
| roster |
| project |
| driveItem |
| user |
| teamsChannel|
| plannerTask|

### plannerPlanContextType values

| Member |
| ------------------ |
| teamsTab |
| sharePointPage |
| meetingNotes |
| other |
| unknownFutureValue |

### plannerContextState values

| Member |
| ------------------ |
| active |
| delinked |
| unknownFutureValue |

### plannerExternalTaskSourceDisplayType values

| Member |
| ------------------ |
| none |
| default |
| unknownFutureValue |

### plannerCreationSourceKind values

| Member |
| ------------------ |
| none |
| external |
| publication |
| unknownFutureValue |

### teamsAppInstallationScope values

| Member    | Value | Description                                                                                                                 |
| --------- | ----- | --------------------------------------------------------------------------------------------------------------------------- |
| team      | 0     | Indicates that the Teams app can be installed within a team and is authorized to access that team's data.                   |
| groupChat | 1     | Indicates that the Teams app can be installed within a group chat and is authorized to access that group chat's data.       |
| personal  | 2     | Indicates that the Teams app can be installed in the personal scope of a user and is authorized to access that user's data. |

### assignmentScheduleFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### assignmentScheduleInstanceFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### assignmentScheduleRequestFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| createdBy |
| approver |
| unknownFutureValue |

### eligibilityScheduleFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### eligibilityScheduleInstanceFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### eligibilityScheduleRequestFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| createdBy |
| approver |
| unknownFutureValue |

### privilegedAccessGroupAssignmentType values

| Member |
| ------------------ |
| assigned |
| activated |
| unknownFutureValue |

### privilegedAccessGroupMemberType values

| Member |
| ------------------ |
| direct |
| group |
| unknownFutureValue |

### privilegedAccessGroupRelationships values

| Member |
| ------------------ |
| owner |
| member |
| unknownFutureValue |

### scheduleRequestActions values

| Member |
| ------------------ |
| adminAssign |
| adminUpdate |
| adminRemove |
| selfActivate |
| selfDeactivate |
| adminExtend |
| adminRenew |
| selfExtend |
| selfRenew |
| unknownFutureValue |

### roleAssignmentScheduleRequestFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| createdBy |
| approver |
| unknownFutureValue |

### roleAssignmentScheduleFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### roleAssignmentScheduleInstanceFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### roleEligibilityScheduleRequestFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| createdBy |
| approver |
| unknownFutureValue |

### roleEligibilityScheduleFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### roleEligibilityScheduleInstanceFilterByCurrentUserOptions values

| Member |
| ------------------ |
| principal |
| unknownFutureValue |

### cloudPcAuditActivityOperationType values

| Member |
| ------ |
| create |
| delete |
| patch |
| other |

### cloudPcAuditActivityResult values

| Member |
| ----------- |
| success |
| clientError |
| failure |
| timeout |
| other |

### cloudPcAuditActorType values

| Member |
| ----------- |
| itPro |
| application |
| partner |
| unknown |

### cloudPcAuditCategory values

| Member |
| ------- |
| cloudPC |
| other |

### postType values

| Member |
| ------------------ |
| regular |
| quick |
| strategic |
| unknownFutureValue |

### serviceHealthClassificationType values

| Member |
| ------------------ |
| advisory |
| incident |
| unknownFutureValue |

### serviceHealthOrigin values

| Member |
| ------------------ |
| microsoft |
| thirdParty |
| customer |
| unknownFutureValue |

### serviceHealthStatus values

| Member |
| --------------------------- |
| serviceOperational |
| investigating |
| restoringService |
| verifyingService |
| serviceRestored |
| postIncidentReviewPublished |
| serviceDegradation |
| serviceInterruption |
| extendedRecovery |
| falsePositive |
| investigationSuspended |
| resolved |
| mitigatedExternal |
| mitigated |
| resolvedExternal |
| confirmed |
| reported |
| unknownFutureValue |

### serviceUpdateCategory values

| Member |
| ------------------ |
| preventOrFixIssue |
| planForChange |
| stayInformed |
| unknownFutureValue |

### serviceUpdateSeverity values

| Member |
| ------------------ |
| normal |
| high |
| critical |
| unknownFutureValue |

### teamworkApplicationIdentityType values

| Member |
| ------------------ |
| aadApplication |
| bot |
| tenantBot |
| office365Connector |
| outgoingWebhook |
| unknownFutureValue |

### teamworkConversationIdentityType values

| Member |
| ------------------ |
| team |
| channel |
| chat |
| unknownFutureValue |

### teamworkUserIdentityType values

| Member |
| ------------------------------ |
| aadUser |
| onPremiseAadUser |
| anonymousGuest |
| federatedUser |
| personalMicrosoftAccountUser |
| skypeUser |
| phoneUser |
| unknownFutureValue |
| emailUser |
| azureCommunicationServicesUser |

### callRecordingStatus values

| Member |
| ------------------ |
| success |
| failure |
| initial |
| chunkFinished |
| unknownFutureValue |

### payloadDeliveryPlatform values

| Member |
| ------------------ |
| unknown |
| sms |
| email |
| teams |
| unknownFutureValue |

### trainingStatus values

| Member |
| ------------------ |
| unknown |
| assigned |
| inProgress |
| completed |
| overdue |
| unknownFutureValue |

### teamworkCallEventType values

| Member |
| ------------------ |
| call |
| meeting |
| screenShare |
| unknownFutureValue |

### binaryOperator values

| Member |
| ------ |
| or |
| and |

### subjectRightsRequestStageStatus values

| Member |
| ------------------ |
| notStarted |
| current |
| completed |
| failed |
| unknownFutureValue |

### subjectRightsRequestStatus values

| Member |
| ------------------ |
| active |
| closed |
| unknownFutureValue |

### subjectRightsRequestType values

| Member |
| ------------------ |
| export |
| delete |
| access |
| tagForAction |
| unknownFutureValue |

### dataSubjectType values

| Member |
| ------------------- |
| customer |
| currentEmployee |
| formerEmployee |
| prospectiveEmployee |
| student |
| teacher |
| faculty |
| other |
| unknownFutureValue |

### answerInputType values

| Member             | Value | Description         |
| ------------------ | ----- | ------------------- |
| text               | 0     | Text.               |
| radioButton        | 1     | RadioButton.        |
| unknownFutureValue | 2     | UnknownFutureValue. |

### taskStatus_v2 values

| Member |
| ------------------ |
| notStarted |
| inProgress |
| completed |
| unknownFutureValue |

### wellKnownListName_v2 values

| Member |
| ------------------ |
| none |
| defaultList |
| flaggedEmail |
| unknownFutureValue |

### bookingPriceType values

| Member |
| ------------------ |
| undefined |
| fixedPrice |
| startingAt |
| hourly |
| free |
| priceVaries |
| callUs |
| notSet |
| unknownFutureValue |

### bookingStaffRole values

| Member |
| ------------------ |
| guest |
| administrator |
| viewer |
| externalGuest |
| unknownFutureValue |
| scheduler |
| teamMember |

### bookingReminderRecipients values

| Member |
| ------------------ |
| allAttendees |
| staff |
| customer |
| unknownFutureValue |

### teamworkConnectionStatus values

| Member |
| ------------------ |
| unknown |
| connected |
| disconnected |
| unknownFutureValue |

### teamworkDeviceActivityState values

| Member             | Value | Description                                      |
| ------------------ | ----- | ------------------------------------------------ |
| unknown            | 0     | Unknown state.                                   |
| busy               | 1     | The device is busy.                              |
| idle               | 2     | The device is idle.                              |
| unavailable        | 3     | The device is unavailable.                       |
| unknownFutureValue | 4     | Evolvable enumeration sentinel value. Don't use. |

### teamworkDeviceOperationType values

| Member                            | Value | Description                                      |
| --------------------------------- | ----- | ------------------------------------------------ |
| deviceRestart                     | 0     | Restart a device.                                |
| configUpdate                      | 1     | Update the device configuration.                 |
| deviceDiagnostics                 | 2     | Get the device logs.                             |
| softwareUpdate                    | 3     | Update a software on the device.                 |
| deviceManagementAgentConfigUpdate | 4     | Update the device agent configuration.           |
| remoteLogin                       | 5     | Device remote login.                             |
| remoteLogout                      | 6     | Device remote logout.                            |
| unknownFutureValue                | 7     | Evolvable enumeration sentinel value. Don't use. |

### teamworkSoftwareFreshness values

| Member             | Value | Description                                                                   |
| ------------------ | ----- | ----------------------------------------------------------------------------- |
| unknown            | 0     | Unknown value.                                                                |
| latest             | 1     | Indicates whether a device component runs the latest version of the software. |
| updateAvailable    | 2     | Indicates that a software update is available for a device component.         |
| unknownFutureValue | 3     | Evolvable enumeration sentinel value. Don't use.                              |

### teamworkSoftwareType values

| Member |
| ------------------ |
| adminAgent |
| operatingSystem |
| teamsClient |
| firmware |
| partnerAgent |
| companyPortal |
| unknownFutureValue |

### teamworkSupportedClient values

| Member               | Value | Description                                            |
| -------------------- | ----- | ------------------------------------------------------ |
| unknown              | 0     | Unknown value.                                         |
| skypeDefaultAndTeams | 1     | Supports both `Skype` and `Teams`. Default is `Skype`. |
| teamsDefaultAndSkype | 2     | Supports both `Skype` and `Teams`. Default is `Teams`. |
| skypeOnly            | 3     | Supports only `Skype`.                                 |
| teamsOnly            | 4     | Supports only `Teams`.                                 |
| unknownFutureValue   | 5     | Evolvable enumeration sentinel value. Don't use.       |

### delegatedAdminAccessAssignmentStatus values

| Member |
| ------------------ |
| pending |
| active |
| deleting |
| deleted |
| error |
| unknownFutureValue |

### delegatedAdminAccessContainerType values

| Member |
| ------------------ |
| securityGroup |
| unknownFutureValue |

### delegatedAdminRelationshipOperationType values

| Member |
| ------------------------------------ |
| delegatedAdminAccessAssignmentUpdate |
| unknownFutureValue |

### delegatedAdminRelationshipRequestAction values

| Member |
| ------------------ |
| lockForApproval |
| approve |
| terminate |
| unknownFutureValue |
| reject |

### delegatedAdminRelationshipRequestStatus values

| Member |
| ------------------ |
| created |
| pending |
| succeeded |
| failed |
| unknownFutureValue |

### delegatedAdminRelationshipStatus values

| Member |
| -------------------- |
| activating |
| active |
| approvalPending |
| approved |
| created |
| expired |
| expiring |
| terminated |
| terminating |
| terminationRequested |
| unknownFutureValue |

### featureTargetType values

| Member |
| ------------------ |
| group |
| administrativeUnit |
| role |
| unknownFutureValue |

### longRunningOperationStatus values

| Member |
| ------------------ |
| notStarted |
| running |
| succeeded |
| failed |
| skipped |
| unknownFutureValue |

### submissionCategory values

| Member |
| ------------------ |
| notJunk |
| spam |
| phishing |
| malware |
| unknownFutureValue |

### submissionClientSource values

| Member |
| ------------------ |
| microsoft |
| other |
| unknownFutureValue |

### submissionContentType values

| Member |
| ------------------ |
| email |
| url |
| file |
| app |
| unknownFutureValue |

### submissionSource values

| Member |
| ------------------ |
| user |
| administrator |
| unknownFutureValue |

### weakAlgorithms values

| Member |
| ------------------ |
| rsaSha1 |
| unknownFutureValue |

### tenantAllowBlockListAction values

| Member |
| ------------------ |
| allow |
| block |
| unknownFutureValue |

### tenantAllowBlockListEntryType values

| Member |
| ------------------ |
| url |
| fileHash |
| sender |
| recipient |
| unknownFutureValue |

### outlierMemberType values

| Member |
| ------------------ |
| user |
| unknownFutureValue |

### outlierContainerType values

| Member |
| ------------------ |
| group |
| unknownFutureValue |

### browserSharedCookieSourceEnvironment values

| Member |
| ------------------ |
| microsoftEdge |
| internetExplorer11 |
| both |
| unknownFutureValue |

### browserSiteCompatibilityMode values

| Member |
| --------------------------- |
| default |
| internetExplorer8Enterprise |
| internetExplorer7Enterprise |
| internetExplorer11 |
| internetExplorer10 |
| internetExplorer9 |
| internetExplorer8 |
| internetExplorer7 |
| internetExplorer5 |
| unknownFutureValue |

### browserSiteMergeType values

| Member |
| ------------------ |
| noMerge |
| default |
| unknownFutureValue |

### browserSiteTargetEnvironment values

| Member |
| -------------------- |
| internetExplorerMode |
| internetExplorer11 |
| microsoftEdge |
| configurable |
| none |
| unknownFutureValue |

### browserSiteStatus values

| Member |
| ------------------ |
| published |
| pendingAdd |
| pendingEdit |
| pendingDelete |
| unknownFutureValue |

### browserSharedCookieStatus values

| Member |
| ------------------ |
| published |
| pendingAdd |
| pendingEdit |
| pendingDelete |
| unknownFutureValue |

### browserSiteListStatus values

| Member |
| ------------------ |
| draft |
| published |
| pending |
| unknownFutureValue |

### authenticationStrengthPolicyType values

| Member |
| ------------------ |
| builtIn |
| custom |
| unknownFutureValue |

### authenticationStrengthRequirements values

| Member |
| ------------------ |
| none |
| mfa |
| unknownFutureValue |

### authenticationStrengthResult values

| Member |
| ------------------------------------------ |
| notSet |
| skippedForProofUp |
| satisfied |
| singleChallengeRequired |
| multipleChallengesRequired |
| singleRegistrationRequired |
| multipleRegistrationsRequired |
| cannotSatisfyDueToCombinationConfiguration |
| cannotSatisfy |
| unknownFutureValue |

### authenticationMethodModes values

| Member |
| --------------------------- |
| password |
| voice |
| hardwareOath |
| softwareOath |
| sms |
| fido2 |
| windowsHelloForBusiness |
| microsoftAuthenticatorPush |
| deviceBasedPush |
| temporaryAccessPassOneTime |
| temporaryAccessPassMultiUse |
| email |
| x509CertificateSingleFactor |
| x509CertificateMultiFactor |
| federatedSingleFactor |
| federatedMultiFactor |
| unknownFutureValue |
| qrCodePin |

### baseAuthenticationMethod values

| Member |
| ----------------------- |
| password |
| voice |
| hardwareOath |
| softwareOath |
| sms |
| fido |
| microsoftAuthenticator |
| windowsHelloForBusiness |
| temporaryAccessPass |
| email |
| x509Certificate |
| federation |
| unknownFutureValue |

### searchContent values

| Member |
| ------------------ |
| privateContent |
| sharedContent |
| unknownFutureValue |

### chatMessageActions values

| Member |
| ------------------ |
| reactionAdded |
| reactionRemoved |
| actionUndefined |
| unknownFutureValue |

### plannerRelationshipUserRoles values

| Member |
| ------------------ |
| defaultRules |
| groupOwners |
| groupMembers |
| taskAssignees |
| applications |
| unknownFutureValue |

### plannerRuleKind values

| Member |
| ------------------ |
| taskRule |
| bucketRule |
| planRule |
| unknownFutureValue |

### plannerUserRoleKind values

| Member |
| ------------------ |
| relationship |
| unknownFutureValue |

### plannerTaskTargetKind values

| Member |
| ------------------ |
| group |
| unknownFutureValue |

### onPremisesDirectorySynchronizationDeletionPreventionType values

| Member |
| -------------------- |
| disabled |
| enabledForCount |
| enabledForPercentage |
| enabledForPercentage |
| unknownFutureValue |

### authenticationMethodsPolicyMigrationState values

| Member |
| ------------------- |
| premigration |
| migrationInProgress |
| migrationComplete |
| unknownFutureValue |

### authenticationEventType values

| Member |
| ------------------ |
| tokenIssuanceStart |
| pageRenderStart |
| unknownFutureValue |
|attributeCollectionStart|
|attributeCollectionSubmit|
|emailOtpSend|

### microsoftAuthenticatorAuthenticationMethodClientAppName values

| Member |
| ---------------------- |
| microsoftAuthenticator |
| outlookMobile |
| unknownFutureValue |

### userDefaultAuthenticationMethodType values

| Member |
| ---- |
| push |
| oath |
| voiceMobile |
| voiceAlternateMobile |
| voiceOffice |
| sms |
| unknownFutureValue |

### endUserNotificationPreference values

| Member |
| ---- |
| unknown |
| microsoft |
| custom |
| unknownFutureValue |

### endUserNotificationSettingType values

| Member |
| ---- |
| unknown |
| noTraining |
| trainingSelected |
| noNotification |
| unknownFutureValue |

### endUserNotificationType values

| Member |
| ---- |
| unknown |
| positiveReinforcement |
| noTraining |
| trainingAssignment |
| trainingReminder |
| unknownFutureValue |

### notificationDeliveryFrequency values

| Member |
| ---- |
| unknown |
| weekly |
| biWeekly |
| unknownFutureValue |

### notificationDeliveryPreference values

| Member |
| ---- |
| unknown |
| deliverImmedietly |
| deliverAfterCampaignEnd |
| unknownFutureValue |

### oAuthAppScope values

| Member |
| ---- |
| unknown |
| readCalendar |
| readContact |
| readMail |
| readAllChat |
| readAllFile |
| readAndWriteMail |
| sendMail |
| unknownFutureValue |

### targettedUserType values

| Member |
| ---- |
| unknown |
| clicked |
| compromised |
| allUsers |
| unknownFutureValue |

### trainingAssignedTo values

| Member |
| ---- |
| none |
| allUsers |
| clickedPayload |
| compromised |
| reportedPhish |
| readButNotClicked |
| didNothing |
| unknownFutureValue |

### trainingAvailabilityStatus values

| Member |
| ---- |
| unknown |
| notAvailable |
| available |
| archive |
| delete |
| unknownFutureValue |

### trainingCompletionDuration values

| Member |
| ------------------- |
| week |
| fortnite |
| month |
| unknownFutureValue |

### trainingSettingType values

| Member |
| ---- |
| microsoftCustom |
| microsoftManaged |
| noTraining |
| custom |
| unknownFutureValue |

### trainingType values

| Member |
| ---- |
| unknown |
| phishing |
| unknownFutureValue |

### verifiableCredentialPresentationStatusCode values

| Member |
| --------------------- |
| request_retrieved |
| presentation_verified |
| unknownFutureValue |

### labelKind values

| Member |
| ---- |
| all |
| enumerated |
| unknownFutureValue |

### permissionKind values

| Member |
| ---- |
| all |
| enumerated |
| allPermissionsOnResourceApp |
| unknownFutureValue |

### resourceScopeType values

| Member |
| ---- |
| group |
| chat |
| tenant |
| unknownFutureValue |

### rootDomains values

| Member |
| ---- |
| none |
| all |
| allFederated |
| allManaged |
| enumerated |
| allManagedAndEnumeratedFederated |
| unknownFutureValue |

### allowedRolePrincipalTypes values

| Member |
| ---- |
| user |
| servicePrincipal |
| group |
| unknownFutureValue |

### b2bIdentityProvidersType values

| Member |
| ------ |
| azureActiveDirectory |
| externalFederation |
| socialIdentityProviders |
| emailOneTimePasscode |
| microsoftAccount |
| defaultConfiguredIdp |
| unknownFutureValue |

### authorizationSystemActionSeverity values

| Member |
| ---- |
| normal |
| high |
| unknownFutureValue |

### authorizationSystemActionType values

| Member |
| ---- |
| delete |
| read |
| unknownFutureValue |

### awsPolicyType values

| Member |
| ---- |
| system |
| custom |
| unknownFutureValue |

### awsRoleTrustEntityType values

| Member |
| ---- |
| none |
| service |
| sso |
| crossAccount |
| webIdentity |
| unknownFutureValue |

### awsRoleType values

| Member |
| ---- |
| system |
| custom |
| unknownFutureValue |

### awsStatementEffect values

| Member |
| ---- |
| allow |
| deny |
| unknownFutureValue |

### azureRoleDefinitionType values

| Member |
| ---- |
| system |
| custom |
| unknownFutureValue |

### dataCollectionStatus values

| Member |
| ---- |
| online |
| offline |
| unknownFutureValue |

### gcpRoleType values

| Member |
| ---- |
| system |
| custom |
| unknownFutureValue |

### permissionsDefinitionIdentityType values

| Member |
| ---- |
| user |
| role |
| application |
| managedIdentity |
| serviceAccount |
| unknownFutureValue |

### permissionsModificationCapability values

| Member |
| ---- |
| enabled |
| notConfigured |
| noRecentDataCollected |
| unknownFutureValue |

### permissionsRequestOccurrenceStatus values

| Member |
| ---- |
| grantingFailed |
| granted |
| granting |
| revoked |
| revoking |
| revokingFailed |
| unknownFutureValue |

### statusDetail values

| Member |
| ---- |
| submitted |
| approved |
| completed |
| canceled |
| rejected |
| unknownFutureValue |

### socialIdentitySourceType values

| Member |
| ---- |
| facebook |
| unknownFutureValue |

### authorizationSystemType values

| Member |
| ---- |
| azure |
| gcp |
| aws |
| unknownFutureValue |

### awsAccessType values

| Member |
| ---- |
| public |
| restricted |
| crossAccount |
| private |
| unknownFutureValue |

### awsSecretInformationWebServices values

| Member |
| ---- |
| secretsManager |
| certificateAuthority |
| cloudHsm |
| certificateManager |
| unknownFutureValue |

### awsSecurityToolWebServices values

| Member |
| ---- |
| macie |
| wafShield |
| cloudTrail |
| inspector |
| securityHub |
| detective |
| guardDuty |
| unknownFutureValue |

### azureAccessType values

| Member |
| ---- |
| public |
| private |
| unknownFutureValue |

### azureEncryption values

| Member |
| ---- |
| microsoftStorage |
| microsoftKeyVault |
| customer |
| unknownFutureValue |

### externalSystemAccessMethods values

| Member |
| ---- |
| direct |
| roleChaining |
| unknownFutureValue |

### gcpAccessType values

| Member |
| ---- |
| public |
| subjectToObjectAcls |
| private |
| unknownFutureValue |

### gcpEncryption values

| Member |
| ---- |
| google |
| customer |
| unknownFutureValue |

### iamStatus values

| Member |
| ---- |
| active |
| inactive |
| disabled |
| unknownFutureValue |

### devicePlatformType values

| Member |
| -------------------- |
| android |
| androidForWork |
| iOS |
| macOS |
| windowsPhone81 |
| windows81AndLater |
| windows10AndLater |
| androidWorkProfile |
| unknown |
| androidAOSP |
| androidMobileApplicationManagement |
| iOSMobileApplicationManagement |
| unknownFutureValue |

### bookingPageAccessControl values

| Member |
| ---- |
| unrestricted |
| restrictedToOrganization |
| unknownFutureValue |

### bookingsServiceAvailabilityType values

| Member |
| ---- |
| bookWhenStaffAreFree |
| notBookable |
| customWeeklyHours |
| unknownFutureValue |

### conditionalAccessTransferMethods values

| Member |
| ---- |
| none |
| deviceCodeFlow |
| authenticationTransfer |
| unknownFutureValue |

### claimConditionUserType values

| Member |
| ---- |
| any |
| members |
| allGuests |
| aadGuests |
| externalGuests |
| unknownFutureValue |

### filterType values

| Member |
| ---- |
| prefix |
| suffix |
| contains |
| unknownFutureValue |

### matchOn values

| Member |
| ---- |
| displayName |
| samAccountName |
| unknownFutureValue |

### samlAttributeNameFormat values

| Member |
| ---- |
| unspecified |
| uri |
| basic |
| unknownFutureValue |

### samlNameIDFormat values

| Member |
| ---- |
| default |
| unspecified |
| emailAddress |
| windowsDomainQualifiedName |
| persistent |
| unknownFutureValue |

### samlSLOBindingType values

| Member |
| ---- |
| httpRedirect |
| httpPost |
| unknownFutureValue |

### tokenFormat values

| Member |
| ---- |
| saml |
| jwt |
| unknownFutureValue |

### transformationExtractType values

| Member |
| ---- |
| prefix |
| suffix |
| unknownFutureValue |

### transformationTrimType values

| Member |
| ---- |
| leading |
| trailing |
| leadingAndTrailing |
| unknownFutureValue |

### sharingRole values

| Member |
| ---- |
| none |
| view |
| edit |
| manageList |
| review |
| restrictedView |
| submitOnly |
| unknownFutureValue |

### sharingScope values

| Member |
| ---- |
| anyone |
| organization |
| specificPeople |
| anonymous |
| users |
| unknownFutureValue |

### sharingVariant values

| Member |
| ---- |
| none |
| requiresAuthentication |
| passwordProtected |
| addressBar |
| embed |
| unknownFutureValue |

### trustFrameworkKeyStatus values

| Member |
| ---- |
| enabled |
| disabled |
| unknownFutureValue |

### conditionalAccessInsiderRiskLevels values

| Member |
| ---- |
| minor |
| moderate |
| elevated |
| unknownFutureValue |

### compliantNetworkType values

| Member |
| ---- |
| allTenantCompliantNetworks |
| unknownFutureValue |

### meetingRequestType values

| Member |
| ---- |
| none |
| newMeetingRequest |
| fullUpdate |
| informationalUpdate |
| silentUpdate |
| outdated |
| principalWantsCopy |

### photoUpdateSource values

| Member |
| ---- |
| cloud |
| onPremises |

### uriUsageType values

| Member |
| ---- |
| redirectUri |
| identifierUri |
| loginUrl |
| logoutUrl |
| unknownFutureValue |

### signUpIdentifierType values

|Member|
|:---|
|emailAddress|
|unknownFutureValue|

### signUpStage values

|Member|
|:---|
|credentialCollection|
|credentialValidation|
|credentialFederation|
|consent|
|attributeCollectionAndValidation|
|userCreation|
|tenantConsent|
|unknownFutureValue|

### nativeAuthenticationApisEnabled values

| Member |
| ---- |
| none |
| all |
| unknownFutureValue |

### whatIfAnalysisReasons values

|Member|
|:---|
|notSet|
|notEnoughInformation|
|invalidCondition|
|users|
|workloadIdentities|
|application|
|userActions|
|authenticationContext|
|devicePlatform|
|devices|
|clientApps|
|location|
|signInRisk|
|emptyPolicy|
|invalidPolicy|
|policyNotEnabled|
|userRisk|
|time|
|insiderRisk|
|authenticationFlow|
|unknownFutureValue|
|agentIdRisk|
|agentIdentities|

### insiderRiskLevel values

|Member|
|:---|
|none|
|minor|
|moderate|
|elevated|
|unknownFutureValue|

### conditionalAccessAgentIdRiskLevels values 

|Member|
|:---|
|low|
|medium|
|high|
|unknownFutureValue|

### agentIdRiskLevel values 

|Member|
|:---|
|none|
|low|
|medium|
|high|
|unknownFutureValue|

### userAction values

|Member|
|:---|
|registerSecurityInformation|
|registerOrJoinDevices|
|unknownFutureValue|

### callEventType values

| Member |
| ------------------ |
| callStarted |
| callEnded |
| unknownFutureValue |
| rosterUpdated |

### restoreArtifactsBulkRequestStatus values

|Member|
|:---|
|unkown|
|active|
|completed|
|completedWithErrors|
|unknownFutureValue|

### cloudPCInaccessibleReportName values

| Member                         |
| ------------------------------ |
| inaccessibleCloudPcReports     |
| inaccessibleCloudPcTrendReport |
| unknownFutureValue             |
| regionalInaccessibleCloudPcTrendReport |

### nonAdminSetting values

|Member|
|:---|
|false|
|true|
|unknownFutureValue|

### restoreJobType values

|Member|
|:---|
|standard|
|bulk|
|unknownFutureValue|

### cloudPcPolicyApplyActionStatus values

|Member|
|:---|
|processing|
|succeeded|
|failed|
|unknownFutureValue|

### mailboxType values

|Member|
|:---|
|unknown|
|user|
|shared|
|unknownFutureValue|

### tlsClientRegistrationMetadata values

|Member|
|:---|
|tls_client_auth_subject_dn|
|tls_client_auth_san_dns|
|tls_client_auth_san_uri|
|tls_client_auth_san_ip|
|tls_client_auth_san_email|
|unknownFutureValue|

### mailFolderOperationStatus values

|Member|
|:---|
|notStarted|
|running|
|succeeded|
|failed|
|unknownFutureValue|

### reportAction values

|Member|
|:---|
|unknown|
|junk|
|notJunk|
|phish|
|unknownFutureValue|

### errorCorrectionLevel values

|Member|
|:---|
|l|
|m|
|q|
|h|
|unknownFutureValue|

### protectionSource values

|Member|
|:---|
|none|
|manual|
|dynamicRule|
|unknownFutureValue|

### organizationAllowedAudiences values

|Member|
|:---|
|me|
|organization|
|federatedOrganizations|
|everyone|
|unknownFutureValue|

### educationSpeechType values

|Member|
|:---|
|informative|
|personal|
|persuasive|
|unknownFutureValue|

### engagementConversationMessageReactionType values

| Member           |
|:-----------------|
| like             |
| love             |
| celebrate        |
| thank            |
| laugh            |
| sad              |
| happy            |
| excited          |
| smile            |
| silly            |
| intenseLaugh     |
| starStruck       |
| goofy            |
| thinking         |
| surprised        |
| mindBlown        |
| scared           |
| crying           |
| shocked          |
| angry            |
| agree            |
| praise           |
| takingNotes      |
| heartBroken      |
| support          |
| confirmed        |
| watching         |
| brain            |
| medal            |
| bullseye         |
| unknownFutureValue |

### notificationEventsType values

|Member|
|:---|
|none|
|restoreAndPolicyUpdates|
|unknownFutureValue|

### notificationRecipientsType values

|Member|
|:---|
|none|
|globalAdmins|
|backupAdmins|
|custom|
|allAdmins|
|unknownFutureValue|

### cloudPcPolicyTimezone values

| Member             | Value | Description                                                                                                   |
| ------------------ | ----- | ------------------------------------------------------------------------------------------------------------- |
| gmt                | 0     | Default. Indicates the time zone is associated with Greenwich Mean Time(UTC+00:00).                           |
| bit                | 1     | Indicates the time zone is associated with Baker Island Time(UTC-12:00).                                      |
| nut                | 2     | Indicates the time zone is associated with Niue Time(UTC-11:00).                                              |
| hst                | 3     | Indicates the time zone is associated with Hawaii–Aleutian Standard Time(UTC-10:00).                          |
| mit                | 4     | Indicates the time zone is associated with Marquesas Islands Time(UTC-09:30).                                 |
| akst               | 5     | Indicates the time zone is associated with Alaska Standard Time(UTC-09:00).                                   |
| pst                | 6     | Indicates the time zone is associated with Pacific Standard Time(UTC-08:00).                                  |
| mst                | 7     | Indicates the time zone is associated with Mountain Standard Time(UTC-07:00).                                 |
| east               | 8     | Indicates the time zone is associated with Easter Island Standard Time(UTC-06:00).                            |
| est                | 9     | Indicates the time zone is associated with Eastern Standard Time(UTC-05:00).                                  |
| ast                | 10    | Indicates the time zone is associated with Atlantic Standard Time(UTC-04:00).                                 |
| nst                | 11    | Indicates the time zone is associated with Newfoundland Standard Time(UTC-03:30).                             |
| art                | 12    | Indicates the time zone is associated with Argentina Time(UTC-03:00).                                         |
| gst                | 13    | Indicates the time zone is associated with South Georgia and the South Sandwich Islands Time(UTC-02:00).      |
| azot               | 14    | Indicates the time zone is associated with Azores Standard Time(UTC-01:00).                                   |
| cet                | 15    | Indicates the time zone is associated with Central European Time(UTC+01:00).                                  |
| cat                | 16    | Indicates the time zone is associated with Central Africa Time(UTC+02:00).                                    |
| eat                | 17    | Indicates the time zone is associated with East Africa Time(UTC+03:00).                                       |
| get                | 18    | Indicates the time zone is associated with Georgia Standard Time(UTC+04:00).                                  |
| pkt                | 19    | Indicates the time zone is associated with Pakistan Standard Time(UTC+05:00).                                 |
| ist                | 20    | Indicates the time zone is associated with India Standard Time(UTC+05:30).                                    |
| bst                | 21    | Indicates the time zone is associated with Bangladesh Standard Time(UTC+06:00).                               |
| tha                | 22    | Indicates the time zone is associated with Thailand Standard Time(UTC+07:00).                                 |
| cst                | 23    | Indicates the time zone is associated with China Standard Time(UTC+08:00).                                    |
| jst                | 24    | Indicates the time zone is associated with Japan Standard Time(UTC+09:00).                                    |
| acst               | 25    | Indicates the time zone is associated with Australian Central Standard Time(UTC+09:30).                       |
| pgt                | 26    | Indicates the time zone is associated with Papua New Guinea Time(UTC+10:00).                                  |
| sbt                | 27    | Indicates the time zone is associated with Solomon Islands Time(UTC+11:00).                                   |
| fjt                | 28    | Indicates the time zone is associated with Fiji Time(UTC+12:00).                                              |
| tot                | 29    | Indicates the time zone is associated with Tonga Time(UTC+13:00).                                             |
| lint               | 30    | Indicates the time zone is associated with Line Islands Time(UTC+14:00).                                      |
| unknownFutureValue | 31    | Evolvable enumeration sentinel value. Do not use.                                                             |

### resourceLinkType values

|Member|
|:---|
|url|
|unknownFutureValue|

### userPersona values

|Member|
|:---|
|unknown|
|externalMember|
|externalGuest|
|internalMember|
|internalGuest|

### fileStorageContainerBillingClassification values

|Member|
|:---|
|standard|
|trial|
|directToCustomer|
|unknownFutureValue|

### fileStorageContainerBillingStatus values

|Member|
|:---|
|invalid|
|valid|
|unknownFutureValue|

### fileStorageContainerTypeAppPermission values

|Member|
|:---|
|none|
|readContent|
|writeContent|
|manageContent|
|create|
|delete|
|read|
|write|
|enumeratePermissions|
|addPermissions|
|updatePermissions|
|deletePermissions|
|deleteOwnPermission|
|managePermissions|
|full|
|unknownFutureValue|

### fileStorageContainerTypeSettingsOverride values

|Member|
|:---|
|urlTemplate|
|isDiscoverabilityEnabled|
|isSearchEnabled|
|isItemVersioningEnabled|
|itemMajorVersionLimit|
|maxStoragePerContainerInBytes|
|unknownFutureValue|

### aggregationPeriod values

|Member|
|:---|
|d1|
|d7|
|d30|
|unknownFutureValue|

### aggregationWindow values

|Member|
|:---|
|h1|
|h6|
|d1|
|unknownFutureValue|

### attestationEnforcement values 

|Member|
|:---|
|disabled|
|registrationOnly|
|unknownFutureValue|

### passkeyType values 

|Member|
|:---|
|deviceBound|
|synced|
|unknownFutureValue|

### passkeyTypes values 

|Member|
|:---|
|deviceBound|
|synced|
|unknownFutureValue|

### webApplicationFirewallDnsRecordType values 

|Member|
|:---|
|cname|
|unknownFutureValue|

### webApplicationFirewallProviderType values 

|Member|
|:---|
|akamai|
|cloudflare|
|unknownFutureValue|

### webApplicationFirewallVerificationStatus values 

|Member|
|:---|
|success|
|warning|
|failure|
|unknownFutureValue|

### claimBindingSource values 

|Member|
|:---|
|directory|
|unknownFutureValue|

### customDataProvidedResourceUploadStatus values 

|Member|
|:---|
|active|
|complete|
|expired|
|unknownFutureValue|

### principalType values 

|Member|
|:---|
|entraIdUser|
|unknownFutureValue|

### verifiedIdProfileState values 

|Member|
|:---|
|enabled|
|disabled|
|unknownFutureValue|

### verifiedIdUsageConfigurationPurpose values 

|Member|
|:---|
|recovery|
|onboarding|
|all|
|unknownFutureValue|

### siteTemplateType values 

|Member|
|:---|
|sitepagepublishing|
|group|
|sts|
|unknownFutureValue|

### workLocationSource values 
|Member|
|:---|
|none|
|manual|
|scheduled|
|automatic|
|unknownFutureValue|

### workLocationType values 

|Member|
|:---|
|unspecified|
|office|
|remote|
|timeOff|
|unknownFutureValue|

### sharePointIdentityMappingGroupType values 

|Member|
|:---|
|none|
|regularGroup|
|m365Group|
|unknownFutureValue|

### sharePointIdentityMappingUserType values 

|Member|
|:---|
|none|
|regularUser|
|adminUser|
|guestUser|
|unknownFutureValue|

### crossTenantMigrationJobStatus values 

|Member|
|:---|
|submitted|
|approved|
|processing|
|cuttingOver|
|inProgress|
|completed|
|completedWithErrors|
|failed|
|cancelled|
|pendingCancel|
|adminActionRequired|
|validateSubmitted|
|validateProcessing|
|validateInProgress|
|validatePassed|
|validateFailed|
|pendingDelete|
|deleted|
|unknownFutureValue|

### crossTenantMigrationJobType values 

|Member|
|:---|
|validate|
|migrate|
|unknownFutureValue|

### crossTenantMigrationServiceStatus values 

|Member|
|:---|
|notStarted|
|valid|
|invalid|
|error|
|inProgress|
|completed|
|failed|
|cancelled|
|pendingCancel|
|syncing|
|synced|
|finalizing|
|forceComplete|
|unknownFutureValue|

### resourceAccessStatus values

|Member|
|:---|
|none|
|failure|
|success|
|unknownFutureValue|

### resourceAccessType values

|Member|
|:---|
|none|
|read|
|write|
|create|
|unknownFutureValue|

### sharePointMigrationTaskStatus values

| Member             |
|:------------------ |
| notStarted         |
| inProgress         |
| completed          |
| cancelled          |
| failed             |
| unknownFutureValue |
