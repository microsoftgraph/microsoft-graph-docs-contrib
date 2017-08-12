# National cloud deployments


Microsoft cloud services are available in three separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services, which are confined within the geographic borders of specific countries and operated by local personnel. 

Current national clouds include:

- Microsoft Cloud for US Government
- Microsoft Cloud Germany
- Azure and Office 365 operated by 21Vianet in China

This article provides information about the different national cloud instances of Microsoft Graph and the capabilities within each instance that are available to developers. For more information about Microsoft national clouds, see [Microsoft National Clouds](https://www.microsoft.com/TrustCenter/CloudServices/NationalCloud).

## Microsoft Graph and Microsoft Graph Explorer service root endpoints

The following table shows the service root endpoints for Microsoft Graph and Microsoft Graph Explorer for each National cloud. 

| National Cloud | Microsoft Graph | Microsoft Graph Explorer
|---------------------------|----------------|----------------|
| Microsoft Graph operated by 21Vianet | https://microsoftgraph.chinacloudapi.cn | https://microsoftgraph.chinacloudapi.cn |
| Microsoft Graph Germany | https://graph.cloudapi.de/ | TBD |
| Microsoft Graph for US Government | https://graph.windows.net/ | TBD |
| Microsoft Graph (global service) | https://graph.microsoft.com | https://developer.microsoft.com/graph/graph-explorer |

> **Note**: Apps can only access organizational data and not consumer data via the **https://microsoftgraph.chinacloudapi.cn** endpoint. Apps should use the **https://graph.microsoft.com** endpoint to access consumer data.


## Azure AD OpenID Connect and OAuth2.0 

The following table lists the endpoints used to acquire tokens for sign-in or to call Microsoft Graph for each National cloud. 

| National Cloud | Azure AD root endpoint |
|---------------------------|----------------|
| Microsoft Graph operated by 21Vianet |https://login.chinacloudapi.cn | 
| Microsoft Graph Germany | https://login.microsoftonline.de/ | 
| Microsoft Graph for US Government | https://login-us.microsoftonline.com/ | 
| Microsoft Graph (global service) | https://login.microsoftonline.com/ | 

Use https://login.chinacloudapi.cn/common/oauth2/authorize to authenticate the user and https://login.chinacloudapi.cn/common/oauth2/token to acquire a token for your app to call Microsoft Graph operated by 21Vianet.

> **Note:** The latest [v2.0 authorization and token endpoints](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview/) are NOT available for use with Microsoft Graph operated by 21Vianet. 



------------------------------------------------------
<!-- Previous article -->

## Microsoft Graph operated by 21Vianet in China

This section provides information about Microsoft Graph operated by 21Vianet, and the capabilities that are available to developers. 

### Microsoft Graph service root endpoints
| Microsoft Graph operated by 21Vianet | Microsoft Graph|
|---------------------------|----------------|
|  | https://graph.microsoft.com|

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
