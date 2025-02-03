---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipalswithappid "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipalswithappid"
	  //other-imports
)

requestParameters := &graphserviceprincipalswithappid.ServicePrincipalsWithAppIdRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"},
}
configuration := &graphserviceprincipalswithappid.ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appId := "{appId}"
servicePrincipals, err := graphClient.ServicePrincipalsWithAppId(&appId).Get(context.Background(), configuration)


```