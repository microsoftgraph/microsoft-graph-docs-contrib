---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphoauth2permissiongrants "github.com/microsoftgraph/msgraph-sdk-go/oauth2permissiongrants"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'"

requestParameters := &graphoauth2permissiongrants.Oauth2PermissionGrantsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphoauth2permissiongrants.Oauth2PermissionGrantsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

oauth2PermissionGrants, err := graphClient.Oauth2PermissionGrants().Get(context.Background(), configuration)


```