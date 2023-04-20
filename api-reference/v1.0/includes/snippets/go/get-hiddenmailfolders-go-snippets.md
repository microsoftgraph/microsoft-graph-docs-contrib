---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestIncludehiddenfolders := true

requestParameters := &graphconfig.ItemMailFoldersRequestBuilderGetQueryParameters{
	Includehiddenfolders: &requestIncludehiddenfolders,
}
configuration := &graphconfig.ItemMailFoldersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MailFolders().Get(context.Background(), configuration)


```