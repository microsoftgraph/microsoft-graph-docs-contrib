---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDocumentProcessingJob()
jobType := graphmodels.FILE_DOCUMENTPROCESSINGJOBTYPE 
requestBody.SetJobType(&jobType) 
listItemUniqueId := "5955b119-99c1-4af9-97ed-3449e02de6f1"
requestBody.SetListItemUniqueId(&listItemUniqueId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
documentProcessingJobs, err := graphClient.Sites().BySiteId("site-id").DocumentProcessingJobs().Post(context.Background(), requestBody, nil)


```