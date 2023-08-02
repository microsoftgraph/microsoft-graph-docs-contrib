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


requestBody := graphmodels.NewDeviceManagement()
intuneBrand := graphmodels.NewIntuneBrand()
displayName := "Display Name value"
intuneBrand.SetDisplayName(&displayName) 
themeColor := graphmodels.NewRgbColor()
r := int32(1)
themeColor.SetR(&r) 
g := int32(1)
themeColor.SetG(&g) 
b := int32(1)
themeColor.SetB(&b) 
intuneBrand.SetThemeColor(themeColor)
showLogo := true
intuneBrand.SetShowLogo(&showLogo) 
lightBackgroundLogo := graphmodels.NewMimeContent()
type := "Type value"
lightBackgroundLogo.SetType(&type) 
value := []byte("dmFsdWU=")
lightBackgroundLogo.SetValue(&value) 
intuneBrand.SetLightBackgroundLogo(lightBackgroundLogo)
darkBackgroundLogo := graphmodels.NewMimeContent()
type := "Type value"
darkBackgroundLogo.SetType(&type) 
value := []byte("dmFsdWU=")
darkBackgroundLogo.SetValue(&value) 
intuneBrand.SetDarkBackgroundLogo(darkBackgroundLogo)
showNameNextToLogo := true
intuneBrand.SetShowNameNextToLogo(&showNameNextToLogo) 
showDisplayNameNextToLogo := true
intuneBrand.SetShowDisplayNameNextToLogo(&showDisplayNameNextToLogo) 
contactITName := "Contact ITName value"
intuneBrand.SetContactITName(&contactITName) 
contactITPhoneNumber := "Contact ITPhone Number value"
intuneBrand.SetContactITPhoneNumber(&contactITPhoneNumber) 
contactITEmailAddress := "Contact ITEmail Address value"
intuneBrand.SetContactITEmailAddress(&contactITEmailAddress) 
contactITNotes := "Contact ITNotes value"
intuneBrand.SetContactITNotes(&contactITNotes) 
onlineSupportSiteUrl := "https://example.com/onlineSupportSiteUrl/"
intuneBrand.SetOnlineSupportSiteUrl(&onlineSupportSiteUrl) 
onlineSupportSiteName := "Online Support Site Name value"
intuneBrand.SetOnlineSupportSiteName(&onlineSupportSiteName) 
privacyUrl := "https://example.com/privacyUrl/"
intuneBrand.SetPrivacyUrl(&privacyUrl) 
requestBody.SetIntuneBrand(intuneBrand)

result, err := graphClient.DeviceManagement().Patch(context.Background(), requestBody, nil)


```