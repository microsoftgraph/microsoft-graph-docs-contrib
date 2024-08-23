---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEducationClass()
description := "Health Level 1"
requestBody.SetDescription(&description) 
classCode := "Health 501"
requestBody.SetClassCode(&classCode) 
displayName := "Health 1"
requestBody.SetDisplayName(&displayName) 
externalId := "11019"
requestBody.SetExternalId(&externalId) 
externalName := "Health Level 1"
requestBody.SetExternalName(&externalName) 
externalSource := graphmodels.SIS_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
mailNickname := "fineartschool.net"
requestBody.SetMailNickname(&mailNickname) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
classes, err := graphClient.Education().Classes().Post(context.Background(), requestBody, nil)


```