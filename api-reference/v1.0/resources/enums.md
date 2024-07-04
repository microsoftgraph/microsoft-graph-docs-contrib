---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: enumTypes
---

### virtualEventRegistrationPredefinedQuestionLabel values 



|Member|
|:---|
|street|
|city|
|state|
|postalCode|
|countryOrRegion|
|industry|
|jobTitle|
|organization|
|unknownFutureValue|

### virtualEventRegistrationQuestionAnswerInputType values 



|Member|
|:---|
|text|
|multilineText|
|singleChoice|
|multiChoice|
|boolean|
|unknownFutureValue|

### teamworkActivityTopicSource values

| Member    |
| :-------- |
| entityUrl |
| text      |


### provisioningResult values

| Member             |
| :----------------- |
| success            |
| failure            |
| skipped            |
| warning            |
| unknownFutureValue |

### provisioningStepType values

| Member              |
| :------------------ |
| import              |
| scoping             |
| matching            |
| processing          |
| referenceResolution |
| export              |
| unknownFutureValue  |

### provisioningStatusErrorCategory values

| Member             |
| :----------------- |
| failure            |
| nonServiceFailure  |
| success            |
| unknownFutureValue |

### provisioningAction values

| Member             |
| :----------------- |
| other              |
| create             |
| delete             |
| disable            |
| update             |
| stagedDelete       |
| unknownFutureValue |


### initiatorType values

| Member             |
| :----------------- |
| user               |
| application        |
| system             |
| unknownFutureValue |

### teamworkApplicationIdentityType values

| Member             |
| :----------------- |
| aadApplication     |
| bot                |
| tenantBot          |
| office365Connector |
| outgoingWebhook    |
| unknownFutureValue |

### teamworkConversationIdentityType values

| Member             |
| :----------------- |
| team               |
| channel            |
| chat               |
| unknownFutureValue |

### teamworkUserIdentityType values

| Member                       |
| :--------------------------- |
| aadUser                      |
| onPremiseAadUser             |
| anonymousGuest               |
| federatedUser                |
| personalMicrosoftAccountUser |
| skypeUser                    |
| phoneUser                    |
| unknownFutureValue           |
| emailUser                    |

### postType values

| Member             |
| :----------------- |
| regular            |
| quick              |
| strategic          |
| unknownFutureValue |

### searchAlterationType values

| Member       |
| :----------- |
| modification |
| suggestion   |

### serviceHealthClassificationType values

| Member             |
| :----------------- |
| advisory           |
| incident           |
| unknownFutureValue |

### serviceHealthOrigin values

| Member             |
| :----------------- |
| microsoft          |
| thirdParty         |
| customer           |
| unknownFutureValue |

### featureTargetType values

| Member             |
| :----------------- |
| group              |
| administrativeUnit |
| role               |
| unknownFutureValue |

### serviceHealthStatus values

| Member                      |
| :-------------------------- |
| serviceOperational          |
| investigating               |
| restoringService            |
| verifyingService            |
| serviceRestored             |
| postIncidentReviewPublished |
| serviceDegradation          |
| serviceInterruption         |
| extendedRecovery            |
| falsePositive               |
| investigationSuspended      |
| resolved                    |
| mitigatedExternal           |
| mitigated                   |
| resolvedExternal            |
| confirmed                   |
| reported                    |
| unknownFutureValue          |

### serviceUpdateCategory values

| Member             |
| :----------------- |
| preventOrFixIssue  |
| planForChange      |
| stayInformed       |
| unknownFutureValue |

### serviceUpdateSeverity values

| Member             |
| :----------------- |
| normal             |
| high               |
| critical           |
| unknownFutureValue |

### subjectRightsRequestStage values

| Member             |
| :----------------- |
| contentRetrieval   |
| contentReview      |
| generateReport     |
| contentDeletion    |
| caseResolved       |
| unknownFutureValue |
| approval           |

### subjectRightsRequestStageStatus values

| Member             |
| :----------------- |
| notStarted         |
| current            |
| completed          |
| failed             |
| unknownFutureValue |

### subjectRightsRequestStatus values

| Member             |
| :----------------- |
| active             |
| closed             |
| unknownFutureValue |

### subjectRightsRequestType values

