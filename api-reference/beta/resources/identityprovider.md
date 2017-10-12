# identityProvider resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure Active Directory Identity Provider. Examples of Identity Providers are Microsoft Account, Google, Facebook, Amazon, and LinkedIn.  There are B2C scenarios that require configuring an Identity Provider in your tenant:

* Sign-up and sign-in a consumer facing application using a social account.  For example, an application can use Azure AD B2C to allow users to sign-up for the service using a Facebook account.
* Link your existing local account (email and password account) to a social account.  For example, a user has created a username and password with a consumer facing application.  The user later decides to link the existing account to their Facebook account allowing sign-in to the application using Facebook.

This API will also be used in future B2B scenarios allowing guests in an organization's directory that authenticate using another Identity Provider.  For example, an organization has resources in Office 365 that need to be shared with a gmail user.  The gmail user will use their Google account credentials to authenticate and access the documents.

Each Identity Provider must be configured in an Azure AD tenant or Azure AD B2C tenant using this API.  Each identity provider has a process for creating an app registration in their respective system.  For example, creating an app registration with Facebook is done at [developers.facebook.com](https://developers.facebook.com/).  The resulting client id and client secret can be passed to [create identityProvider](../api/identityprovider_post.md).  Then, each user object in the directory can be federated to any of the tenant's Identity Providers for authentication.  This enables the user to login by entering credentials in the Identity Provider's sign in page.  The token from the Identity Provider is validated by Azure AD before the tenant issues a token to the relying party application.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityProvider](../api/identityprovider_get.md) |identityProvider|Read properties of an existing identityProvider.|
|[Create identityProvider](../api/identityprovider_post.md)|identityProvider|Create a new identityProvider.|
|[Update identityProvider](../api/identityprovider_update.md)|None|Update an existing identityProvider.|
|[Delete identityProvider](../api/identityprovider_delete.md)|None|Delete an existing identityProvider.|
|[List identityProviders](../api/identityprovider_list.md)|identityProvider collection|List all identityProviders configured in a tenant.|

### Common Properties

|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|clientId|String|Yes|No|The client id for the application. This is the client id obtained when registering the application with the identity provider.|
|clientSecret|String|Yes|No|The client secret for the application. This is the client secret obtained when registering the application with the identity provider. This is write-only. A read operation will return "*****".|
|id|String|No|No|The id of the identity provider.|
|name|String|No|No|The display name of the identity provider.|
|type|String|Yes|No|The identity provider type. It must be one of the following values: <li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook|

## JSON representation

Here is a JSON representation of the resource.

```json
{
    "id": "Amazon-OAUTH",
    "type": "Amazon",
    "name": "Login with Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "*****"
}
```
