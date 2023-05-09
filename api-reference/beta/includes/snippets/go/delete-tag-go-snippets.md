---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestForcedelete := true

requestParameters := &graphconfig.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteQueryParameters{
	Forcedelete: &requestForcedelete,
}
configuration := &graphconfig.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().ByTagId("tag-id").Delete(context.Background(), configuration)


```