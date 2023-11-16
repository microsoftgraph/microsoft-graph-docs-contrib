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


requestBody := graphmodels.NewMobileApp()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
largeIcon := graphmodels.NewMimeContent()
type := "Type value"
largeIcon.SetType(&type) 
value := []byte("dmFsdWU=")
largeIcon.SetValue(&value) 
requestBody.SetLargeIcon(largeIcon)
isFeatured := true
requestBody.SetIsFeatured(&isFeatured) 
privacyInformationUrl := "https://example.com/privacyInformationUrl/"
requestBody.SetPrivacyInformationUrl(&privacyInformationUrl) 
informationUrl := "https://example.com/informationUrl/"
requestBody.SetInformationUrl(&informationUrl) 
owner := "Owner value"
requestBody.SetOwner(&owner) 
developer := "Developer value"
requestBody.SetDeveloper(&developer) 
notes := "Notes value"
requestBody.SetNotes(&notes) 
publishingState := graphmodels.PROCESSING_MOBILEAPPPUBLISHINGSTATE 
requestBody.SetPublishingState(&publishingState) 
usedLicenseCount := int32(0)
requestBody.SetUsedLicenseCount(&usedLicenseCount) 
totalLicenseCount := int32(1)
requestBody.SetTotalLicenseCount(&totalLicenseCount) 
releaseDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:01:34.7470482-08:00")
requestBody.SetReleaseDateTime(&releaseDateTime) 
appStoreUrl := "https://example.com/appStoreUrl/"
requestBody.SetAppStoreUrl(&appStoreUrl) 
licensingType := graphmodels.NewVppLicensingType()
supportsUserLicensing := true
licensingType.SetSupportsUserLicensing(&supportsUserLicensing) 
supportsDeviceLicensing := true
licensingType.SetSupportsDeviceLicensing(&supportsDeviceLicensing) 
requestBody.SetLicensingType(licensingType)
applicableDeviceType := graphmodels.NewIosDeviceType()
iPad := true
applicableDeviceType.SetIPad(&iPad) 
iPhoneAndIPod := true
applicableDeviceType.SetIPhoneAndIPod(&iPhoneAndIPod) 
requestBody.SetApplicableDeviceType(applicableDeviceType)
vppTokenOrganizationName := "Vpp Token Organization Name value"
requestBody.SetVppTokenOrganizationName(&vppTokenOrganizationName) 
vppTokenAccountType := graphmodels.EDUCATION_VPPTOKENACCOUNTTYPE 
requestBody.SetVppTokenAccountType(&vppTokenAccountType) 
vppTokenAppleId := "Vpp Token Apple Id value"
requestBody.SetVppTokenAppleId(&vppTokenAppleId) 
bundleId := "Bundle Id value"
requestBody.SetBundleId(&bundleId) 

mobileApps, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```