| Member             |
| :----------------- |
| export             |
| delete             |
| access             |
| tagForAction       |
| unknownFutureValue |

### dataSubjectType values

| Member              |
| :------------------ |
| customer            |
| currentEmployee     |
| formerEmployee      |
| prospectiveEmployee |
| student             |
| teacher             |
| faculty             |
| other               |
| unknownFutureValue  |

### advancedConfigState values

| Member             |
| :----------------- |
| default            |
| enabled            |
| disabled           |
| unknownFutureValue |

### callRecordingStatus values

| Member             |
| :----------------- |
| success            |
| failure            |
| initial            |
| chunkFinished      |
| unknownFutureValue |

### endUserNotificationPreference values

|Member|
|:---|
|unknown|
|microsoft|
|custom|
|unknownFutureValue|

### endUserNotificationSettingType values

|Member|
|:---|
|unknown|
|noTraining|
|trainingSelected|
|noNotification|
|unknownFutureValue|

### endUserNotificationType values

|Member|
|:---|
|unknown|
|positiveReinforcement|
|noTraining|
|trainingAssignment|
|trainingReminder|
|unknownFutureValue|

### notificationDeliveryFrequency values

|Member|
|:---|
|unknown|
|weekly|
|biWeekly|
|unknownFutureValue|

### notificationDeliveryPreference values

|Member|
|:---|
|unknown|
|deliverImmedietly|
|deliverAfterCampaignEnd|
|unknownFutureValue|

### oAuthAppScope values

|Member|
|:---|
|unknown|
|readCalendar|
|readContact|
|readMail|
|readAllChat|
|readAllFile|
|readAndWriteMail|
|sendMail|
|unknownFutureValue|

### targettedUserType values

|Member|
|:---|
|unknown|
|clicked|
|compromised|
|allUsers|
|unknownFutureValue|

### trainingAssignedTo values

|Member|
|:---|
|none|
|allUsers|
|clickedPayload|
|compromised|
|reportedPhish|
|readButNotClicked|
|didNothing|
|unknownFutureValue|

### trainingAvailabilityStatus values

|Member|
|:---|
|unknown|
|notAvailable|
|available|
|archive|
|delete|
|unknownFutureValue|

### trainingCompletionDuration values

| Member             |
| :------------------|
| week               |
| fortnite           |
| month              |
| unknownFutureValue |

### trainingSettingType values

|Member|
|:---|
|microsoftCustom|
|microsoftManaged|
|noTraining|
|custom|
|unknownFutureValue|

### trainingType values

|Member|
|:---|
|unknown|
|phishing|
|unknownFutureValue|

### payloadDeliveryPlatform values

| Member             |
| :----------------- |
| unknown            |
| sms                |
| email              |
| teams              |
| unknownFutureValue |

### trainingStatus values

| Member             |
| :----------------- |
| unknown            |
| assigned           |
| inProgress         |
| completed          |
| overdue            |
| unknownFutureValue |

### teamworkCallEventType values

| Member             |
| :----------------- |
| call               |
| meeting            |
| screenShare        |
| unknownFutureValue |

### bookingReminderRecipients values

| Member             |
| :----------------- |
| allAttendees       |
| staff              |
| customer           |
| unknownFutureValue |

### bookingStaffRole values

| Member             |
| :----------------- |
| guest              |
| administrator      |
| viewer             |
| externalGuest      |
| unknownFutureValue |
| scheduler          |
| teamMember         |

### answerInputType values

| Member             |
| :----------------- |
| text               |
| radioButton        |
| unknownFutureValue |

### bookingPriceType values

| Member             |
| :----------------- |
| undefined          |
| fixedPrice         |
| startingAt         |
| hourly             |
| free               |
| priceVaries        |
| callUs             |
| notSet             |
| unknownFutureValue |

### accessReviewHistoryStatus values

| Member             |
| :----------------- |
| done               |
| inprogress         |
| error              |
| requested          |
| unknownFutureValue |

### accessReviewHistoryDecisionFilter values

| Member             |
| :----------------- |
| approve            |
| deny               |
| notReviewed        |
| dontKnow           |
| notNotified        |
| unknownFutureValue |

### weakAlgorithms values

|Member|
|:---|
|rsaSha1|
|unknownFutureValue|

### authenticationProtocol values

