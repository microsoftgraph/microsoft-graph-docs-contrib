---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewExternalOriginResourceConnector()
connectorType := graphmodels.SAPIAG_CONNECTORTYPE 
requestBody.SetConnectorType(&connectorType) 
displayName := "SAP IAG Connector 2.0"
requestBody.SetDisplayName(&displayName) 
description := "SAP IAG Connector 2.0 description"
requestBody.SetDescription(&description) 
connectionInfo := graphmodels.NewExternalTokenBasedSapIagConnectionInfo()
url := "https://contoso.example.com"
connectionInfo.SetUrl(&url) 
keyVaultName := "Keyvault"
connectionInfo.SetKeyVaultName(&keyVaultName) 
subscriptionId := "5ee98b73-d9df-43a7-8a92-36855054bdee"
connectionInfo.SetSubscriptionId(&subscriptionId) 
resourceGroup := "SAP IAG Group"
connectionInfo.SetResourceGroup(&resourceGroup) 
accessTokenUrl := "https://contoso.example.com/oauth/token"
connectionInfo.SetAccessTokenUrl(&accessTokenUrl) 
clientId := "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29"
connectionInfo.SetClientId(&clientId) 
secretName := "clientSecret"
connectionInfo.SetSecretName(&secretName) 
requestBody.SetConnectionInfo(connectionInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalOriginResourceConnectors, err := graphClient.IdentityGovernance().EntitlementManagement().ExternalOriginResourceConnectors().ByExternalOriginResourceConnectorId("externalOriginResourceConnector-id").Patch(context.Background(), requestBody, nil)


```