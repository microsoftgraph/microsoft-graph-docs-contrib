---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

unifiedRbacResourceNamespaceId := "unifiedRbacResourceNamespace-id"
unifiedRbacResourceActionId := "unifiedRbacResourceAction-id"
result, err := graphClient.RoleManagement().Directory().ResourceNamespacesById(&unifiedRbacResourceNamespaceId).ResourceActionsById(&unifiedRbacResourceActionId).Get(nil)


```