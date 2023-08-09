---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewManagedDevice()
userId := "User Id value"
requestBody.SetUserId(&userId) 
deviceName := "Device Name value"
requestBody.SetDeviceName(&deviceName) 
managedDeviceOwnerType := graphmodels.COMPANY_MANAGEDDEVICEOWNERTYPE 
requestBody.SetManagedDeviceOwnerType(&managedDeviceOwnerType) 


deviceActionResult := graphmodels.NewDeviceActionResult()
actionName := "Action Name value"
deviceActionResult.SetActionName(&actionName) 
actionState := graphmodels.PENDING_ACTIONSTATE 
deviceActionResult.SetActionState(&actionState) 
startDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:46.7156189-08:00")
deviceActionResult.SetStartDateTime(&startDateTime) 
lastUpdatedDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:56.8321556-08:00")
deviceActionResult.SetLastUpdatedDateTime(&lastUpdatedDateTime) 

deviceActionResults := []graphmodels.DeviceActionResultable {
	deviceActionResult,
}
requestBody.SetDeviceActionResults(deviceActionResults)
enrolledDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:43.797191-08:00")
requestBody.SetEnrolledDateTime(&enrolledDateTime) 
lastSyncDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:49.3205976-08:00")
requestBody.SetLastSyncDateTime(&lastSyncDateTime) 
operatingSystem := "Operating System value"
requestBody.SetOperatingSystem(&operatingSystem) 
complianceState := graphmodels.COMPLIANT_COMPLIANCESTATE 
requestBody.SetComplianceState(&complianceState) 
jailBroken := "Jail Broken value"
requestBody.SetJailBroken(&jailBroken) 
managementAgent := graphmodels.MDM_MANAGEMENTAGENTTYPE 
requestBody.SetManagementAgent(&managementAgent) 
osVersion := "Os Version value"
requestBody.SetOsVersion(&osVersion) 
easActivated := true
requestBody.SetEasActivated(&easActivated) 
easDeviceId := "Eas Device Id value"
requestBody.SetEasDeviceId(&easDeviceId) 
easActivationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:43.4878784-08:00")
requestBody.SetEasActivationDateTime(&easActivationDateTime) 
azureADRegistered := true
requestBody.SetAzureADRegistered(&azureADRegistered) 
deviceEnrollmentType := graphmodels.USERENROLLMENT_DEVICEENROLLMENTTYPE 
requestBody.SetDeviceEnrollmentType(&deviceEnrollmentType) 
activationLockBypassCode := "Activation Lock Bypass Code value"
requestBody.SetActivationLockBypassCode(&activationLockBypassCode) 
emailAddress := "Email Address value"
requestBody.SetEmailAddress(&emailAddress) 
azureADDeviceId := "Azure ADDevice Id value"
requestBody.SetAzureADDeviceId(&azureADDeviceId) 
deviceRegistrationState := graphmodels.REGISTERED_DEVICEREGISTRATIONSTATE 
requestBody.SetDeviceRegistrationState(&deviceRegistrationState) 
deviceCategoryDisplayName := "Device Category Display Name value"
requestBody.SetDeviceCategoryDisplayName(&deviceCategoryDisplayName) 
isSupervised := true
requestBody.SetIsSupervised(&isSupervised) 
exchangeLastSuccessfulSyncDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:45.8803083-08:00")
requestBody.SetExchangeLastSuccessfulSyncDateTime(&exchangeLastSuccessfulSyncDateTime) 
exchangeAccessState := graphmodels.UNKNOWN_DEVICEMANAGEMENTEXCHANGEACCESSSTATE 
requestBody.SetExchangeAccessState(&exchangeAccessState) 
exchangeAccessStateReason := graphmodels.UNKNOWN_DEVICEMANAGEMENTEXCHANGEACCESSSTATEREASON 
requestBody.SetExchangeAccessStateReason(&exchangeAccessStateReason) 
remoteAssistanceSessionUrl := "https://example.com/remoteAssistanceSessionUrl/"
requestBody.SetRemoteAssistanceSessionUrl(&remoteAssistanceSessionUrl) 
remoteAssistanceSessionErrorDetails := "Remote Assistance Session Error Details value"
requestBody.SetRemoteAssistanceSessionErrorDetails(&remoteAssistanceSessionErrorDetails) 
isEncrypted := true
requestBody.SetIsEncrypted(&isEncrypted) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
model := "Model value"
requestBody.SetModel(&model) 
manufacturer := "Manufacturer value"
requestBody.SetManufacturer(&manufacturer) 
imei := "Imei value"
requestBody.SetImei(&imei) 
complianceGracePeriodExpirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:56:44.951111-08:00")
requestBody.SetComplianceGracePeriodExpirationDateTime(&complianceGracePeriodExpirationDateTime) 
serialNumber := "Serial Number value"
requestBody.SetSerialNumber(&serialNumber) 
phoneNumber := "Phone Number value"
requestBody.SetPhoneNumber(&phoneNumber) 
androidSecurityPatchLevel := "Android Security Patch Level value"
requestBody.SetAndroidSecurityPatchLevel(&androidSecurityPatchLevel) 
userDisplayName := "User Display Name value"
requestBody.SetUserDisplayName(&userDisplayName) 
configurationManagerClientEnabledFeatures := graphmodels.NewConfigurationManagerClientEnabledFeatures()
inventory := true
configurationManagerClientEnabledFeatures.SetInventory(&inventory) 
modernApps := true
configurationManagerClientEnabledFeatures.SetModernApps(&modernApps) 
resourceAccess := true
configurationManagerClientEnabledFeatures.SetResourceAccess(&resourceAccess) 
deviceConfiguration := true
configurationManagerClientEnabledFeatures.SetDeviceConfiguration(&deviceConfiguration) 
compliancePolicy := true
configurationManagerClientEnabledFeatures.SetCompliancePolicy(&compliancePolicy) 
windowsUpdateForBusiness := true
configurationManagerClientEnabledFeatures.SetWindowsUpdateForBusiness(&windowsUpdateForBusiness) 
requestBody.SetConfigurationManagerClientEnabledFeatures(configurationManagerClientEnabledFeatures)
wiFiMacAddress := "Wi Fi Mac Address value"
requestBody.SetWiFiMacAddress(&wiFiMacAddress) 
deviceHealthAttestationState := graphmodels.NewDeviceHealthAttestationState()
lastUpdateDateTime := "Last Update Date Time value"
deviceHealthAttestationState.SetLastUpdateDateTime(&lastUpdateDateTime) 
contentNamespaceUrl := "https://example.com/contentNamespaceUrl/"
deviceHealthAttestationState.SetContentNamespaceUrl(&contentNamespaceUrl) 
deviceHealthAttestationStatus := "Device Health Attestation Status value"
deviceHealthAttestationState.SetDeviceHealthAttestationStatus(&deviceHealthAttestationStatus) 
contentVersion := "Content Version value"
deviceHealthAttestationState.SetContentVersion(&contentVersion) 
issuedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:22.1231038-08:00")
deviceHealthAttestationState.SetIssuedDateTime(&issuedDateTime) 
attestationIdentityKey := "Attestation Identity Key value"
deviceHealthAttestationState.SetAttestationIdentityKey(&attestationIdentityKey) 
resetCount := int64(10)
deviceHealthAttestationState.SetResetCount(&resetCount) 
restartCount := int64(12)
deviceHealthAttestationState.SetRestartCount(&restartCount) 
dataExcutionPolicy := "Data Excution Policy value"
deviceHealthAttestationState.SetDataExcutionPolicy(&dataExcutionPolicy) 
bitLockerStatus := "Bit Locker Status value"
deviceHealthAttestationState.SetBitLockerStatus(&bitLockerStatus) 
bootManagerVersion := "Boot Manager Version value"
deviceHealthAttestationState.SetBootManagerVersion(&bootManagerVersion) 
codeIntegrityCheckVersion := "Code Integrity Check Version value"
deviceHealthAttestationState.SetCodeIntegrityCheckVersion(&codeIntegrityCheckVersion) 
secureBoot := "Secure Boot value"
deviceHealthAttestationState.SetSecureBoot(&secureBoot) 
bootDebugging := "Boot Debugging value"
deviceHealthAttestationState.SetBootDebugging(&bootDebugging) 
operatingSystemKernelDebugging := "Operating System Kernel Debugging value"
deviceHealthAttestationState.SetOperatingSystemKernelDebugging(&operatingSystemKernelDebugging) 
codeIntegrity := "Code Integrity value"
deviceHealthAttestationState.SetCodeIntegrity(&codeIntegrity) 
testSigning := "Test Signing value"
deviceHealthAttestationState.SetTestSigning(&testSigning) 
safeMode := "Safe Mode value"
deviceHealthAttestationState.SetSafeMode(&safeMode) 
windowsPE := "Windows PE value"
deviceHealthAttestationState.SetWindowsPE(&windowsPE) 
earlyLaunchAntiMalwareDriverProtection := "Early Launch Anti Malware Driver Protection value"
deviceHealthAttestationState.SetEarlyLaunchAntiMalwareDriverProtection(&earlyLaunchAntiMalwareDriverProtection) 
virtualSecureMode := "Virtual Secure Mode value"
deviceHealthAttestationState.SetVirtualSecureMode(&virtualSecureMode) 
pcrHashAlgorithm := "Pcr Hash Algorithm value"
deviceHealthAttestationState.SetPcrHashAlgorithm(&pcrHashAlgorithm) 
bootAppSecurityVersion := "Boot App Security Version value"
deviceHealthAttestationState.SetBootAppSecurityVersion(&bootAppSecurityVersion) 
bootManagerSecurityVersion := "Boot Manager Security Version value"
deviceHealthAttestationState.SetBootManagerSecurityVersion(&bootManagerSecurityVersion) 
tpmVersion := "Tpm Version value"
deviceHealthAttestationState.SetTpmVersion(&tpmVersion) 
pcr0 := "Pcr0 value"
deviceHealthAttestationState.SetPcr0(&pcr0) 
secureBootConfigurationPolicyFingerPrint := "Secure Boot Configuration Policy Finger Print value"
deviceHealthAttestationState.SetSecureBootConfigurationPolicyFingerPrint(&secureBootConfigurationPolicyFingerPrint) 
codeIntegrityPolicy := "Code Integrity Policy value"
deviceHealthAttestationState.SetCodeIntegrityPolicy(&codeIntegrityPolicy) 
bootRevisionListInfo := "Boot Revision List Info value"
deviceHealthAttestationState.SetBootRevisionListInfo(&bootRevisionListInfo) 
operatingSystemRevListInfo := "Operating System Rev List Info value"
deviceHealthAttestationState.SetOperatingSystemRevListInfo(&operatingSystemRevListInfo) 
healthStatusMismatchInfo := "Health Status Mismatch Info value"
deviceHealthAttestationState.SetHealthStatusMismatchInfo(&healthStatusMismatchInfo) 
healthAttestationSupportedStatus := "Health Attestation Supported Status value"
deviceHealthAttestationState.SetHealthAttestationSupportedStatus(&healthAttestationSupportedStatus) 
requestBody.SetDeviceHealthAttestationState(deviceHealthAttestationState)
subscriberCarrier := "Subscriber Carrier value"
requestBody.SetSubscriberCarrier(&subscriberCarrier) 
meid := "Meid value"
requestBody.SetMeid(&meid) 
totalStorageSpaceInBytes := int64(8)
requestBody.SetTotalStorageSpaceInBytes(&totalStorageSpaceInBytes) 
freeStorageSpaceInBytes := int64(7)
requestBody.SetFreeStorageSpaceInBytes(&freeStorageSpaceInBytes) 
managedDeviceName := "Managed Device Name value"
requestBody.SetManagedDeviceName(&managedDeviceName) 
partnerReportedThreatState := graphmodels.ACTIVATED_MANAGEDDEVICEPARTNERREPORTEDHEALTHSTATE 
requestBody.SetPartnerReportedThreatState(&partnerReportedThreatState) 
requireUserEnrollmentApproval := true
requestBody.SetRequireUserEnrollmentApproval(&requireUserEnrollmentApproval) 
managementCertificateExpirationDate , err := time.Parse(time.RFC3339, "2016-12-31T23:57:59.9789653-08:00")
requestBody.SetManagementCertificateExpirationDate(&managementCertificateExpirationDate) 
iccid := "Iccid value"
requestBody.SetIccid(&iccid) 
udid := "Udid value"
requestBody.SetUdid(&udid) 
notes := "Notes value"
requestBody.SetNotes(&notes) 
ethernetMacAddress := "Ethernet Mac Address value"
requestBody.SetEthernetMacAddress(&ethernetMacAddress) 
physicalMemoryInBytes := int64(5)
requestBody.SetPhysicalMemoryInBytes(&physicalMemoryInBytes) 

managedDevices, err := graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").Patch(context.Background(), requestBody, nil)


```