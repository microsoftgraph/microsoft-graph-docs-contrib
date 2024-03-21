---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewManagedEBook()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
publishedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:16.1180489-08:00")
requestBody.SetPublishedDateTime(&publishedDateTime) 
largeCover := graphmodels.NewMimeContent()
type := "Type value"
largeCover.SetType(&type) 
value := []byte("dmFsdWU=")
largeCover.SetValue(&value) 
requestBody.SetLargeCover(largeCover)
informationUrl := "https://example.com/informationUrl/"
requestBody.SetInformationUrl(&informationUrl) 
privacyInformationUrl := "https://example.com/privacyInformationUrl/"
requestBody.SetPrivacyInformationUrl(&privacyInformationUrl) 
vppTokenId := uuid.MustParse("9148ac60-ac60-9148-60ac-489160ac4891")
requestBody.SetVppTokenId(&vppTokenId) 
appleId := "Apple Id value"
requestBody.SetAppleId(&appleId) 
vppOrganizationName := "Vpp Organization Name value"
requestBody.SetVppOrganizationName(&vppOrganizationName) 
genres := []string {
	"Genres value",
}
requestBody.SetGenres(genres)
language := "Language value"
requestBody.SetLanguage(&language) 
seller := "Seller value"
requestBody.SetSeller(&seller) 
totalLicenseCount := int32(1)
requestBody.SetTotalLicenseCount(&totalLicenseCount) 
usedLicenseCount := int32(0)
requestBody.SetUsedLicenseCount(&usedLicenseCount) 

managedEBooks, err := graphClient.DeviceAppManagement().ManagedEBooks().Post(context.Background(), requestBody, nil)


```