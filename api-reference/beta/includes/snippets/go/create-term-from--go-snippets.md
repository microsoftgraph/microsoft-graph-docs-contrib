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
languageTag := "en-US"
localizedLabel.SetLanguageTag(&languageTag) 
name := "Car"
localizedLabel.SetName(&name) 
isDefault := true
localizedLabel.SetIsDefault(&isDefault) 

labels := []graphmodelstermstore.LocalizedLabelable {
	localizedLabel,
}
requestBody.SetLabels(labels)

result, err := graphClient.TermStore().Sets().BySetId("set-id").Children().Post(context.Background(), requestBody, nil)


```