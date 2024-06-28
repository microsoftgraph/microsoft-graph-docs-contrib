---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-beta-sdk-go/models/termstore"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
children, err := graphClient.TermStore().Sets().BySetId("set-id").Children().Post(context.Background(), requestBody, nil)


```