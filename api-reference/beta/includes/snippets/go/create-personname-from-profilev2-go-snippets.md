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


requestBody := graphmodels.NewPersonName()
displayName := "Innocenty Popov"
requestBody.SetDisplayName(&displayName) 
first := "Innocenty"
requestBody.SetFirst(&first) 
initials := "IP"
requestBody.SetInitials(&initials) 
last := "Popov"
requestBody.SetLast(&last) 
languageTag := "en-US"
requestBody.SetLanguageTag(&languageTag) 
maiden := null
requestBody.SetMaiden(&maiden) 

names, err := graphClient.Me().Profile().Names().Post(context.Background(), requestBody, nil)


```