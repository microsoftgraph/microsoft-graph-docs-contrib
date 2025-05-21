---
title: "UTCM supported workloads and resource types"
description: "This document talks about what UTCM supported workloads and resource types."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
---

# Supported Workloads & Resource Types

Unified-tenant configuration management APIs let administrators control and manage configuration settings for the entire organization. The settings can be on one or a combination of settings across the following workloads:

- MS Exchange Online
- MS Entra
- MS Teams
- MS Purview
- MS Defender
- MS OneDrive SharePoint
- MS Intune

UTCM supports 300+ resource types and various properties per resource type. The entire repository of is available in the JSON schema store.
 
For the schema, permissions, and sample examples per resource type, click [here](https://json.schemastore.org/utcm-monitor.json).

---

## MS Entra

- `microsoft.entra.AdministrativeUnit`
- `microsoft.entra.Application`
- `microsoft.entra.AttributeSet`
- `microsoft.entra.AuthenticationContextClassReference`
- `microsoft.entra.AuthenticationMethodPolicy`
- `microsoft.entra.AuthenticationMethodPolicyAuthenticator`
- `microsoft.entra.AuthenticationMethodPolicyEmail`
- `microsoft.entra.AuthenticationMethodPolicyFido2`
- `microsoft.entra.AuthenticationMethodPolicySms`
- `microsoft.entra.AuthenticationMethodPolicySoftware`
- `microsoft.entra.AuthenticationMethodPolicyTemporary`
- `microsoft.entra.AuthenticationMethodPolicyVoice`
- `microsoft.entra.AuthenticationMethodPolicyX509`
- `microsoft.entra.AuthenticationStrengthPolicy`
- `microsoft.entra.AuthorizationPolicy`
- `microsoft.entra.ConditionalAccessPolicy`
- `microsoft.entra.CrossTenantAccessPolicy`
- `microsoft.entra.CrossTenantAccessPolicyConfigurationDefault`
- `microsoft.entra.CrossTenantAccessPolicyConfigurationPartner`
- `microsoft.entra.EntitlementManagementAccessPackage`
- `microsoft.entra.EntitlementManagementAccessPackageAssignmentPolicy`
- `microsoft.entra.EntitlementManagementAccessPackageCatalog`
- `microsoft.entra.EntitlementManagementAccessPackageCatalogResource`
- `microsoft.entra.EntitlementManagementConnectedOrganization`
- `microsoft.entra.ExternalIdentityPolicy`
- `microsoft.entra.Group`
- `microsoft.entra.GroupLifecyclePolicy`
- `microsoft.entra.GroupsNamingPolicy`
- `microsoft.entra.GroupsSettings`
- `microsoft.entra.NamedLocationPolicy`
- `microsoft.entra.RoleDefinition`
- `microsoft.entra.RoleEligibilityScheduleRequest`
- `microsoft.entra.RoleSetting`
- `microsoft.entra.SecurityDefaults`
- `microsoft.entra.ServicePrincipal`
- `microsoft.entra.SocialIdentityProvider`
- `microsoft.entra.TenantDetails`
- `microsoft.entra.TokenLifetimePolicy`
- `microsoft.entra.User`

---

## MS Exchange Online

- `microsoft.exchange.AcceptedDomain`
- `microsoft.exchange.ActiveSyncDeviceAccessRule`
- `microsoft.exchange.AddressBookPolicy`
- `microsoft.exchange.AntiPhishPolicy`
- `microsoft.exchange.AntiPhishRule`
- `microsoft.exchange.ApplicationAccessPolicy`
- `microsoft.exchange.AtpPolicyForO365`
- `microsoft.exchange.AuthenticationPolicy`
- `microsoft.exchange.AuthenticationPolicyAssignment`
- `microsoft.exchange.AvailabilityAddressSpace`
- `microsoft.exchange.AvailabilityConfig`
- `microsoft.exchange.CalendarProcessing`
- `microsoft.exchange.CASMailboxPlan`
- `microsoft.exchange.CASMailboxSettings`
- `microsoft.exchange.DataClassification`
- `microsoft.exchange.DataEncryptionPolicy`
- `microsoft.exchange.DistributionGroup`
- `microsoft.exchange.DkimSigningConfig`
- `microsoft.exchange.EmailAddressPolicy`
- `microsoft.exchange.GroupSettings`
- `microsoft.exchange.HostedConnectionFilterPolicy`
- `microsoft.exchange.HostedContentFilterPolicy`
- `microsoft.exchange.HostedContentFilterRule`
- `microsoft.exchange.HostedOutboundSpamFilterPolicy`
- `microsoft.exchange.HostedOutboundSpamFilterRule`
- `microsoft.exchange.InboundConnector`
- `microsoft.exchange.IntraOrganizationConnector`
- `microsoft.exchange.IRMConfiguration`
- `microsoft.exchange.JournalRule`
- `microsoft.exchange.MailboxAutoReplyConfiguration`
- `microsoft.exchange.MailboxCalendarFolder`
- `microsoft.exchange.MailboxPermission`
- `microsoft.exchange.MailboxPlan`
- `microsoft.exchange.MailboxSettings`
- `microsoft.exchange.MailContact`
- `microsoft.exchange.MailTips`
- `microsoft.exchange.MalwareFilterPolicy`
- `microsoft.exchange.MalwareFilterRule`
- `microsoft.exchange.ManagementRole`
- `microsoft.exchange.ManagementRoleAssignment`
- `microsoft.exchange.MessageClassification`
- `microsoft.exchange.MobileDeviceMailboxPolicy`
- `microsoft.exchange.OMEConfiguration`
- `microsoft.exchange.OnPremisesOrganization`
- `microsoft.exchange.OrganizationConfig`
- `microsoft.exchange.OrganizationRelationship`
- `microsoft.exchange.OutboundConnector`
- `microsoft.exchange.OwaMailboxPolicy`
- `microsoft.exchange.PartnerApplication`
- `microsoft.exchange.PerimeterConfiguration`
- `microsoft.exchange.Place`
- `microsoft.exchange.PolicyTipConfig`
- `microsoft.exchange.QuarantinePolicy`
- `microsoft.exchange.RecipientPermission`
- `microsoft.exchange.RemoteDomain`
- `microsoft.exchange.ReportSubmissionPolicy`
- `microsoft.exchange.ReportSubmissionRule`
- `microsoft.exchange.ResourceConfiguration`
- `microsoft.exchange.RoleAssignmentPolicy`
- `microsoft.exchange.RoleGroup`
- `microsoft.exchange.SafeAttachmentPolicy`
- `microsoft.exchange.SafeAttachmentRule`
- `microsoft.exchange.SafeLinksPolicy`
- `microsoft.exchange.SafeLinksRule`
- `microsoft.exchange.SharedMailbox`
- `microsoft.exchange.SharingPolicy`
- `microsoft.exchange.TransportConfig`
- `microsoft.exchange.TransportRule`

---

## MS Intune

- `microsoft.intune.AccountProtectionLocalAdministratorPasswordSolutionPolicy`
- `microsoft.intune.AccountProtectionLocalUserGroupMembershipPolicy`
- `microsoft.intune.AccountProtectionPolicy`
- `microsoft.intune.AntivirusPolicyWindows10SettingCatalog`
- `microsoft.intune.AppConfigurationPolicy`
- `microsoft.intune.ApplicationControlPolicyWindows10`
- `microsoft.intune.AppProtectionPolicyAndroid`
- `microsoft.intune.AppProtectionPolicyiOS`
- `microsoft.intune.ASRRulesPolicyWindows10`
- `microsoft.intune.AttackSurfaceReductionRulesPolicyWindows10ConfigManager`
- `microsoft.intune.DeviceAndAppManagementAssignmentFilter`
- `microsoft.intune.DeviceCategory`
- `microsoft.intune.DeviceCleanupRule`
- `microsoft.intune.DeviceCompliancePolicyAndroid`
- `microsoft.intune.DeviceCompliancePolicyAndroidDeviceOwner`
- `microsoft.intune.DeviceCompliancePolicyAndroidWorkProfile`
- `microsoft.intune.DeviceCompliancePolicyiOs`
- `microsoft.intune.DeviceCompliancePolicyMacOS`
- `microsoft.intune.DeviceCompliancePolicyWindows10`
- `microsoft.intune.DeviceConfigurationAdministrativeTemplatePolicyWindows10`
- `microsoft.intune.DeviceConfigurationCustomPolicyWindows10`
- `microsoft.intune.DeviceConfigurationDefenderForEndpointOnboardingPolicyWindows10`
- `microsoft.intune.DeviceConfigurationDeliveryOptimizationPolicyWindows10`
- `microsoft.intune.DeviceConfigurationDomainJoinPolicyWindows10`
- `microsoft.intune.DeviceConfigurationEmailProfilePolicyWindows10`
- `microsoft.intune.DeviceConfigurationEndpointProtectionPolicyWindows10`
- `microsoft.intune.DeviceConfigurationFirmwareInterfacePolicyWindows10`
- `microsoft.intune.DeviceConfigurationHealthMonitoringConfigurationPolicyWindows10`
- `microsoft.intune.DeviceConfigurationIdentityProtectionPolicyWindows10`
- `microsoft.intune.DeviceConfigurationImportedPfxCertificatePolicyWindows10`
- `microsoft.intune.DeviceConfigurationKioskPolicyWindows10`
- `microsoft.intune.DeviceConfigurationNetworkBoundaryPolicyWindows10`
- `microsoft.intune.DeviceConfigurationPkcsCertificatePolicyWindows10`
- `microsoft.intune.DeviceConfigurationPolicyAndroidDeviceAdministrator`
- `microsoft.intune.DeviceConfigurationPolicyAndroidDeviceOwner`
- `microsoft.intune.DeviceConfigurationPolicyAndroidOpenSourceProject`
- `microsoft.intune.DeviceConfigurationPolicyAndroidWorkProfile`
- `microsoft.intune.DeviceConfigurationPolicyiOS`
- `microsoft.intune.DeviceConfigurationPolicyMacOS`
- `microsoft.intune.DeviceConfigurationPolicyWindows10`
- `microsoft.intune.DeviceConfigurationSCEPCertificatePolicyWindows10`
- `microsoft.intune.DeviceConfigurationSecureAssessmentPolicyWindows10`
- `microsoft.intune.DeviceConfigurationSharedMultiDevicePolicyWindows10`
- `microsoft.intune.DeviceConfigurationTrustedCertificatePolicyWindows10`
- `microsoft.intune.DeviceConfigurationVpnPolicyWindows10`
- `microsoft.intune.DeviceConfigurationWindowsTeamPolicyWindows10`
- `microsoft.intune.DeviceConfigurationWiredNetworkPolicyWindows10`
- `microsoft.intune.DeviceEnrollmentLimitRestriction`
- `microsoft.intune.DeviceEnrollmentPlatformRestriction`
- `microsoft.intune.DeviceEnrollmentStatusPageWindows10`
- `microsoft.intune.EndpointDetectionAndResponsePolicyWindows10`
- `microsoft.intune.ExploitProtectionPolicyWindows10SettingCatalog`
- `microsoft.intune.PolicySets`
- `microsoft.intune.RoleAssignment`
- `microsoft.intune.RoleDefinition`
- `microsoft.intune.SettingCatalogASRRulesPolicyWindows10`
- `microsoft.intune.SettingCatalogCustomPolicyWindows10`
- `microsoft.intune.WiFiConfigurationPolicyAndroidDeviceAdministrator`
- `microsoft.intune.WifiConfigurationPolicyAndroidEnterpriseDeviceOwner`
- `microsoft.intune.WifiConfigurationPolicyAndroidEnterpriseWorkProfile`
- `microsoft.intune.WifiConfigurationPolicyAndroidForWork`
- `microsoft.intune.WifiConfigurationPolicyAndroidOpenSourceProject`
- `microsoft.intune.WifiConfigurationPolicyIOS`
- `microsoft.intune.WifiConfigurationPolicyMacOS`
- `microsoft.intune.WifiConfigurationPolicyWindows10`
- `microsoft.intune.WindowsAutopilotDeploymentProfileAzureADHybridJoined`
- `microsoft.intune.WindowsAutopilotDeploymentProfileAzureADJoined`
- `microsoft.intune.WindowsInformationProtectionPolicyWindows10MdmEnrolled`
- `microsoft.intune.WindowsUpdateForBusinessFeatureUpdateProfileWindows10`
- `microsoft.intune.WindowsUpdateForBusinessRingUpdateProfileWindows10`

---

## MS Teams

- `microsoft.teams.AppPermissionPolicy`
- `microsoft.teams.AppSetupPolicy`
- `microsoft.teams.AudioConferencingPolicy`
- `microsoft.teams.CallHoldPolicy`
- `microsoft.teams.CallingPolicy`
- `microsoft.teams.CallParkPolicy`
- `microsoft.teams.CallQueue`
- `microsoft.teams.Channel`
- `microsoft.teams.ChannelsPolicy`
- `microsoft.teams.ChannelTab`
- `microsoft.teams.ClientConfiguration`
- `microsoft.teams.ComplianceRecordingPolicy`
- `microsoft.teams.CortanaPolicy`
- `microsoft.teams.DialInConferencingTenantSettings`
- `microsoft.teams.EmergencyCallingPolicy`
- `microsoft.teams.EmergencyCallRoutingPolicy`
- `microsoft.teams.EnhancedEncryptionPolicy`
- `microsoft.teams.EventsPolicy`
- `microsoft.teams.FederationConfiguration`
- `microsoft.teams.FeedbackPolicy`
- `microsoft.teams.FilesPolicy`
- `microsoft.teams.GroupPolicyAssignment`
- `microsoft.teams.GuestCallingConfiguration`
- `microsoft.teams.GuestMeetingConfiguration`
- `microsoft.teams.GuestMessagingConfiguration`
- `microsoft.teams.IPPhonePolicy`
- `microsoft.teams.MeetingBroadcastConfiguration`
- `microsoft.teams.MeetingBroadcastPolicy`
- `microsoft.teams.MeetingConfiguration`
- `microsoft.teams.MeetingPolicy`
- `microsoft.teams.MessagingPolicy`
- `microsoft.teams.MobilityPolicy`
- `microsoft.teams.NetworkRoamingPolicy`
- `microsoft.teams.OnlineVoicemailPolicy`
- `microsoft.teams.OnlineVoicemailUserSettings`
- `microsoft.teams.OnlineVoiceUser`
- `microsoft.teams.OrgWideAppSettings`
- `microsoft.teams.PstnUsage`
- `microsoft.teams.ShiftsPolicy`
- `microsoft.teams.Team`
- `microsoft.teams.TemplatesPolicy`
- `microsoft.teams.TenantDialPlan`
- `microsoft.teams.TenantNetworkRegion`
- `microsoft.teams.TenantNetworkSite`
- `microsoft.teams.TenantNetworkSubnet`
- `microsoft.teams.TenantTrustedIPAddress`
- `microsoft.teams.TranslationRule`
- `microsoft.teams.UnassignedNumberTreatment`
- `microsoft.teams.UpdateManagementPolicy`
- `microsoft.teams.UpgradeConfiguration`
- `microsoft.teams.UpgradePolicy`
- `microsoft.teams.User`
- `microsoft.teams.UserCallingSettings`
- `microsoft.teams.UserPolicyAssignment`
- `microsoft.teams.VdiPolicy`
- `microsoft.teams.VoiceRoute`
- `microsoft.teams.VoiceRoutingPolicy`
- `microsoft.teams.WorkloadPolicy`

---

## S&C

- `SCAuditConfigurationPolicy`
- `SCAutoSensitivityLabelPolicy`
- `SCAutoSensitivityLabelRule`
- `SCCaseHoldPolicy`
- `SCCaseHoldRule`
- `SCComplianceCase`
- `SCComplianceSearch`
- `SCComplianceSearchAction`
- `SCComplianceTag`
- `SCDeviceConditionalAccessPolicy`
- `SCDeviceConfigurationPolicy`
- `SCDLPCompliancePolicy`
- `SCDLPComplianceRule`
- `SCFilePlanPropertyAuthority`
- `SCFilePlanPropertyCategory`
- `SCFilePlanPropertyCitation`
- `SCFilePlanPropertyDepartment`
- `SCFilePlanPropertyReferenceId`
- `SCFilePlanPropertySubCategory`
- `SCLabelPolicy`
- `SCProtectionAlert`
- `SCRetentionCompliancePolicy`
- `SCRetentionComplianceRule`
- `SCRetentionEventType`
- `SCSecurityFilter`
- `SCSensitivityLabel`
- `SCSupervisoryReviewPolicy`
- `SCSupervisoryReviewRule`

---

## SharePoint

- `microsoft.sharepoint.AccessControlSettings`
- `microsoft.sharepoint.App`
- `microsoft.sharepoint.BrowserIdleSignout`
- `microsoft.sharepoint.HomeSite`
- `microsoft.sharepoint.HubSite`
- `microsoft.sharepoint.OrgAssetsLibrary`
- `microsoft.sharepoint.PropertyBag`
- `microsoft.sharepoint.SearchManagedProperty`
- `microsoft.sharepoint.SearchResultSource`
- `microsoft.sharepoint.SharingSettings`
- `microsoft.sharepoint.Site`
- `microsoft.sharepoint.SiteAuditSettings`
- `microsoft.sharepoint.SiteDesign`
- `microsoft.sharepoint.SiteDesignRights`
- `microsoft.sharepoint.SiteGroup`
- `microsoft.sharepoint.SiteScript`
- `microsoft.sharepoint.StorageEntity`
- `microsoft.sharepoint.TenantCdnEnabled`
- `microsoft.sharepoint.TenantCdnPolicy`
- `microsoft.sharepoint.TenantSettings`
- `microsoft.sharepoint.Theme`
- `microsoft.sharepoint.UserProfileProperty`

---

## OneDrive

- `microsoft.onedrive.Settings`
