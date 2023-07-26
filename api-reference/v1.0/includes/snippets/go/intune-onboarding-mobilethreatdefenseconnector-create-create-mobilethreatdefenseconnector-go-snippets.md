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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobileThreatDefenseConnector()
lastHeartbeatDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:37.9174975-08:00")
requestBody.SetLastHeartbeatDateTime(&lastHeartbeatDateTime) 
partnerState := graphmodels.AVAILABLE_MOBILETHREATPARTNERTENANTSTATE 
requestBody.SetPartnerState(&partnerState) 
androidMobileApplicationManagementEnabled := true
requestBody.SetAndroidMobileApplicationManagementEnabled(&androidMobileApplicationManagementEnabled) 
iosMobileApplicationManagementEnabled := true
requestBody.SetIosMobileApplicationManagementEnabled(&iosMobileApplicationManagementEnabled) 
androidEnabled := true
requestBody.SetAndroidEnabled(&androidEnabled) 
iosEnabled := true
requestBody.SetIosEnabled(&iosEnabled) 
windowsEnabled := true
requestBody.SetWindowsEnabled(&windowsEnabled) 
androidDeviceBlockedOnMissingPartnerData := true
requestBody.SetAndroidDeviceBlockedOnMissingPartnerData(&androidDeviceBlockedOnMissingPartnerData) 
iosDeviceBlockedOnMissingPartnerData := true
requestBody.SetIosDeviceBlockedOnMissingPartnerData(&iosDeviceBlockedOnMissingPartnerData) 
windowsDeviceBlockedOnMissingPartnerData := true
requestBody.SetWindowsDeviceBlockedOnMissingPartnerData(&windowsDeviceBlockedOnMissingPartnerData) 
partnerUnsupportedOsVersionBlocked := true
requestBody.SetPartnerUnsupportedOsVersionBlocked(&partnerUnsupportedOsVersionBlocked) 
partnerUnresponsivenessThresholdInDays := int32(6)
requestBody.SetPartnerUnresponsivenessThresholdInDays(&partnerUnresponsivenessThresholdInDays) 
allowPartnerToCollectIOSApplicationMetadata := true
requestBody.SetAllowPartnerToCollectIOSApplicationMetadata(&allowPartnerToCollectIOSApplicationMetadata) 
allowPartnerToCollectIOSPersonalApplicationMetadata := true
requestBody.SetAllowPartnerToCollectIOSPersonalApplicationMetadata(&allowPartnerToCollectIOSPersonalApplicationMetadata) 
microsoftDefenderForEndpointAttachEnabled := true
requestBody.SetMicrosoftDefenderForEndpointAttachEnabled(&microsoftDefenderForEndpointAttachEnabled) 

result, err := graphClient.DeviceManagement().MobileThreatDefenseConnectors().Post(context.Background(), requestBody, nil)


```