---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphserviceprincipals(appid='{appid}') "github.com/microsoftgraph/msgraph-beta-sdk-go/serviceprincipals(appid='{appid}')"
	  //other-imports
)

requestParameters := &graphserviceprincipals(appid='{appid}').ServicePrincipals(appId='{appId}')RequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"},
}
configuration := &graphserviceprincipals(appid='{appid}').ServicePrincipals(appId='{appId}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appId := "{appId}"
servicePrincipals, err := graphClient.ServicePrincipalsWithAppId(&appId).Get(context.Background(), configuration)


```