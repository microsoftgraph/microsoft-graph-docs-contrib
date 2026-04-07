---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewExternalOriginResourceConnector()
displayName := "SAP Access Control"
requestBody.SetDisplayName(&displayName) 
description := "SAP Access Control connector"
requestBody.SetDescription(&description) 
connectorType := graphmodels.SAPAC_CONNECTORTYPE 
requestBody.SetConnectorType(&connectorType) 
connectionInfo := graphmodels.NewExternalTokenBasedSapIagConnectionInfo()
url := "dev.test"
connectionInfo.SetUrl(&url) 
accessTokenUrl := "9e90019f-6256-41fa-a225-5ef9cc1d9bf8"
connectionInfo.SetAccessTokenUrl(&accessTokenUrl) 
clientId := "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29"
connectionInfo.SetClientId(&clientId) 
keyVaultName := "Keyvault"
connectionInfo.SetKeyVaultName(&keyVaultName) 
secretName := "Test"
connectionInfo.SetSecretName(&secretName) 
subscriptionId := "5ee98b73-d9df-43a7-8a92-36855054bdee"
connectionInfo.SetSubscriptionId(&subscriptionId) 
resourceGroup := "SAPIAG Group"
connectionInfo.SetResourceGroup(&resourceGroup) 
requestBody.SetConnectionInfo(connectionInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalOriginResourceConnectors, err := graphClient.IdentityGovernance().EntitlementManagement().ExternalOriginResourceConnectors().Post(context.Background(), requestBody, nil)


```