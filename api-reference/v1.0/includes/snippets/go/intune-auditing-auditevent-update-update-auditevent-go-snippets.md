---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuditEvent()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
componentName := "Component Name value"
requestBody.SetComponentName(&componentName) 
actor := graphmodels.NewAuditActor()
auditActorType := "Audit Actor Type value"
actor.SetAuditActorType(&auditActorType) 
userPermissions := []string {
	"User Permissions value",
}
actor.SetUserPermissions(userPermissions)
applicationId := "Application Id value"
actor.SetApplicationId(&applicationId) 
applicationDisplayName := "Application Display Name value"
actor.SetApplicationDisplayName(&applicationDisplayName) 
userPrincipalName := "User Principal Name value"
actor.SetUserPrincipalName(&userPrincipalName) 
servicePrincipalName := "Service Principal Name value"
actor.SetServicePrincipalName(&servicePrincipalName) 
ipAddress := "Ip Address value"
actor.SetIpAddress(&ipAddress) 
userId := "User Id value"
actor.SetUserId(&userId) 
additionalData := map[string]interface{}{
	"type" : "Type value", 
}
actor.SetAdditionalData(additionalData)
requestBody.SetActor(actor)
activity := "Activity value"
requestBody.SetActivity(&activity) 
activityDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:59:51.6363086-08:00")
requestBody.SetActivityDateTime(&activityDateTime) 
activityType := "Activity Type value"
requestBody.SetActivityType(&activityType) 
activityOperationType := "Activity Operation Type value"
requestBody.SetActivityOperationType(&activityOperationType) 
activityResult := "Activity Result value"
requestBody.SetActivityResult(&activityResult) 
correlationId := uuid.MustParse("52effe71-fe71-52ef-71fe-ef5271feef52")
requestBody.SetCorrelationId(&correlationId) 


auditResource := graphmodels.NewAuditResource()
displayName := "Display Name value"
auditResource.SetDisplayName(&displayName) 


auditProperty := graphmodels.NewAuditProperty()
displayName := "Display Name value"
auditProperty.SetDisplayName(&displayName) 
oldValue := "Old Value value"
auditProperty.SetOldValue(&oldValue) 
newValue := "New Value value"
auditProperty.SetNewValue(&newValue) 

modifiedProperties := []graphmodels.AuditPropertyable {
	auditProperty,
}
auditResource.SetModifiedProperties(modifiedProperties)
auditResourceType := "Audit Resource Type value"
auditResource.SetAuditResourceType(&auditResourceType) 
resourceId := "Resource Id value"
auditResource.SetResourceId(&resourceId) 
additionalData := map[string]interface{}{
	"type" : "Type value", 
}
auditResource.SetAdditionalData(additionalData)

resources := []graphmodels.AuditResourceable {
	auditResource,
}
requestBody.SetResources(resources)
category := "Category value"
requestBody.SetCategory(&category) 

auditEvents, err := graphClient.DeviceManagement().AuditEvents().ByAuditEventId("auditEvent-id").Patch(context.Background(), requestBody, nil)


```