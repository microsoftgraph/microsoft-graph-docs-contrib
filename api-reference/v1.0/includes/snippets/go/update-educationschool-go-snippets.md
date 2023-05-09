---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationSchool()
displayName := "Fabrikam Arts High School"
requestBody.SetDisplayName(&displayName) 
description := "Magnate school for the arts. Los Angeles School District"
requestBody.SetDescription(&description) 

result, err := graphClient.Education().Schools().BySchoolId("educationSchool-id").Patch(context.Background(), requestBody, nil)


```