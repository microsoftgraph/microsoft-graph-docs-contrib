---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSubjectRightsRequest()
type := "microsoft.graph.subjectRightsRequestType"
requestBody.SetType(&type)
dataSubjectType := "microsoft.graph.dataSubjectType"
requestBody.SetDataSubjectType(&dataSubjectType)
requestBody.SetRegulations( []String {
	"String",
}
displayName := "String"
requestBody.SetDisplayName(&displayName)
description := "String"
requestBody.SetDescription(&description)
internalDueDateTime, err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetInternalDueDateTime(&internalDueDateTime)
dataSubject := msgraphsdk.NewDataSubject()
requestBody.SetDataSubject(dataSubject)
firstName := "String"
dataSubject.SetFirstName(&firstName)
lastName := "String"
dataSubject.SetLastName(&lastName)
email := "String"
dataSubject.SetEmail(&email)
residency := "String"
dataSubject.SetResidency(&residency)
dataSubject.SetAdditionalData(map[string]interface{}{
	"phoneNumber": "String",
	"SSN": "String",
}
options := &msgraphsdk.SubjectRightsRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Privacy().SubjectRightsRequests().Post(options)


```