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
name := "changedLabel"
localizedLabel.SetName(&name) 
languageTag := "en-US"
localizedLabel.SetLanguageTag(&languageTag) 
isDefault := true
localizedLabel.SetIsDefault(&isDefault) 

labels := []graphmodels.LocalizedLabelable {
	localizedLabel,

}
requestBody.SetLabels(labels)

result, err := graphClient.TermStore().Sets().BySetId("set-id").Terms().ByTermId("term-id").Patch(context.Background(), requestBody, nil)


```