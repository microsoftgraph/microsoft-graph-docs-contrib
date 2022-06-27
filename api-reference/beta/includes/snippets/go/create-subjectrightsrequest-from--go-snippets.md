---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSubjectRightsRequest()
type := "export"
requestBody.SetType(&type)
contentQuery := "(("Diego Siciliani" OR "Diego.Siciliani@contoso.com") OR (participants:"Diego.Siciliani@contoso.com"))"
requestBody.SetContentQuery(&contentQuery)
dataSubjectType := "customer"
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
internalDueDateTime, err := time.Parse(time.RFC3339, "2022-07-20T22:42:28Z")
requestBody.SetInternalDueDateTime(&internalDueDateTime)
dataSubject := msgraphsdk.NewDataSubject()
requestBody.SetDataSubject(dataSubject)
firstName := "Diego"
dataSubject.SetFirstName(&firstName)
lastName := "Siciliani"
dataSubject.SetLastName(&lastName)
email := "Diego.Siciliani@contoso.com"
dataSubject.SetEmail(&email)
residency := "USA"
dataSubject.SetResidency(&residency)
requestBody.SetMailboxLocations(nil)
pauseAfterEstimate := true
requestBody.SetPauseAfterEstimate(&pauseAfterEstimate)
requestBody.SetRegulations( []String {
	"CCPA",
}
siteLocations := msgraphsdk.NewSubjectRightsRequestSiteLocation()
requestBody.SetSiteLocations(siteLocations)
siteLocations.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.subjectRightsRequestAllSiteLocation",
}
result, err := graphClient.Privacy().SubjectRightsRequests().Post(requestBody)


```