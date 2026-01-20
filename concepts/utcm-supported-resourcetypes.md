---
title: "Supported workloads and resource types"
description: "Learn the supported workloads and resource types in the unified tenant configuration management API."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
---

# Supported workloads and resource types

This article describes the supported workloads and resource types in the unified tenant configuration management (UTCM) APIs in Microsoft Graph. These APIs allow administrators to control and manage configuration settings across a single workload or multiple workloads within the organization. 

## Supported workloads

The following list shows the supported workloads:

- Microsoft Defender
- Microsoft Entra
- Microsoft Exchange Online
- Microsoft Intune
- Microsoft Purview
- Microsoft Teams

## Supported resource types

UTCM supports more than 300 resource types, each with various associated properties. The complete repository is available in the JSON schema store. For more information about the schema, required permissions, and sample examples for each resource type, see [https://json.schemastore.org/utcm-monitor.json](https://json.schemastore.org/utcm-monitor.json).

### Entra

The following list shows the supported resource types in Entra.

- microsoft.entra.administrativeUnit
- microsoft.entra.application
- microsoft.entra.attributeSet
- microsoft.entra.authenticationContextClassReference
- microsoft.entra.authenticationMethodPolicy
- microsoft.entra.authenticationMethodPolicyAuthenticator
- microsoft.entra.authenticationMethodPolicyEmail
- microsoft.entra.authenticationMethodPolicyFido2
- microsoft.entra.authenticationMethodPolicySms
- microsoft.entra.authenticationMethodPolicySoftware
- microsoft.entra.authenticationMethodPolicyTemporary
- microsoft.entra.authenticationMethodPolicyVoice
- microsoft.entra.authenticationMethodPolicyX509
- microsoft.entra.authenticationStrengthPolicy
- microsoft.entra.authorizationPolicy
- microsoft.entra.conditionalAccessPolicy
- microsoft.entra.crossTenantAccessPolicy
- microsoft.entra.crossTenantAccessPolicyConfigurationDefault
- microsoft.entra.crossTenantAccessPolicyConfigurationPartner
- microsoft.entra.entitlementManagementAccessPackage
- microsoft.entra.entitlementManagementAccessPackageAssignmentPolicy
- microsoft.entra.entitlementManagementAccessPackageCatalog
- microsoft.entra.entitlementManagementAccessPackageCatalogResource
- microsoft.entra.entitlementManagementConnectedOrganization
- microsoft.entra.externalIdentityPolicy
- microsoft.entra.group
- microsoft.entra.groupLifecyclePolicy
- microsoft.entra.groupsNamingPolicy
- microsoft.entra.groupsSettings
- microsoft.entra.namedLocationPolicy
- microsoft.entra.roleDefinition
- microsoft.entra.roleEligibilityScheduleRequest
- microsoft.entra.roleSetting
- microsoft.entra.securityDefaults
- microsoft.entra.servicePrincipal
- microsoft.entra.socialIdentityProvider
- microsoft.entra.tenantDetails
- microsoft.entra.tokenLifetimePolicy
- microsoft.entra.user

### Exchange Online

The following list shows the supported resource types in Exchange Online.

- microsoft.exchange.acceptedDomain
- microsoft.exchange.activeSyncDeviceAccessRule
- microsoft.exchange.addressBookPolicy
- microsoft.exchange.antiPhishPolicy
- microsoft.exchange.antiPhishRule
- microsoft.exchange.applicationAccessPolicy
- microsoft.exchange.atpPolicyForO365
- microsoft.exchange.authenticationPolicy
- microsoft.exchange.authenticationPolicyAssignment
- microsoft.exchange.availabilityAddressSpace
- microsoft.exchange.availabilityConfig
- microsoft.exchange.calendarProcessing
- microsoft.exchange.casMailboxPlan
- microsoft.exchange.casMailboxSettings
- microsoft.exchange.dataClassification
- microsoft.exchange.dataEncryptionPolicy
- microsoft.exchange.distributionGroup
- microsoft.exchange.dkimSigningConfig
- microsoft.exchange.emailAddressPolicy
- microsoft.exchange.groupSettings
- microsoft.exchange.hostedConnectionFilterPolicy
- microsoft.exchange.hostedContentFilterPolicy
- microsoft.exchange.hostedContentFilterRule
- microsoft.exchange.hostedOutboundSpamFilterPolicy
- microsoft.exchange.hostedOutboundSpamFilterRule
- microsoft.exchange.inboundConnector
- microsoft.exchange.intraOrganizationConnector
- microsoft.exchange.irmConfiguration
- microsoft.exchange.journalRule
- microsoft.exchange.mailboxAutoReplyConfiguration
- microsoft.exchange.mailboxCalendarFolder
- microsoft.exchange.mailboxPermission
- microsoft.exchange.mailboxPlan
- microsoft.exchange.mailboxSettings
- microsoft.exchange.mailContact
- microsoft.exchange.mailTips
- microsoft.exchange.malwareFilterPolicy
- microsoft.exchange.malwareFilterRule
- microsoft.exchange.managementRole
- microsoft.exchange.managementRoleAssignment
- microsoft.exchange.messageClassification
- microsoft.exchange.mobileDeviceMailboxPolicy
- microsoft.exchange.omeConfiguration
- microsoft.exchange.onPremisesOrganization
- microsoft.exchange.organizationConfig
- microsoft.exchange.organizationRelationship
- microsoft.exchange.outboundConnector
- microsoft.exchange.owaMailboxPolicy
- microsoft.exchange.partnerApplication
- microsoft.exchange.perimeterConfiguration
- microsoft.exchange.place
- microsoft.exchange.policyTipConfig
- microsoft.exchange.quarantinePolicy
- microsoft.exchange.recipientPermission
- microsoft.exchange.remoteDomain
- microsoft.exchange.reportSubmissionPolicy
- microsoft.exchange.reportSubmissionRule
- microsoft.exchange.resourceConfiguration
- microsoft.exchange.roleAssignmentPolicy
- microsoft.exchange.roleGroup
- microsoft.exchange.safeAttachmentPolicy
- microsoft.exchange.safeAttachmentRule
- microsoft.exchange.safeLinksPolicy
- microsoft.exchange.safeLinksRule
- microsoft.exchange.sharedMailbox
- microsoft.exchange.sharingPolicy
- microsoft.exchange.transportConfig
- microsoft.exchange.transportRule

### Intune

The following list shows the supported resource types in Intune.

- microsoft.intune.accountProtectionLocalAdministratorPasswordSolutionPolicy
- microsoft.intune.accountProtectionLocalUserGroupMembershipPolicy
- microsoft.intune.accountProtectionPolicy
- microsoft.intune.antivirusPolicyWindows10SettingCatalog
- microsoft.intune.appConfigurationPolicy
- microsoft.intune.applicationControlPolicyWindows10
- microsoft.intune.appProtectionPolicyAndroid
- microsoft.intune.appProtectionPolicyiOS
- microsoft.intune.asrRulesPolicyWindows10
- microsoft.intune.attackSurfaceReductionRulesPolicyWindows10ConfigManager
- microsoft.intune.deviceAndAppManagementAssignmentFilter
- microsoft.intune.deviceCategory
- microsoft.intune.deviceCleanupRule
- microsoft.intune.deviceCompliancePolicyAndroid
- microsoft.intune.deviceCompliancePolicyAndroidDeviceOwner
- microsoft.intune.deviceCompliancePolicyAndroidWorkProfile
- microsoft.intune.deviceCompliancePolicyiOs
- microsoft.intune.deviceCompliancePolicyMacOS
- microsoft.intune.deviceCompliancePolicyWindows10
- microsoft.intune.deviceConfigurationAdministrativeTemplatePolicyWindows10
- microsoft.intune.deviceConfigurationCustomPolicyWindows10
- microsoft.intune.deviceConfigurationDefenderForEndpointOnboardingPolicyWindows10
- microsoft.intune.deviceConfigurationDeliveryOptimizationPolicyWindows10
- microsoft.intune.deviceConfigurationDomainJoinPolicyWindows10
- microsoft.intune.deviceConfigurationEmailProfilePolicyWindows10
- microsoft.intune.deviceConfigurationEndpointProtectionPolicyWindows10
- microsoft.intune.deviceConfigurationFirmwareInterfacePolicyWindows10
- microsoft.intune.deviceConfigurationHealthMonitoringConfigurationPolicyWindows10
- microsoft.intune.deviceConfigurationIdentityProtectionPolicyWindows10
- microsoft.intune.deviceConfigurationImportedPfxCertificatePolicyWindows10
- microsoft.intune.deviceConfigurationKioskPolicyWindows10
- microsoft.intune.deviceConfigurationNetworkBoundaryPolicyWindows10
- microsoft.intune.deviceConfigurationPkcsCertificatePolicyWindows10
- microsoft.intune.deviceConfigurationPolicyAndroidDeviceAdministrator
- microsoft.intune.deviceConfigurationPolicyAndroidDeviceOwner
- microsoft.intune.deviceConfigurationPolicyAndroidOpenSourceProject
- microsoft.intune.deviceConfigurationPolicyAndroidWorkProfile
- microsoft.intune.deviceConfigurationPolicyiOS
- microsoft.intune.deviceConfigurationPolicyMacOS
- microsoft.intune.deviceConfigurationPolicyWindows10
- microsoft.intune.deviceConfigurationSCEPCertificatePolicyWindows10
- microsoft.intune.deviceConfigurationSecureAssessmentPolicyWindows10
- microsoft.intune.deviceConfigurationSharedMultiDevicePolicyWindows10
- microsoft.intune.deviceConfigurationTrustedCertificatePolicyWindows10
- microsoft.intune.deviceConfigurationVpnPolicyWindows10
- microsoft.intune.deviceConfigurationWindowsTeamPolicyWindows10
- microsoft.intune.deviceConfigurationWiredNetworkPolicyWindows10
- microsoft.intune.deviceEnrollmentLimitRestriction
- microsoft.intune.deviceEnrollmentPlatformRestriction
- microsoft.intune.deviceEnrollmentStatusPageWindows10
- microsoft.intune.endpointDetectionAndResponsePolicyWindows10
- microsoft.intune.exploitProtectionPolicyWindows10SettingCatalog
- microsoft.intune.policySets
- microsoft.intune.roleAssignment
- microsoft.intune.roleDefinition
- microsoft.intune.settingCatalogASRRulesPolicyWindows10
- microsoft.intune.settingCatalogCustomPolicyWindows10
- microsoft.intune.wiFiConfigurationPolicyAndroidDeviceAdministrator
- microsoft.intune.wifiConfigurationPolicyAndroidEnterpriseDeviceOwner
- microsoft.intune.wifiConfigurationPolicyAndroidEnterpriseWorkProfile
- microsoft.intune.wifiConfigurationPolicyAndroidForWork
- microsoft.intune.wifiConfigurationPolicyAndroidOpenSourceProject
- microsoft.intune.wifiConfigurationPolicyIOS
- microsoft.intune.wifiConfigurationPolicyMacOS
- microsoft.intune.wifiConfigurationPolicyWindows10
- microsoft.intune.windowsAutopilotDeploymentProfileAzureADHybridJoined
- microsoft.intune.windowsAutopilotDeploymentProfileAzureADJoined
- microsoft.intune.windowsInformationProtectionPolicyWindows10MdmEnrolled
- microsoft.intune.windowsUpdateForBusinessFeatureUpdateProfileWindows10
- microsoft.intune.windowsUpdateForBusinessRingUpdateProfileWindows10

### Security and compliance

The following list shows the supported resource types in security and compliance.

- microsoft.securityAndCompliance.auditConfigurationPolicy
- microsoft.securityAndCompliance.autoSensitivityLabelPolicy
- microsoft.securityAndCompliance.autoSensitivityLabelRule
- microsoft.securityAndCompliance.caseHoldPolicy
- microsoft.securityAndCompliance.caseHoldRule
- microsoft.securityAndCompliance.complianceCase
- microsoft.securityAndCompliance.complianceSearch
- microsoft.securityAndCompliance.complianceSearchAction
- microsoft.securityAndCompliance.complianceTag
- microsoft.securityAndCompliance.deviceConditionalAccessPolicy
- microsoft.securityAndCompliance.deviceConfigurationPolicy
- microsoft.securityAndCompliance.dlpCompliancePolicy
- microsoft.securityAndCompliance.dlpComplianceRule
- microsoft.securityAndCompliance.filePlanPropertyAuthority
- microsoft.securityAndCompliance.filePlanPropertyCategory
- microsoft.securityAndCompliance.filePlanPropertyCitation
- microsoft.securityAndCompliance.filePlanPropertyDepartment
- microsoft.securityAndCompliance.filePlanPropertyReferenceId
- microsoft.securityAndCompliance.filePlanPropertySubcategory
- microsoft.securityAndCompliance.labelPolicy
- microsoft.securityAndCompliance.protectionAlert
- microsoft.securityAndCompliance.retentionCompliancePolicy
- microsoft.securityAndCompliance.retentionComplianceRule
- microsoft.securityAndCompliance.retentionEventType
- microsoft.securityAndCompliance.securityFilter
- microsoft.securityAndCompliance.sensitivityLabel
- microsoft.securityAndCompliance.supervisoryReviewPolicy
- microsoft.securityAndCompliance.supervisoryReviewRule

### Teams

The following list shows the supported resource types in Teams.

- microsoft.teams.appPermissionPolicy
- microsoft.teams.appSetupPolicy
- microsoft.teams.audioConferencingPolicy
- microsoft.teams.callHoldPolicy
- microsoft.teams.callingPolicy
- microsoft.teams.callParkPolicy
- microsoft.teams.callQueue
- microsoft.teams.channel
- microsoft.teams.channelsPolicy
- microsoft.teams.channelTab
- microsoft.teams.clientConfiguration
- microsoft.teams.complianceRecordingPolicy
- microsoft.teams.cortanaPolicy
- microsoft.teams.dialInConferencingTenantSettings
- microsoft.teams.emergencyCallingPolicy
- microsoft.teams.emergencyCallRoutingPolicy
- microsoft.teams.enhancedEncryptionPolicy
- microsoft.teams.eventsPolicy
- microsoft.teams.federationConfiguration
- microsoft.teams.feedbackPolicy
- microsoft.teams.filesPolicy
- microsoft.teams.groupPolicyAssignment
- microsoft.teams.guestCallingConfiguration
- microsoft.teams.guestMeetingConfiguration
- microsoft.teams.guestMessagingConfiguration
- microsoft.teams.ipPhonePolicy
- microsoft.teams.meetingBroadcastConfiguration
- microsoft.teams.meetingBroadcastPolicy
- microsoft.teams.meetingConfiguration
- microsoft.teams.meetingPolicy
- microsoft.teams.messagingPolicy
- microsoft.teams.mobilityPolicy
- microsoft.teams.networkRoamingPolicy
- microsoft.teams.onlineVoicemailPolicy
- microsoft.teams.onlineVoicemailUserSettings
- microsoft.teams.onlineVoiceUser
- microsoft.teams.orgWideAppSettings
- microsoft.teams.pstnUsage
- microsoft.teams.shiftsPolicy
- microsoft.teams.team
- microsoft.teams.templatesPolicy
- microsoft.teams.tenantDialPlan
- microsoft.teams.tenantNetworkRegion
- microsoft.teams.tenantNetworkSite
- microsoft.teams.tenantNetworkSubnet
- microsoft.teams.tenantTrustedIPAddress
- microsoft.teams.translationRule
- microsoft.teams.unassignedNumberTreatment
- microsoft.teams.updateManagementPolicy
- microsoft.teams.upgradeConfiguration
- microsoft.teams.upgradePolicy
- microsoft.teams.user
- microsoft.teams.userCallingSettings
- microsoft.teams.userPolicyAssignment
- microsoft.teams.vdiPolicy
- microsoft.teams.voiceRoute
- microsoft.teams.voiceRoutingPolicy
- microsoft.teams.workloadPolicy
