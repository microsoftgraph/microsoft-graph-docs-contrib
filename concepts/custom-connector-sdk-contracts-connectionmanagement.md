---
title: "Microsoft Graph connectors SDK connection management API and models"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn about the connection management API and models in the Microsoft Graph connectors SDK."
---

# Microsoft Graph connectors SDK connection management API and models

The Microsoft Graph connectors SDK contracts connection management API and models are called during the process of **custom connector connection creation** on the [Microsoft 365 admin center](https://admin.microsoft.com/adminportal/home#/MicrosoftSearch/Connectors/add).

## Connection management APIs

|Method |Parameters |Return Type |Description |
|:----------|:-------------|:----------|:-------------|
|ValidateAuthentication |[ValidateAuthenticationRequest](#validateauthenticationrequest) |[ValidateAuthenticationResponse](#validateauthenticationresponse) |Validates the credentials and data source path provided by the admin in the connection settings step. |
|ValidateCustomConfiguration |[ValidateCustomConfigurationRequest](#validatecustomconfigurationrequest) |[ValidateCustomConfigurationResponse](#validatecustomconfigurationresponse) |Validates the optional configuration provided by the admin in the connection configuration step. If no configuration is required for the connector, this API can return a success response. |
|GetDataSourceSchema |[GetDataSourceSchemaRequest](#getdatasourceschemarequest) |[GetDataSourceSchemaResponse](#getdatasourceschemaresponse) |Gets the data source schema in a format that can be understood by Microsoft Graph. |

### Connection management API models

The following sections describe the connection management API models.

#### ValidateAuthenticationRequest

Request model to validate the authentication request to the data source.

|Property |Type |Description |
|:----------|:-------------|:----------|
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL and the credentials to access it. |

#### ValidateAuthenticationResponse

Response model to validate the authentication response to the data source.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and details like error messages. |
|oAuth2ClientCredentialResponse |[OAuth2ClientCredentialResponse](/graph/custom-connector-sdk-contracts-common#oauth2clientcredentialresponse) |Credential information to be sent to the connector during the crawl if OAuth flow is used (access token, refresh token, and so on, sent by the auth server).|

#### ValidateCustomConfigurationRequest

Request model to validate custom configuration request information.

|Property |Type |Description |
|:----------|:-------------|:----------|
|customConfiguration |[CustomConfiguration](/graph/custom-connector-sdk-contracts-common#customconfiguration) |Provides configuration data for the connector. |
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL and the credentials to access it. |

#### ValidateCustomConfigurationResponse

Request model to validate custom configuration response information.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and details such as error messages. |

#### GetDataSourceSchemaRequest

Request model to get the schema request of the data source.

|Property |Type |Description |
|:----------|:-------------|:----------|
|customConfiguration |[CustomConfiguration](/graph/custom-connector-sdk-contracts-common#customconfiguration) |Provides configuration data for the connector. |
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL and the credentials to access it. |

#### GetDataSourceSchemaResponse

Request model to get the schema response of the data source.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and details such as error messages. |
|dataSourceSchema |[DataSourceSchema](/graph/custom-connector-sdk-contracts-common#datasourceschema) |Shows the data source schema.|

## See also

* [Microsoft Graph connectors API schema resource type](/graph/api/resources/externalconnectors-schema)
