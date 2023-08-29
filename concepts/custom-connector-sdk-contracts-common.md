---
title: "Microsoft Graph connectors SDK common models"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn about the common models used in the Microsoft Graph connectors SDK."
---

# Microsoft Graph connectors SDK common models

This article describes the common models used in the Microsoft Graph connectors SDK.

## CustomConfiguration

**Search Admin** provides the connector-specific custom configuration information during the connection creation. The platform doesn't manage the structure and format of the configuration. Connector developers can use a format of their choice.

|Property |Type |Description |
|:----------|:-------------|:----------|
|configuration |string |Holds the configuration information as a string. The connector should have the capability to interpret the content of the string. |

## AuthenticationType enumeration members

The following table lists the members of the **AuthenticationType** enumeration.

|Member |Value |Description |
|:----------|:-------------|:----------|
|Anonymous |0 |No authentication is required to access the data source. |
|Basic |1 |Basic Authentication in the form of username and password to access the data source. |
|Windows |2 |Windows Active Directory-based authentication supports username, password, and domain info. |
|oAuth2ClientCredential |3 |OAuth2 based authentication with client credentials. It supports application ID and application secret. |

## AuthenticationData

Contains credentials provided by the admin to access the data source, including the authentication type, data source URL, and the credentials data.

|Property |Type |Description |
|:----------|:-------------|:----------|
|authType |[AuthenticationType](#authenticationtype-enumeration-members) |Type of authentication information held in this object. |
|DatasourceUrl |string |URL or path to access data source - path to the resource that needs to be crawled. Example: Connection string for a database. |
|basicCredential |[BasicCredential](#basiccredential) |Credentials in the form of username and password to access the data source. This property will be set exclusive to **windowsCredential**, and the **authType** will be set to Basic when this property is set. |
|windowsCredential |[WindowsCredential](#windowscredential) |Credentials in the form of Windows AD username, password, and domain to access the data source. This property will be set exclusive to **basicCredential**, and the **authType** will be set to Windows when this property is set. |
|oAuth2ClientCredential |[oAuth2ClientCredential](#oauth2clientcredential) |Credentials in the form of app ID and app secret for OAuth client credentials based authentication for accessing the datasource. This property will be set exclusive to **oAuth2ClientCredential** and the **authType** will be set to **oAuth2ClientCredential** when this property is set. |

## BasicCredential

Represents the basic credentials model.

|Property |Type |Description |
|:----------|:-------------|:----------|
|username |string |Username for accessing the data source. |
|secret |string |Secret to use with the username for accessing data source. |

## WindowsCredential

Represents the Windows credentials model.

|Property |Type |Description |
|:----------|:-------------|:----------|
|username |string | Username for accessing the data source. |
|secret |string | Secret to use with the username for accessing data source. |
|domain |string | Active Directory domain of the account. If not provided by the admin explicitly, this property holds the value of the computer name. |

## oAuth2ClientCredential

Represents the credential model for OAuth2 client credentials.

|Property |Type |Description |
|:----------|:-------------|:----------|
|appId |string |Application ID/client ID for the OAuth2 application. |
|appSecret |String |Application secret/client secret for the OAuth2 application. |
|oAuth2ClientCredentialResponse |[oAuth2ClientCredentialResponse](#oauth2clientcredentialresponse) |Contains OAuth token related details. This property will be set to the response that the connector sends after the first validate authentication call succeeds. |

## oAuth2ClientCredentialResponse

Represents the response model from the authentication server for the OAuth2 token request. The fields present in this model are the common response fields specified in OAuth2 documentation. Additionally, **idToken** can be set when the auth servers support **OpenIDConnect**.

|Property |Type |Description |
|:----------|:-------------|:----------|
|accessToken |string |The access token from auth server. |
|refreshToken |string |The refresh token if auth server sends it. |
|tokenType |string |Type of the token – usually Bearer token for OAuth. |
|expiresIn |uint64 |The expiry time of the token in Unix timestamp. |
|scope |string |Scopes supported by the token if auth server sends it. |
|idToken |string  |The ID token if auth server supports open ID connect. |

## OperationResult

The **OperationResult** enumeration contains the possible values for operation results.

|Member |Value |Description |
|:----------|:-------------|:----------|
|Success |0 |The operation succeeded without any error. |
|PartialSuccess |1 | Operation is a success, but there's a warning message to be processed. |
|ValidationFailure |2 |One or more validations failed. |
|AuthenticationIssue |3 |Credentials provided didn't work. |
|DatasourceError |4 |Data source read error. |
|NetworkError |5 |Network operation error. |
|Canceled |6 |The cancellation token canceled the operation. |
|TokenExpired |7 |To be used in OAuth flow when the token sent to the connector by the platform has expired. During the crawl, on receiving this status, the platform will trigger the refresh token flow and call the **RefreshAccessToken** method in **ConnectorOAuthService**. |

## OperationStatus

Represents the status of an operation, including error/warnings and retry details. This model is part of the response of all APIs in [ConnectionManagementService](/graph/custom-connector-sdk-contracts-connectionmanagement) and [ConnectorCrawlerService](/graph/custom-connector-sdk-contracts-connectorcrawler).

|Property |Type |Description |
|:----------|:-------------|:----------|
|result |[OperationResult](#operationresult) |Result of the operation. |
|statusMessage |string |Custom message that can be used for logging and monitoring purposes. |
|retryInfo |[RetryDetails](#retrydetails) |Retry information to be used by the framework to retry the same operation for a failed operation. If the operation succeeds or partially succeeds, it will ignore. |

## RetryType enumeration members

This enumeration is used to define the strategy for retrying in case of errors.

|Member |Value |Description |
|:----------|:-------------|:----------|
|NoRetry |0 | No retry has to be made. |
|Standard |1 | Standard retry with linear wait time will be made. |
|ExponentialBackOff |2 | Retry by exponential backoff will be made. |

## RetryDetails

This model is used for communicating the retry policy where retry is required.

|Property |Type |Description |
|:----------|:-------------|:----------|
|type |[RetryType](#retrytype-enumeration-members) |Retry type defines the type of retry strategy required for the error. |
|numberOfRetries |uint32 |Number of retries to be done for the exception. |
|pauseBetweenRetriesInMilliseconds |uint64 |Gets pause between retries in case of standard retries. |
|backoffCoefficient |float |Gets coefficient used in the calculation of Exponential Backoff. |
|backoffRate |float |Gets the backoffRate used in the calculation of Exponential Backoff. |

## DataSourceSchema

Represents the schema of the properties that represent a data entity in the data source. For details, see [schema resource type](/graph/api/resources/externalconnectors-schema).

|Property |Type |Description |
|:----------|:-------------|:----------|
|PropertyList |repeated [SourcePropertyDefinition](#sourcepropertydefinition) |Represents list of properties that define an item in data source. |

## SourcePropertyType enumeration members

|Member |Value |Description |
|:----------|:-------------|:----------|
|String |0 | Property of type **string**. |
|Int64 |1 | Property of type **int64** (long). |
|Double |2 | Property of type **double**. |
|DateTime |3 |Property of type **DateTime**. |
|Boolean |4 |Property of type **Boolean**. |
|StringCollection |5 |Property of type of array or collection of string type. |
|Int64Collection |6 | Property of the type of array or collection of long type. |
|DoubleCollection |7 |Property of type of array or collection of double type. |
|DateTimeCollection |8 |Property of type of array or collection of DateTime type. |

## SearchAnnotations enumeration members

|Member |Value |Description |
|:----------|:-------------|:----------|
|None |0 |None |
|IsSearchable |1 |If a property is searchable, its value is added to the full-text index. When a user performs a search, results are returned if there's a search hit in one of the searchable fields or its content. For example, if the property is "Author," searching "Smith" returns items whose Author property contains "Smith." |
|IsQueryable |2 |If a property is queryable, you can query against it using Knowledge Query Language (KQL). KQL consists of one or more free text keywords (words or phrases) or property restrictions. The property name must be included in the query, either specified in the query itself or included in the query programmatically. You can use prefix matching with the wildcard operator(\*). For example, if the property is "Author," the search query can be "Author: Smith" |
|IsRetrievable |4 |If a property is retrievable, it can return its value in search results. Any property you want to add to the display template or return from the query and be relevant in search results must be retrievable. Marking large or too many properties as retrievable will increase search latency. Be selective and choose relevant properties. |
|IsContent |8 |Content property is to identify a property that can be full text indexed. Admins will choose among the available properties, which one should be the property to be treated as content for that specific connection. For details, see [Content property](/graph/connecting-external-content-manage-items#content). |
|IsRefinable |16 |If a property is refinable, an admin can configure it as a custom filter on the Microsoft Search results page. A refinable property can't be searchable. |

## SearchPropertyLabel

Search property labels are well-known tags published by Microsoft that you can add against a property in your schema. Adding a semantic label helps various Microsoft products understand the property and provide a better experience. For details, see [Semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels).

### SearchPropertyLabel enumeration members

|Member |Value |Description |
|:----------|:-------------|:----------|
|Title |0 |The title of the item that you want to show in search and other experiences. |
|Url |1 |The target URL of the item in the data source. |
|CreatedBy |2 |Name of the person who created the item in the data source. |
|LastModifiedBy |3 |Name of the person who most recently edited the item in the data source. |
|Authors |4 |Name of all the people who participated/collaborated on the item in the data source. |
|CreatedDateTime |5 |Date and time that the item was created in the data source. |
|LastModifiedDateTime |6 |Date and time the item was last modified in the data source. |
|FileName |7 |In case of a file, the file's name is in the data source. |
|FileExtension |8 |In case of a file, the file's extension is in the data source. |
|LastModifiedByUpn |9 |[UPN](/azure/active-directory/hybrid/plan-connect-userprincipalname#what-is-userprincipalname) of the person who most recently edited the item in the data source. |
|CreatedByUpn |10 |[UPN](/azure/active-directory/hybrid/plan-connect-userprincipalname#what-is-userprincipalname) of the person who created the item in the data source. |
|AuthorsUpn |11 |[UPNs](/azure/active-directory/hybrid/plan-connect-userprincipalname#what-is-userprincipalname) of all the people who participated/collaborated on the item in the data source. |
|UnknownFutureValue |12 |For future-proofing, following Microsoft Graph evolvable enums. Add all new enumerations below this one until major API version changes. |
|ContainerName |13 |Name of the container. |
|ContainerUrl |14 | The URL of the container. |
|IconUrl | 15 |The URL of an icon. |

## SourcePropertyDefinition

Defines a single source property for an item in data source. For details about schema property definitions, see [property resource type](/graph/api/resources/externalconnectors-property).

|Property |Type |Description |
|:----------|:-------------|:----------|
|name |string | Name of the property. |
|type |SourcePropertyType | Data type of the property. |
|defaultSearchAnnotations |uint32 | Default search annotations for the property. |
|requiredSearchAnnotations |uint32 | Required search annotations. Certain properties like **ID** is always set to **isQueryable** `true` and **isRetrievable** `true`. |
|defaultSemanticLabels |repeated SearchPropertyLabel | List of semantic labels for the source property. |
|order |int32 |Order of this source property. Used by UI for sorting the search results. Optional.|
|label |string |Label of this source property. Used by search results UI to display the label (human-readable name). Optional.|
|aliases |repeated string |List of aliases of this source property. Optional.|
