---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWindowsAutopilotDeviceIdentity()
groupTag := "Group Tag value"
requestBody.SetGroupTag(&groupTag) 
purchaseOrderIdentifier := "Purchase Order Identifier value"
requestBody.SetPurchaseOrderIdentifier(&purchaseOrderIdentifier) 
serialNumber := "Serial Number value"
requestBody.SetSerialNumber(&serialNumber) 
productKey := "Product Key value"
requestBody.SetProductKey(&productKey) 
manufacturer := "Manufacturer value"
requestBody.SetManufacturer(&manufacturer) 
model := "Model value"
requestBody.SetModel(&model) 
enrollmentState := graphmodels.ENROLLED_ENROLLMENTSTATE 
requestBody.SetEnrollmentState(&enrollmentState) 
lastContactedDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:44.2908994-08:00")
requestBody.SetLastContactedDateTime(&lastContactedDateTime) 
addressableUserName := "Addressable User Name value"
requestBody.SetAddressableUserName(&addressableUserName) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
resourceName := "Resource Name value"
requestBody.SetResourceName(&resourceName) 
skuNumber := "Sku Number value"
requestBody.SetSkuNumber(&skuNumber) 
systemFamily := "System Family value"
requestBody.SetSystemFamily(&systemFamily) 
azureActiveDirectoryDeviceId := "Azure Active Directory Device Id value"
requestBody.SetAzureActiveDirectoryDeviceId(&azureActiveDirectoryDeviceId) 
managedDeviceId := "Managed Device Id value"
requestBody.SetManagedDeviceId(&managedDeviceId) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 

windowsAutopilotDeviceIdentities, err := graphClient.DeviceManagement().WindowsAutopilotDeviceIdentities().Post(context.Background(), requestBody, nil)


```