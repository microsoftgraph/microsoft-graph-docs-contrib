---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UnifiedRoleDefinitionRequestBuilderGetQueryParameters{
	Expand: [] string {"inheritsPermissionsFrom"},
}
configuration := &graphconfig.UnifiedRoleDefinitionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleDefinitionsById("unifiedRoleDefinition-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```