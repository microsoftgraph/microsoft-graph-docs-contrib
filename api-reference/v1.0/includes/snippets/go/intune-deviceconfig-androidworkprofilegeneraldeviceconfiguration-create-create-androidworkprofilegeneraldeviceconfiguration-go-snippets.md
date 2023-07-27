---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
passwordBlockFingerprintUnlock := true
requestBody.SetPasswordBlockFingerprintUnlock(&passwordBlockFingerprintUnlock) 
passwordBlockTrustAgents := true
requestBody.SetPasswordBlockTrustAgents(&passwordBlockTrustAgents) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasswordMinutesOfInactivityBeforeScreenTimeout(&passwordMinutesOfInactivityBeforeScreenTimeout) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordSignInFailureCountBeforeFactoryReset := int32(12)
requestBody.SetPasswordSignInFailureCountBeforeFactoryReset(&passwordSignInFailureCountBeforeFactoryReset) 
passwordRequiredType := graphmodels.LOWSECURITYBIOMETRIC_ANDROIDWORKPROFILEREQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
workProfileDataSharingType := graphmodels.PREVENTANY_ANDROIDWORKPROFILECROSSPROFILEDATASHARINGTYPE 
requestBody.SetWorkProfileDataSharingType(&workProfileDataSharingType) 
workProfileBlockNotificationsWhileDeviceLocked := true
requestBody.SetWorkProfileBlockNotificationsWhileDeviceLocked(&workProfileBlockNotificationsWhileDeviceLocked) 
workProfileBlockAddingAccounts := true
requestBody.SetWorkProfileBlockAddingAccounts(&workProfileBlockAddingAccounts) 
workProfileBluetoothEnableContactSharing := true
requestBody.SetWorkProfileBluetoothEnableContactSharing(&workProfileBluetoothEnableContactSharing) 
workProfileBlockScreenCapture := true
requestBody.SetWorkProfileBlockScreenCapture(&workProfileBlockScreenCapture) 
workProfileBlockCrossProfileCallerId := true
requestBody.SetWorkProfileBlockCrossProfileCallerId(&workProfileBlockCrossProfileCallerId) 
workProfileBlockCamera := true
requestBody.SetWorkProfileBlockCamera(&workProfileBlockCamera) 
workProfileBlockCrossProfileContactsSearch := true
requestBody.SetWorkProfileBlockCrossProfileContactsSearch(&workProfileBlockCrossProfileContactsSearch) 
workProfileBlockCrossProfileCopyPaste := true
requestBody.SetWorkProfileBlockCrossProfileCopyPaste(&workProfileBlockCrossProfileCopyPaste) 
workProfileDefaultAppPermissionPolicy := graphmodels.PROMPT_ANDROIDWORKPROFILEDEFAULTAPPPERMISSIONPOLICYTYPE 
requestBody.SetWorkProfileDefaultAppPermissionPolicy(&workProfileDefaultAppPermissionPolicy) 
workProfilePasswordBlockFingerprintUnlock := true
requestBody.SetWorkProfilePasswordBlockFingerprintUnlock(&workProfilePasswordBlockFingerprintUnlock) 
workProfilePasswordBlockTrustAgents := true
requestBody.SetWorkProfilePasswordBlockTrustAgents(&workProfilePasswordBlockTrustAgents) 
workProfilePasswordExpirationDays := int32(1)
requestBody.SetWorkProfilePasswordExpirationDays(&workProfilePasswordExpirationDays) 
workProfilePasswordMinimumLength := int32(0)
requestBody.SetWorkProfilePasswordMinimumLength(&workProfilePasswordMinimumLength) 
workProfilePasswordMinNumericCharacters := int32(7)
requestBody.SetWorkProfilePasswordMinNumericCharacters(&workProfilePasswordMinNumericCharacters) 
workProfilePasswordMinNonLetterCharacters := int32(9)
requestBody.SetWorkProfilePasswordMinNonLetterCharacters(&workProfilePasswordMinNonLetterCharacters) 
workProfilePasswordMinLetterCharacters := int32(6)
requestBody.SetWorkProfilePasswordMinLetterCharacters(&workProfilePasswordMinLetterCharacters) 
workProfilePasswordMinLowerCaseCharacters := int32(9)
requestBody.SetWorkProfilePasswordMinLowerCaseCharacters(&workProfilePasswordMinLowerCaseCharacters) 
workProfilePasswordMinUpperCaseCharacters := int32(9)
requestBody.SetWorkProfilePasswordMinUpperCaseCharacters(&workProfilePasswordMinUpperCaseCharacters) 
workProfilePasswordMinSymbolCharacters := int32(6)
requestBody.SetWorkProfilePasswordMinSymbolCharacters(&workProfilePasswordMinSymbolCharacters) 
workProfilePasswordMinutesOfInactivityBeforeScreenTimeout := int32(9)
requestBody.SetWorkProfilePasswordMinutesOfInactivityBeforeScreenTimeout(&workProfilePasswordMinutesOfInactivityBeforeScreenTimeout) 
workProfilePasswordPreviousPasswordBlockCount := int32(13)
requestBody.SetWorkProfilePasswordPreviousPasswordBlockCount(&workProfilePasswordPreviousPasswordBlockCount) 
workProfilePasswordSignInFailureCountBeforeFactoryReset := int32(7)
requestBody.SetWorkProfilePasswordSignInFailureCountBeforeFactoryReset(&workProfilePasswordSignInFailureCountBeforeFactoryReset) 
workProfilePasswordRequiredType := graphmodels.LOWSECURITYBIOMETRIC_ANDROIDWORKPROFILEREQUIREDPASSWORDTYPE 
requestBody.SetWorkProfilePasswordRequiredType(&workProfilePasswordRequiredType) 
workProfileRequirePassword := true
requestBody.SetWorkProfileRequirePassword(&workProfileRequirePassword) 
securityRequireVerifyApps := true
requestBody.SetSecurityRequireVerifyApps(&securityRequireVerifyApps) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```