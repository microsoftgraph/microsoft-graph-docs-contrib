---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubjectRightsRequest()
type := graphmodels.SUBJECTRIGHTSREQUESTTYPE_GRAPH_MICROSOFT_SUBJECTRIGHTSREQUESTTYPE 
requestBody.SetType(&type) 
dataSubjectType := graphmodels.DATASUBJECTTYPE_GRAPH_MICROSOFT_DATASUBJECTTYPE 
requestBody.SetDataSubjectType(&dataSubjectType) 
regulations := []string {
	"String",

}
requestBody.SetRegulations(regulations)
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 
internalDueDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetInternalDueDateTime(&internalDueDateTime) 
dataSubject := graphmodels.NewDataSubject()
firstName := "String"
dataSubject.SetFirstName(&firstName) 
lastName := "String"
dataSubject.SetLastName(&lastName) 
email := "String"
dataSubject.SetEmail(&email) 
residency := "String"
dataSubject.SetResidency(&residency) 
additionalData := map[string]interface{}{
	"phoneNumber" : "String", 
	"sSN" : "String", 
}
dataSubject.SetAdditionalData(additionalData)
requestBody.SetDataSubject(dataSubject)

result, err := graphClient.Privacy().SubjectRightsRequests().Post(context.Background(), requestBody, nil)


```