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


requestBody := graphmodels.NewEducationAssignmentResource()
distributeForStudentWork := false
requestBody.SetDistributeForStudentWork(&distributeForStudentWork) 
resource := graphmodels.NewEducationResource()
displayName := "Template - My Story"
resource.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"appId" : "6fbeb90c-3d55-4bd5-82c4-bfe824be4300", 
	"appIconWebUrl" : "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2", 
	"teamsEmbeddedContentUrl" : "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1", 
	"webUrl" : "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08", 
}
resource.SetAdditionalData(additionalData)
requestBody.SetResource(resource)

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").Assignments().ByAssignmentId("educationAssignment-id").Resources().Post(context.Background(), requestBody, nil)


```