# Call Microsoft Graph from a Cloud Solution Provider application

This topic describes how to enable application access to partner managed customer data via Microsoft Graph using either the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a> or the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service" target="_newtab">service to service client credentials flow</a>. 

> **Note:** This topic applies **only** to Microsoft Cloud Solution Provider (CSP) application developers. The <a href="https://partner.microsoft.com/en-US/cloud-solution-provider" target="_newtab">Microsoft Cloud Solution Provider (CSP)</a> program enables Microsoft’s partners to resell and manage Microsoft Online services to customers. 

**Important**: Calling Microsoft Graph from a CSP application is only supported for directory resources (such as **user**, **group**,**device**, **organization**) and [Intune](..\beta\resources\intune_graph_overview) resources.

## What is a Partner Managed Application?
The CSP program enables Microsoft’s partners to resell and manage Microsoft Online services such as Office 365, Azure and CRM Online) to customers. Management of customer services is done through Delegated Admin Privileges (DAP) which enables designated partner users and agents to access and configure their customers’ environments.

Additionally, as a partner developer, you can build a Partner Managed App (PMA), also known as a *pre-consented* app, to manage your customers' Microsoft services. PMAs are often termed *pre-consented* apps because all your customers are automatically pre-consented for your partner managed apps. This means when a user from one of your customer tenants uses one of your partner managed apps, the user can use it without seeing any consent. And with the DAP model, your partner agents can access customers through your partner managed application.

## How to set-up a Partner Managed Application
An application is viewed as *Partner Managed* when it is granted elevated permissions to access your customers' data. Note that partner managed apps can *only* be configured on Partner tenants.

The initial steps required here follow most of the same steps used to register and configure a multi-tenant application:

1. Register your application in your Partner tenant. You can use the <a href="https://portal.azure.com" target="_newtab">Azure Portal</a> for this. To function as a PMA, an application must be configured as a multi-tenant app.

2. Configure your multi-tenant app with the *required permissions* it needs using a least privileged approach.

3. Finally grant your Partner Managed App those configured permissions for all your customers. You can so this by adding the **servicePrincipal** that represents the app to the AdminAgents group in your Partner tenant, using Azure AD powershell V2. You can download and install Azure AD PowerShell V2 from <a href="https://www.powershellgallery.com/packages/AzureAD" target="_newtab">here</a>.  Follow these steps to find the AdminAgents group, the **servicePrincipal** and add it to the group.

    1. Open a PowerShell session and connect to your partner tenant by entering your admin credentials into the sign-in window.
    ```code
    > Connect-AzureAd
    ```
    2. Next find the group that represents the AdminAgents. 
    ```code
    > $group = Get-AzureADGroup -Filter "displayName eq 'AdminAgents'"  
    ```
    3. Find the service principal that has the same *appId* as your app.
    ```code
    > $sp = Get-AzureADServicePrincipal -Filter "appId eq '{yourAppsAppId}'"
    ```
    4. Finally add the service principal to the AdminAgents group.
    ```code
    > Add-AzureADGroupMember -ObjectId $group.ObjectId -RefObjectId $sp.ObjectId
    ```

## Token acquisition flows
Partner managed apps are identical to regular multi-tenant apps in virtually all respects. As such, the token acquisition flows <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a> or the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service" target="_newtab">service to service client credentials flow</a> are exactly the same.

Apart from pre-consented access to all your customer tenants, there is one other capability afforded to partner managed apps. It allows for your agents to use your app to access your customers' tenant data (delegated admin privileges). Conceptually your agent signs in to your app with their user credentials from your partner tenant, but your app then acquires an access token to one of your partner managed customers' tenants, and uses that to call Microsoft Graph. This is a slight variation on the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code" target="_newtab">authorization code grant flow</a>. 

To see how this would look, imagine your partner tenant is *partner.com* (which is the home tenant for your agents) and one of your customers is *customer.com*:

1. The first step to <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code#request-an-authorization-code" target="_newtab">acquire an authorization code</a> is exactly the same, where your app makes a request to the ```/authorize``` endpoint, specifying ```common``` or ```partner.com``` for the tenant.

   ```code
   GET https://login.microsoftonline.com/common/oauth2/authorize
   ```

2. In the second step, where your app <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-code#use-the-authorization-code-to-request-an-access-token" target="_newtab">aquires an access token using the authorization code</a>, you must use a **customer tenant** as the target tenant when making the request to the ```token``` endpoint.

   ```code
   POST https://login.microsoftonline.com/customer.com/oauth2/token
   ```

## Other considerations
Partner managed apps are currently limited to a single region.  It is expected that you should have a separate tenant for each region you sell in.  For example, if your partner managed app is registered in a tenant in the US but your customer is in the EU – the partner managed app will not work.  Each of your regional partner tenants must maintain their own set of partner managed apps to manage customers within the same region. This may require additional logic in your app (prior to sign-in) to get your customers' sign-in username to decide which region-specific partner managed app identity to use, to serve the user.