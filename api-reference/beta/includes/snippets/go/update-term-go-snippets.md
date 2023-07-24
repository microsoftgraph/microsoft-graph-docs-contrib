---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-beta-sdk-go/models/termstore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelstermstore.NewTerm()


localizedLabel := graphmodelstermstore.NewLocalizedLabel()
name := "changedLabel"
localizedLabel.SetName(&name) 
languageTag := "en-US"
localizedLabel.SetLanguageTag(&languageTag) 
isDefault := true
localizedLabel.SetIsDefault(&isDefault) 

labels := []graphmodelstermstore.LocalizedLabelable {
	localizedLabel,
}
requestBody.SetLabels(labels)

result, err := graphClient.TermStore().Sets().BySetId("set-id").Terms().ByTermId("term-id").Patch(context.Background(), requestBody, nil)


```