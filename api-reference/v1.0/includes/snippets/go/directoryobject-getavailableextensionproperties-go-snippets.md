---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-sdk-go/directoryobjects"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectoryobjects.NewGetAvailableExtensionPropertiesPostRequestBody()

getAvailableExtensionProperties, err := graphClient.DirectoryObjects().GetAvailableExtensionProperties().PostAsGetAvailableExtensionPropertiesPostResponse(context.Background(), requestBody, nil)


```