| Member |
| :----- |
| wsFed  |
| saml   |

### longRunningOperationStatus values

| Member             |
| :----------------- |
| notStarted         |
| running            |
| succeeded          |
| failed             |
| unknownFutureValue |

### delegatedAdminAccessAssignmentStatus values

| Member             |
| :----------------- |
| pending            |
| active             |
| deleting           |
| deleted            |
| error              |
| unknownFutureValue |

### delegatedAdminAccessContainerType values

| Member             |
| :----------------- |
| securityGroup      |
| unknownFutureValue |

### delegatedAdminRelationshipOperationType values

| Member                               |
| :----------------------------------- |
| delegatedAdminAccessAssignmentUpdate |
| unknownFutureValue                   |

### delegatedAdminRelationshipRequestAction values

| Member             |
| :----------------- |
| lockForApproval    |
| approve            |
| terminate          |
| unknownFutureValue |
| reject             |

### delegatedAdminRelationshipRequestStatus values

| Member             |
| :----------------- |
| created            |
| pending            |
| succeeded          |
| failed             |
| unknownFutureValue |

### delegatedAdminRelationshipStatus values

| Member               |
| :------------------- |
| activating           |
| active               |
| approvalPending      |
| approved             |
| created              |
| expired              |
| expiring             |
| terminated           |
| terminating          |
| terminationRequested |
| unknownFutureValue   |

### onPremisesDirectorySynchronizationDeletionPreventionType values

| Member               |
| :------------------- |
| disabled             |
| enabledForCount      |
| enabledForPercentage |

### searchContent values

| Member             |
| :----------------- |
| sharedContent      |
| privateContent     |
| unknownFutureValue |

### authenticationMethodsPolicyMigrationState values

|Member|
|:-----|
|premigration|
|migrationInProgress|
|migrationComplete|
|unknownFutureValue|

### authenticationStrengthPolicyType values

|Member|
|:---|
|builtIn|
|custom|
|unknownFutureValue|

### authenticationStrengthRequirements values

|Member|
|:---|
|none|
|mfa|
|unknownFutureValue|

### authenticationMethodModes values

|Member|
|:---|
|password|
|voice|
|hardwareOath|
|softwareOath|
|sms|
|fido2|
|windowsHelloForBusiness|
|microsoftAuthenticatorPush|
|deviceBasedPush|
|temporaryAccessPassOneTime|
|temporaryAccessPassMultiUse|
|email|
|x509CertificateSingleFactor|
|x509CertificateMultiFactor|
|federatedSingleFactor|
|federatedMultiFactor|
|unknownFutureValue|

### baseAuthenticationMethod values

|Member|
|:---|
|password|
|voice|
|hardwareOath|
|softwareOath|
|sms|
|fido|
|microsoftAuthenticator|
|windowsHelloForBusiness|
|temporaryAccessPass|
|email|
|x509Certificate|
|federation|
|unknownFutureValue|

### browserSharedCookieSourceEnvironment values

| Member|
|:-----------------|
|microsoftEdge|
|internetExplorer11|
|both|
|unknownFutureValue|

### browserSiteCompatibilityMode values

| Member|
|:-----------------|
|default|
|internetExplorer8Enterprise|
|internetExplorer7Enterprise|
|internetExplorer11|
|internetExplorer10|
|internetExplorer9|
|internetExplorer8|
|internetExplorer7|
|internetExplorer5|
|unknownFutureValue|

### browserSiteMergeType values

| Member|
|:-----------------|
|noMerge|
|default|
|unknownFutureValue|

### browserSiteTargetEnvironment values

| Member|
|:-----------------|
|internetExplorerMode|
|internetExplorer11|
|microsoftEdge|
|configurable|
|none|
|unknownFutureValue|

### browserSiteStatus values

| Member|
|:-----------------|
|published|
|pendingAdd|
|pendingEdit|
|pendingDelete|
|unknownFutureValue|

### browserSharedCookieStatus values

| Member|
|:-----------------|
|published|
|pendingAdd|
|pendingEdit|
|pendingDelete|
|unknownFutureValue|

### browserSiteListStatus values

| Member|
|:-----------------|
|draft|
|published|
|pending|
|unknownFutureValue|

### chatMessageActions values

