---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-sdk-go/models/termstore"
	  //other-imports
)

requestBody := graphmodelstermstore.NewSet()
parentGroup := graphmodelstermstore.NewGroup()
id := "fc733b51-10f1-40fd-b784-dc6d1e42804b"
parentGroup.SetId(&id) 
requestBody.SetParentGroup(parentGroup)


localizedName := graphmodelstermstore.NewLocalizedName()
languageTag := "en-US"
localizedName.SetLanguageTag(&languageTag) 
name := "Department"
localizedName.SetName(&name) 

localizedNames := []graphmodelstermstore.LocalizedNameable {
	localizedName,
}
requestBody.SetLocalizedNames(localizedNames)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sets, err := graphClient.Sites().BySiteId("site-id").TermStore().Sets().Post(context.Background(), requestBody, nil)


```