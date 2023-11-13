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


requestBody := graphmodels.NewUser()
onPremisesExtensionAttributes := graphmodels.NewOnPremisesExtensionAttributes()
extensionAttribute1 := "skypeId.adeleVance"
onPremisesExtensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
extensionAttribute13 := null
onPremisesExtensionAttributes.SetExtensionAttribute13(&extensionAttribute13) 
requestBody.SetOnPremisesExtensionAttributes(onPremisesExtensionAttributes)

users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```