---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestForcedelete := true

requestParameters := &graphconfig.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteQueryParameters{
	Forcedelete: &requestForcedelete,
}
configuration := &graphconfig.ComplianceEdiscoveryCaseItemTagItemRequestBuilderDeleteRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.Compliance().Ediscovery().CasesById("case-id").TagsById("tag-id").Delete(context.Background(), configuration)


```