---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestForcedelete := "true"

requestParameters := &graphcompliance.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteQueryParameters{
	Forcedelete: &requestForcedelete,
}
configuration := &graphcompliance.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().ByTagId("tag-id").Delete(context.Background(), configuration)


```