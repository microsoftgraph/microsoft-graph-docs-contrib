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
resource := graphmodels.NewEducationMediaResource()
displayName := "ModulePicture.PNG"
resource.SetDisplayName(&displayName) 
fileUrl := "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ56XC3M4V7F5JEK3NLECZH4HWGP"
resource.SetFileUrl(&fileUrl) 
requestBody.SetResource(resource)

resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().ByEducationModuleId("educationModule-id").Resources().Post(context.Background(), requestBody, nil)


```