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


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

compliantAppsList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetCompliantAppsList(compliantAppsList)
compliantAppListType := graphmodels.APPSINLISTCOMPLIANT_APPLISTTYPE 
requestBody.SetCompliantAppListType(&compliantAppListType) 
emailInDomainSuffixes := []string {
	"Email In Domain Suffixes value",
}
requestBody.SetEmailInDomainSuffixes(emailInDomainSuffixes)
passwordBlockSimple := true
requestBody.SetPasswordBlockSimple(&passwordBlockSimple) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumCharacterSetCount := int32(0)
requestBody.SetPasswordMinimumCharacterSetCount(&passwordMinimumCharacterSetCount) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasswordMinutesOfInactivityBeforeLock(&passwordMinutesOfInactivityBeforeLock) 
passwordMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasswordMinutesOfInactivityBeforeScreenTimeout(&passwordMinutesOfInactivityBeforeScreenTimeout) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordRequired := true
requestBody.SetPasswordRequired(&passwordRequired) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```