|Member|
|:---|
|reactionAdded|
|reactionRemoved|
|actionUndefined|
|unknownFutureValue|

### attributeDefinitionMetadata values

|Member|
|:---|
|BaseAttributeName|
|ComplexObjectDefinition|
|IsContainer|
|IsCustomerDefined|
|IsDomainQualified|
|LinkPropertyNames|
|LinkTypeName|
|MaximumLength|
|ReferencedProperty|

### attributeFlowBehavior values

|Member|
|:---|
|FlowWhenChanged|
|FlowAlways|

### attributeFlowType values

| Member            |
| :---------------- |
| Always            |
| ObjectAddOnly     |
| MultiValueAddOnly |
| ValueAddOnly      |
| AttributeAddOnly  |

### attributeMappingSourceType values

| Member    |
| :-------- |
| Attribute |
| Constant  |
| Function  |

### directoryDefinitionDiscoverabilities values

| Member              |
| :------------------ |
| None                |
| AttributeNames      |
| AttributeDataTypes  |
| AttributeReadOnly   |
| ReferenceAttributes |
| UnknownFutureValue  |

### attributeType values

| Member    |
| :-------- |
| String    |
| Integer   |
| Reference |
| Binary    |
| Boolean   |
| DateTime  |

### mutability values

| Member    |
| :-------- |
| ReadWrite |
| ReadOnly  |
| Immutable |
| WriteOnly |

### objectDefinitionMetadata values

|Member|
|:---|
|PropertyNameAccountEnabled|
|PropertyNameSoftDeleted|
|IsSoftDeletionSupported|
|IsSynchronizeAllSupported|
|ConnectorDataStorageRequired|
|Extensions|
|BaseObjectName|

### objectFlowTypes values

|Member|
|:---|
|None|
|Add|
|Update|
|Delete|

### objectMappingMetadata values

|Member|
|:---|
|EscrowBehavior|
|DisableMonitoringForChanges|
|OriginalJoiningProperty|
|Disposition|
|IsCustomerDefined|
|ExcludeFromReporting|
|Unsynchronized|

### synchronizationMetadata values

|Member|
|:---|
|GalleryApplicationIdentifier|
|GalleryApplicationKey|
|IsOAuthEnabled|
|IsSynchronizationAgentAssignmentRequired|
|IsSynchronizationAgentRequired|
|IsSynchronizationInPreview|
|OAuthSettings|
|SynchronizationLearnMoreIbizaFwLink|
|ConfigurationFields|

### synchronizationSecret values

| Member                          |
| :------------------------------ |
| None                            |
| UserName                        |
| Password                        |
| SecretToken                     |
| AppKey                          |
| BaseAddress                     |
| ClientIdentifier                |
| ClientSecret                    |
| SingleSignOnType                |
| Sandbox                         |
| Url                             |
| Domain                          |
| ConsumerKey                     |
| ConsumerSecret                  |
| TokenKey                        |
| TokenExpiration                 |
| Oauth2AccessToken               |
| Oauth2AccessTokenCreationTime   |
| Oauth2RefreshToken              |
| SyncAll                         |
| InstanceName                    |
| Oauth2ClientId                  |
| Oauth2ClientSecret              |
| CompanyId                       |
| UpdateKeyOnSoftDelete           |
| SynchronizationSchedule         |
| SystemOfRecord                  |
| SandboxName                     |
| EnforceDomain                   |
| SyncNotificationSettings        |
| SkipOutOfScopeDeletions         |
| Oauth2AuthorizationCode         |
| Oauth2RedirectUri               |
| ApplicationTemplateIdentifier   |
| Oauth2TokenExchangeUri          |
| Oauth2AuthorizationUri          |
| AuthenticationType              |
| Server                          |
| PerformInboundEntitlementGrants |
| HardDeletesEnabled              |
| SyncAgentCompatibilityKey       |
| SyncAgentADContainer            |
| ValidateDomain                  |
| TestReferences                  |
| ConnectionString                |

### synchronizationStatusCode values

| Member        |
| :------------ |
| NotConfigured |
| NotRun        |
| Active        |
| Paused        |
| Quarantine    |

### synchronizationTaskExecutionResult values

| Member           |
| :--------------- |
| Succeeded        |
| Failed           |
| EntryLevelErrors |

### stagedFeatureName values

