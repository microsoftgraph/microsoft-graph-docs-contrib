---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewAddToReviewSetPostRequestBody()
search := graphmodelssecurity.NewEdiscoverySearch()
id := "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
search.SetId(&id) 
requestBody.SetSearch(search)
additionalDataOptions := graphmodels.LINKEDFILES_ADDITIONALDATAOPTIONS 
requestBody.SetAdditionalDataOptions(&additionalDataOptions) 
cloudAttachmentVersion := graphmodels.LATEST_CLOUDATTACHMENTVERSION 
requestBody.SetCloudAttachmentVersion(&cloudAttachmentVersion) 
documentVersion := graphmodels.RECENT10_DOCUMENTVERSION 
requestBody.SetDocumentVersion(&documentVersion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByEdiscoveryReviewSetId("ediscoveryReviewSet-id").MicrosoftGraphSecurityAddToReviewSet().Post(context.Background(), requestBody, nil)


```