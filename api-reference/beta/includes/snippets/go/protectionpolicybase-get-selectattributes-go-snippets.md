---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <Access-Token>")

requestParameters := &graphsolutions.BackupRestoreProtectionPoliciesItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","status","protectionPolicyArtifactCount"},
}
configuration := &graphsolutions.BackupRestoreProtectionPoliciesItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
protectionPolicies, err := graphClient.Solutions().BackupRestore().ProtectionPolicies().ByProtectionPolicyBaseId("protectionPolicyBase-id").Get(context.Background(), configuration)


```