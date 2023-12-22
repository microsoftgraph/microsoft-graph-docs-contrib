---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationAssignmentResource()
distributeForStudentWork := false
requestBody.SetDistributeForStudentWork(&distributeForStudentWork) 
resource := graphmodels.NewEducationTeamsAppResource()
displayName := "Template - My Story"
resource.SetDisplayName(&displayName) 
appId := "6fbeb90c-3d55-4bd5-82c4-bfe824be4300"
resource.SetAppId(&appId) 
appIconWebUrl := "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2"
resource.SetAppIconWebUrl(&appIconWebUrl) 
teamsEmbeddedContentUrl := "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1"
resource.SetTeamsEmbeddedContentUrl(&teamsEmbeddedContentUrl) 
webUrl := "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08"
resource.SetWebUrl(&webUrl) 
requestBody.SetResource(resource)

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Post(context.Background(), requestBody, nil)


```