---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubjectRightsRequest()
type := graphmodels.EXPORT_SUBJECTRIGHTSREQUESTTYPE 
requestBody.SetType(&type) 
contentQuery := "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))"
requestBody.SetContentQuery(&contentQuery) 
dataSubjectType := graphmodels.CUSTOMER_DATASUBJECTTYPE 
requestBody.SetDataSubjectType(&dataSubjectType) 
externalId := "F53BF2DA-607D-412A-B568-FAA0F023AC0B"
requestBody.SetExternalId(&externalId) 
displayName := "Export report for customer Id: 12345"
requestBody.SetDisplayName(&displayName) 
description := "This is a export request"
requestBody.SetDescription(&description) 
includeAllVersions := false
requestBody.SetIncludeAllVersions(&includeAllVersions) 
includeAuthoredContent := true
requestBody.SetIncludeAuthoredContent(&includeAuthoredContent) 
internalDueDateTime , err := time.Parse(time.RFC3339, "2022-07-20T22:42:28Z")
requestBody.SetInternalDueDateTime(&internalDueDateTime) 
dataSubject := graphmodels.NewDataSubject()
firstName := "Diego"
dataSubject.SetFirstName(&firstName) 
lastName := "Siciliani"
dataSubject.SetLastName(&lastName) 
email := "Diego.Siciliani@contoso.com"
dataSubject.SetEmail(&email) 
residency := "USA"
dataSubject.SetResidency(&residency) 
requestBody.SetDataSubject(dataSubject)
mailboxLocations := null
requestBody.SetMailboxLocations(&mailboxLocations) 
pauseAfterEstimate := true
requestBody.SetPauseAfterEstimate(&pauseAfterEstimate) 
regulations := []string {
	"CCPA",

}
requestBody.SetRegulations(regulations)
siteLocations := graphmodels.NewSubjectRightsRequestSiteLocation()
requestBody.SetSiteLocations(siteLocations)


user := graphmodels.NewUser()
id := "1B761ED2-AA7E-4D82-9CF5-C09D737B6167"
user.SetId(&id) 

approvers := []graphmodels.Userable {
	user,

}
requestBody.SetApprovers(approvers)

result, err := graphClient.Privacy().SubjectRightsRequests().Post(context.Background(), requestBody, nil)


```