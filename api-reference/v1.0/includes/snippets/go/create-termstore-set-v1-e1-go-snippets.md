---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-sdk-go/models/termstore"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

sets, err := graphClient.Sites().BySiteId("site-id").TermStore().Sets().Post(context.Background(), requestBody, nil)


```