| Member                         |
|:-------------------------------|
| passthroughAuthentication      |
| seamlessSso                    |
| passwordHashSync               |
| emailAsAlternateId             |
| unknownFutureValue             |
| certificateBasedAuthentication |
| multiFactorAuthentication      |

### synchronizationJobRestartScope values

|Member|
|:---|
|None|
|ConnectorDataStore|
|Escrows|
|Watermark|
|QuarantineState|
|Full|
|ForceDeletes|

### quarantineReason values

| Member                               |
| :----------------------------------- |
| EncounteredBaseEscrowThreshold       |
| EncounteredTotalEscrowThreshold      |
| EncounteredEscrowProportionThreshold |
| EncounteredQuarantineException       |
| Unknown                              |
| QuarantinedOnDemand                  |
| TooManyDeletes                       |
| IngestionInterrupted                 |

### synchronizationScheduleState values

| Member   |
| :------- |
| Active   |
| Disabled |
| Paused   |

### scopeOperatorMultiValuedComparisonType values

|Member|
|:---|
|All|
|Any|

### scopeOperatorType values

| Member |
| :----- |
| Binary |
| Unary  |

### entryExportStatus values

|Member|
|:---|
|Noop|
|Success|
|RetryableError|
|PermanentError|
|Error|

### entrySyncOperation values

|Member|
|:---|
|None|
|Add|
|Delete|
|Update|

### scopeOperatorType values

| Member |
| :----- |
| Default |
| IgnoreLookupReferenceResolutionFailure  |

### synchronizationDisposition values

| Member   |
| :------- |
| Normal   |
| Discard |
| Escrow   |

### outlierMemberType values

|Member|
|:---|
|user|
|unknownFutureValue|

### outlierContainerType values

|Member|
|:---|
|group|
|unknownFutureValue|

### authenticationMethodFeature values

|Member|
|:---|
|ssprRegistered|
|ssprEnabled|
|ssprCapable|
|passwordlessCapable|
|mfaCapable|
|unknownFutureValue|

### featureType values

|Member|
|:---|
|registration|
|reset|
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

### signInUserType values

|Member|
|:---|
|member|
|guest|
|unknownFutureValue|

### userDefaultAuthenticationMethod values

|Member|
|:---|
|push|
|oath|
|voiceMobile|
|voiceAlternateMobile|
|voiceOffice|
|sms|
|none|
|unknownFutureValue|

### layoutTemplateType values

| Member             |
| :----------------- |
| default            |
| verticalSplit      |
| unknownFutureValue |

### meetingAudience values 

|Member|
|:---|
|everyone|
|organization|
|unknownFutureValue|

### virtualEventAttendeeRegistrationStatus values 

|Member|
|:---|
|registered|
|canceled|
|waitlisted|
|pendingApproval|
|rejectedByOrganizer|
|unknownFutureValue|

### virtualEventStatus values 

|Member|
|:---|
|draft|
|published|
|canceled|

### socialIdentitySourceType values

|Member|
|:---|
|facebook|
|unknownFutureValue|

### devicePlatformType values

| Member             |
|:-------------------|
| android            |
| androidForWork     |
| iOS                |
| macOS              |
| windowsPhone81     |
| windows81AndLater  |
| windows10AndLater  |
| androidWorkProfile |
| unknown            |
| androidAOSP        |
| androidMobileApplicationManagement|
| iOSMobileApplicationManagement|
| unknownFutureValue|

### educationAssignmentStatus values

| Member             |
| :----------------- |
| draft              |
| published          |
| assigned           |
| unknownFutureValue |
| inactive           |

### b2bIdentityProvidersType values

|Member|
|:-----|
|azureActiveDirectory|
|externalFederation|
|socialIdentityProviders|
|emailOneTimePasscode|
|microsoftAccount|
|defaultConfiguredIdp|
|unknownFutureValue|

### bookingStaffMembershipStatus values

|Member|
|:---|
|active|
|pendingAcceptance|
|rejectedByStaff|
|unknownFutureValue|

### conditionalAccessInsiderRiskLevels values 

|Member|
|:---|
|minor|
|moderate|
|elevated|
|unknownFutureValue|

### nativeAuthenticationApisEnabled values

| Member|
|:---|
|none|
|all|
|unknownFutureValue|
