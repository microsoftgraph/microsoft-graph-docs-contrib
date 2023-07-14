---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")

requestParameters := &graphusers.ItemContactFolderItemContactsDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName"},
}
configuration := &graphusers.ItemContactFolderItemContactsDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().ContactFolders().ByContactFolderId("contactFolder-id").Contacts().Delta().Get(context.Background(), configuration)


```