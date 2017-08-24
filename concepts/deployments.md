# National cloud deployments


Microsoft cloud services are available in three separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services, which are confined within the geographic borders of specific countries and operated by local personnel. 

Current national clouds include:

- Microsoft Cloud for US Government
- Microsoft Cloud Germany
- Azure and Office 365 operated by 21Vianet in China

This article provides information about the different national cloud deployments of Microsoft Graph and the capabilities within each deployment that are available to developers. For information about Microsoft national clouds, see [Microsoft National Clouds](https://www.microsoft.com/TrustCenter/CloudServices/NationalCloud).

## Microsoft Graph and Microsoft Graph Explorer service root endpoints

The following table shows the service root endpoints for Microsoft Graph and Microsoft Graph Explorer for each National cloud. 

| National Cloud | Microsoft Graph | Microsoft Graph Explorer
|---------------------------|----------------|----------------|
| Microsoft Graph operated by 21Vianet | https://microsoftgraph.chinacloudapi.cn | https://developer.microsoft.com/zh-cn/graph/graph-explorer-china |
| Microsoft Graph Germany | https://graph.cloudapi.de/ | TBD |
| Microsoft Graph for US Government | https://graph.windows.net/ | TBD |
| Microsoft Graph global service | https://graph.microsoft.com | https://developer.microsoft.com/graph/graph-explorer |

> **Note**: Apps can only access organizational data through the national cloud endpoints. This means that only data in tenants registered in the specific national cloud can be accessed. Apps should use the global service (https://graph.microsoft.com) to access consumer data -- that is, data associated with personal Microsoft accounts. Access tokens acquired for a national cloud deployment are not interchangeable with those acquired for the global service.

## Azure AD OpenID Connect and OAuth2.0 endpoints

The following table lists the root URLs for the Azure Active Directory (Azure AD) endpoints used to acquire tokens to call Microsoft Graph for each national cloud. 

| National Cloud | Azure AD root endpoint |
|---------------------------|----------------|
| Microsoft Graph operated by 21Vianet |https://login.chinacloudapi.cn | 
| Microsoft Graph Germany | https://login.microsoftonline.de/ | 
| Microsoft Graph for US Government | https://login-us.microsoftonline.com/ | 
| Microsoft Graph (global service) | https://login.microsoftonline.com/ | 

The actual endpoints can be formed by adding the appropriate fragment to the base URL. For example, for Microsoft Graph operated by 21Vianet:

- The authorization common endpoint is https://login.chinacloudapi.cn/common/oauth2/authorize.
- The token common endpoint is https://login.chinacloudapi.cn/common/oauth2/token.

Tenant-specific endpoints can be formed by replacing "common" in the URLs above with either the tenant ID or a verified domain for the tenant. 
Whether you use the common or tenant-specific endpoints will depend upon the requirements of your app and the authentication flow you are using to get tokens. To learn more about Azure AD access tokens and Microsoft Graph, see [Get auth tokens](./auth_overview.md).

> **Note:** The [Azure AD v2.0 authorization and token endpoints](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview/) are NOT available for use with national cloud deployments. 

## Supported features

**I would like to make this section a matrix with features (like Users, Groups, Files, etc) in rows and a column for each cloud (global service excluded). That assumes that there is differing support among the national clouds. I also wonder whether it might be easier to list the things that are not supported -- rather than list the things that are.**

**IN SHORT:  I NEED INFO TO FINISH THIS SECTION**

The following Microsoft Graph features are generally available (on the `/v1.0` endpoint):

* Users
* Groups
* Files
* Mail
* Calendar
* Personal Contacts 
* Create, read, update, and delete (CRUD) operations
* Cross-origin resource sharing (CORS) support.

The following Microsoft Graph features are also available in preview (on the `/beta` endpoint):

* Organizational Contacts
* Applications
* Service Principals
* Directory schema extensions
* Webhooks


------------------------------------------------------
<!-- Previous article -->

<!--
## Microsoft Graph operated by 21Vianet in China

This section provides information about Microsoft Graph operated by 21Vianet, and the capabilities that are available to developers. 

### Microsoft Graph service root endpoints
| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
| https://microsoftgraph.chinacloudapi.cn | https://graph.microsoft.com|

### Microsoft Graph Explorer
| Microsoft Graph Explorer in China | Microsoft Graph Explorer|
|---------------------------|----------------|
|https://developer.microsoft.com/zh-cn/graph/graph-explorer-china| https://developer.microsoft.com/graph/graph-explorer|

### Azure OpenID Connect and OAuth2.0
The endpoints used to acquire tokens for sign-in or to call Microsoft Graph operated by 21Vianet differ from those of other offerings. 

| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
| https://login.chinacloudapi.cn | https://login.microsoftonline.com|
 
Use https://login.chinacloudapi.cn/common/oauth2/authorize to authenticate the user and https://login.chinacloudapi.cn/common/oauth2/token to acquire a token for your app to call Microsoft Graph operated by 21Vianet.

> **Note:** The latest [v2.0 authorization and token endpoints](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview/) are NOT available for use with Microsoft Graph operated by 21Vianet. 

>Apps can only access organizational data and not consumer data via the **https://microsoftgraph.chinacloudapi.cn** endpoint. Apps should use the **https://graph.microsoft.com** endpoint to access consumer data.

### Service capabilities offered by Microsoft Graph operated by 21Vianet
The following Microsoft Graph features are generally available (on the `/v1.0` endpoint):

* Users
* Groups
* Files
* Mail
* Calendar
* Personal Contacts 
* Create, read, update, and delete (CRUD) operations
* Cross-origin resource sharing (CORS) support.

The following Microsoft Graph features are also available in preview (on the `/beta` endpoint):

* Organizational Contacts
* Applications
* Service Principals
* Directory schema extensions
* Webhooks

-->