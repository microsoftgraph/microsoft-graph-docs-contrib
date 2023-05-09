---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//termStore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTerm()


localizedLabel := graphmodels.NewLocalizedLabel()
languageTag := "en-US"
localizedLabel.SetLanguageTag(&languageTag) 
name := "Car"
localizedLabel.SetName(&name) 
isDefault := true
localizedLabel.SetIsDefault(&isDefault) 

labels := []graphmodels.LocalizedLabelable {
	localizedLabel,

}
requestBody.SetLabels(labels)

result, err := graphClient.TermStore().Sets().BySetId("set-id").Children().Post(context.Background(), requestBody, nil)


```