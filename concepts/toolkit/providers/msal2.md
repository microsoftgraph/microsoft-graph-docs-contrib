---
title: "MSAL 2.0 provider"
description: "The MSAL 2.0 provider uses msal-browser to sign in users and acquire tokens to use with the Microsoft Graph"
localization_priority: Normal
author: amrutha95
---

# MSAL2.0  provider

The MSAL 2.0 provider uses [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser) to sign in users and acquire tokens to use with Microsoft Graph.
To learn more, see [providers](./providers.md).

## Differences between MsalProvider and Msal2Provider
Also the usage is very similar, there are some key differences between MsalProvider and Msal2Provider. They are:
* MsalProvider is built on top of MSAL.js, which implements the OAuth2.0 [Implicit Grant Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-implicit-grant-flow). Msal2Provider is built on top of [msal-browser](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/lib/msal-browser), which implements the OAuth 2.0 [Authorization Code Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow) with PKCE.
For many security reasons, Authorization Code Flow is deemed more secure than Implicit Grant Flow for web applications. Learn more about the disadvantages of implicit auth flow [here](https://tools.ietf.org/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6).
* Msal2Provider provides support for multipe accounts to be signed in to an application, and also switch between views for each of the accounts, while MsalProvider provides support for single account logins. This is due to the difference in capabilities of the underlying msal libraries (msal-brow.


## Get started

You can initialize the MSAL 2.0 provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL 2.0 provider in HTML is the simplest way to create a new provider. Use the `mgt-msal2-provider` component to set the **client-id** and other properties. This will create a new `PublicClientApplication` instance that will be used for all authentication and acquiring tokens.

```html
    <mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"
                        login-type="redirect/popup" 
                        scopes="user.read,people.read" 
                        redirect-uri="https://my.redirect/uri" 
                        multi-account-disabled
                        authority=""> 
    </mgt-msal2-provider> 
```

| Attribute    | Description                                                                                                                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| login-type   | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional.                                                                                                                                                                                   |
| scopes       | Comma separated strings for scopes the user must consent to on sign in. Optional.                                                                                                                                                                                     |
| authority    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| redirect-uri | Redirect URI string - by default the current window URI is used. Optional.                                                                                                                                                                                            |
| multi-account-disabled | If present, disabled multiple account functionality.|
| prompt       | Type of prompt to use for login, between ```'SELECT_ACCOUNT'```, ```'CONSENT'``` and ```'LOGIN'```. Default is ```'SELECT_ACCOUNT'```. Optional.

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
    import {Providers, LoginType} from '@microsoft/mgt-element';
    import {Msal2Provider, PromptType} from '@microsoft/mgt-msal2-provider';

    // initialize the auth provider globally
    Providers.globalProvider = new Msal2Provider({
      clientId: 'clientId',
      isMultiAccountDisabled?: Boolean, //Set this to true to disable multi account functionality
      scopes?: string[],
      authority?: string,
      redirectUri?: string,
      loginType?: LoginType, // LoginType.Popup or LoginType.Redirect (redirect is default)
      prompt?: PromptType, // PromptType.CONSENT, PromptType.LOGIN or PromptType.SELECT_ACCOUNT
      sid?: string, // Session ID
      loginHint?: string,
      domainHint?: string,
      options?: Configuration // msal js Configuration object
    });
```

## Creating an app/client ID

To create an application in Azure Active Directory, you need to add a new application registration, and then configure an app name and URL location.

To create the app in Azure Active Directory:

1. Go to the Azure portal at https://portal.azure.com.
2. From the menu, select Azure Active Directory.
3. From the Azure Active Directory menu, select App registrations.
4. From the top menu, select the New registration button.
5. Enter the name for your app; for example, My M365 app.
6. For the type of supported account types, select Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox).
7. In the Redirect URI field, in the dropdown, select Single Page Application (SPA), and in the URL field, enter http://localhost:3000.
Confirm changes by selecting the Register button.

## Enabling SID (Session ID) as an ID token claim
This section will go through the steps to add SID as an optional claim so that it is returned in the ID tokens. Having an SID in the ID token will enable features like Single Sign On to work more seamlessly, so we highly recommend you to add this claim.
1. Once your app registration is done, navigate to ```Token Configuration``` under ```Manage```.
2. Click on ```Add optional claim```.
3. On the ```Add optional claim``` sidebar opens up, select ```ID``` under ```Token Type```.
4. In the list of claims, select ```sid```
5. Click on ```Add```.
