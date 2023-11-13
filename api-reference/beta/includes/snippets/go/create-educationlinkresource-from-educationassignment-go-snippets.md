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
resource := graphmodels.NewEducationLinkResource()
displayName := "Where the Wonders of Learning Never Cease | Wonderopolis"
resource.SetDisplayName(&displayName) 
link := "https://wonderopolis.org/"
resource.SetLink(&link) 
additionalData := map[string]interface{}{
	thumbnailPreviewUrl := null
resource.SetThumbnailPreviewUrl(&thumbnailPreviewUrl) 
}
resource.SetAdditionalData(additionalData)
requestBody.SetResource(resource)

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Post(context.Background(), requestBody, nil)


```