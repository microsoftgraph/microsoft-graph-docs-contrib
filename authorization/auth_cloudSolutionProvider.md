# Call Microsoft Graph from a Cloud Solution Provider application

> **Note:** This topic applies **only** to Microsoft Cloud Solution Provider (CSP) application developers. The <a href="https://partner.microsoft.com/en-US/cloud-solution-provider" target="_newtab">Microsoft Cloud Solution Provider (CSP)</a> program enables Microsoft’s partners to resell and manage Microsoft Online services to customers. 

This topic describes how to enable application access to partner-managed customer data via Microsoft Graph using either the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a> or the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service" target="_newtab">service to service client credentials flow</a>. 


**Important:** Calling Microsoft Graph from a CSP application is only supported for directory resources (such as **user**, **group**,**device**, **organization**) and [Intune](..\beta\resources\intune_graph_overview) resources.

## What is a Partner-Managed Application?
The CSP program enables Microsoft’s partners to resell and manage Microsoft Online Services (such as Office 365, Microsoft Azure, and CRM Online) to customers. Management of customer services is done through Delegated Admin Privileges, which enables designated partner users and agents to access and configure their customers’ environments.

Additionally, as a partner developer, you can build a Partner-Managed App (PMA), also known as a *pre-consented* app, to manage your customers' Microsoft services. PMAs are often termed *pre-consented* apps because all your customers are automatically pre-consented for your partner-managed apps. This means when a user from one of your customer tenants uses one of your partner-managed apps, the user can use it without seeing any consent. And with the Delegated Admin Privilegesmodel, your partner agents can access customers through your partner-managed application.

## How to set-up a Partner-Managed Application
An application is viewed as *Partner-Managed* when it is granted elevated permissions to access your customers' data. Note that partner-managed apps can *only* be configured on Partner tenants.

The initial steps required here follow most of the same steps used to register and configure a multi-tenant application:

1. <a href="https://docs.microsoft.com/en-us/azure/active-directory/active-directory-app-registration" target="_newtab">Register your application</a> in your Partner tenant using the <a href="https://portal.azure.com" target="_newtab">Azure Portal</a>. To function as a partner-managed app, an application must be configured as a <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-devhowto-multi-tenant-overview#update-registration-to-be-multi-tenant" target="_newtab">multi-tenant app</a>.

2. Configure your multi-tenant app, again through the Azure Portal, with the *required permissions* it needs using a least privileged approach.

3. Finally grant your Partner-Managed App those configured permissions for all your customers. You can do this by adding the **servicePrincipal** that represents the app to the AdminAgents group in your Partner tenant, using Azure AD powershell V2. You can download and install Azure AD PowerShell V2 from <a href="https://www.powershellgallery.com/packages/AzureAD" target="_newtab">here</a>.  Follow these steps to find the AdminAgents group, the **servicePrincipal** and add it to the group.

    1. Open a PowerShell session and connect to your partner tenant by entering your admin credentials into the sign-in window.
    ```PowerShell
    > Connect-AzureAd
    ```
    2. Find the group that represents the AdminAgents. 
    ```PowerShell
    > $group = Get-AzureADGroup -Filter "displayName eq 'AdminAgents'"  
    ```
    3. Find the service principal that has the same *appId* as your app.
    ```PowerShell
    > $sp = Get-AzureADServicePrincipal -Filter "appId eq '{yourAppsAppId}'"
    ```
    4. Finally, add the service principal to the AdminAgents group.
    ```PowerShell
    > Add-AzureADGroupMember -ObjectId $group.ObjectId -RefObjectId $sp.ObjectId
    ```

## Token acquisition flows
Partner-managed apps are identical to regular multi-tenant apps in most respects. As such, the token acquisition flows <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a> or the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service" target="_newtab">service to service client credentials flow</a> are the same.

Apart from pre-consented access to all your customer tenants, partner-managed apps have one other capability. It allows for your agents to use your app to access your customers' tenant data (delegated admin privileges). Conceptually it works like this:

1. Your agent signs in to your app with their user credentials issued from your partner tenant.
2. Your app requests an access token for the intended partner-managed customer tenant.
3. Your app uses the access token to call Microsoft Graph. 

This is a slight variation on the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a>. To see how this would look, imagine your partner tenant is *partner.com* (which is the home tenant for your agents) and one of your customers is *customer.com*:

1. <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code#request-an-authorization-code" target="_newtab">Acquire an authorization code</a>: Your app makes a request to the ```/authorize``` endpoint, specifying ```common``` or ```partner.com``` for the target tenant.

   ```http
   GET https://login.microsoftonline.com/common/oauth2/authorize
   ```

2. <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code#use-the-authorization-code-to-request-an-access-token" target="_newtab">Aquire an access token using the authorization code</a>: Your app must use a **customer tenant** as the target tenant, in our example ```customer.com```, when making the request to the ```token``` endpoint:

   ```http
   POST https://login.microsoftonline.com/customer.com/oauth2/token
   ```

3. Now you have an access token, call Microsoft Graph, putting the access token in the HTTP authorization header:

    ```http
    GET https://graph.microsoft.com/beta/users
    Authorization: Bearer <token>
    ```

## Other considerations
### Register your app in the regions you support
Partner-managed apps are currently limited to a single region. Therefore you must have a separate tenant for each region you sell in.  For example, if your partner-managed app is registered in a tenant in the US but your customer is in the EU – the partner-managed app will not work.  Each of your regional partner tenants must maintain their own set of partner-managed apps to manage customers within the same region. This might require additional logic in your app (prior to sign-in) to get your customers' sign-in username to decide which region-specific partner-managed app identity to use, to serve the user.

### Calling Microsoft Graph immediately after customer creation
When you create a new customer using the <a href="https://partnercenter.microsoft.com/en-us/partner/developer" target="_newtab">Partner Center API</a>, a new customer tenant gets created. Additionally, a partner relationship also gets created, which makes you the partner of record for this new customer tenant. This partner relationship can take up to 3 minutes to propagate to the new customer tenant. If your app calls Microsoft Graph straight after creation, your app will likely receive an access denied error.  This is because pre-consent relies on the partner relationship being present in the customer tenant.

To avoid this problem, we recommend that your partner app should should wait **three minutes** after customer creation before calling Azure AD to acquire a token (to call Microsoft Graph). This should cover most cases. 
However, if after waiting three minutes you still recieve an authorization error, please wait an additional 60 seconds and try again.

> **NOTE:** On the retry, you must acquire a new access token from Azure AD, before calling Microsoft Graph.  Calling Microsoft Graph with the access token you already have will not work, because the access token is good for an hour and won’t contain the pre-consented permission claims.
