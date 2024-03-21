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


requestBody := graphmodels.NewEducationModuleResource()
resource := graphmodels.NewEducationPowerPointResource()
displayName := "ppt_file.pptx"
resource.SetDisplayName(&displayName) 
fileUrl := "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ2GE3EYXUX6NJEI6UWOKBM74MHA"
resource.SetFileUrl(&fileUrl) 
requestBody.SetResource(resource)

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().ByEducationModuleId("educationModule-id").Resources().Post(context.Background(), requestBody, nil)


```