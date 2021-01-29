---
title: "Use Postman with the Microsoft Graph API"
description: "Use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes."
author: "jthake-msft"
localization_priority: Priority
---

# Use Postman with the Microsoft Graph API
You can use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes.

![Image of Postman](https://github.com/microsoftgraph/microsoftgraph-postman-collections/blob/master/images/postman.png?raw=true)

This article explains how to get up and running with Postman and Microsoft Graph. You can also explore Microsoft Graph APIs directly in your web browser by using [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

For details about how to do this follow the detailed steps below or watch the following [YouTube](https://youtu.be/3RTHY3jScmA) video.


## Step 1 - Forking the Microsoft Graph Postman collection
To use the Postman collection you will need to fork it to your own Postman workspace. This has to be done from the web browser.

1. Navigate to [Postman](https://www.postman.com/) and register and sign into Postman.
2. Navigate to [Microsoft Graph Postman Collection](https://www.postman.com/microsoftgraph/workspace/microsoft-graph/collection/455214-085f7047-1bec-4570-9ed0-3a7253be148c/fork) in your web browser.
3. Fill in a label for your own fork. This can be any text.
4. Under Workspace ensure that **My Workspace** is selected in the drop down. 
5. Click the **Fork** button.

You will now be redirected to a fork of the main Microsoft Graph Postman collection in your own workspace.

## Step 2 - (Optional - Postman Web browser only) Download the Postman Agent
To use this particular postman collection in your web browser you will need to download the [Postman Desktop Agent](https://www.postman.com/downloads). You will not be able to use Postman for the web without this due to CORS restrictions in the web browser. 

You do not need the agent if you are using the Postman for Windows app. If you open Postman for Windows you will now see this forked collection in your workspace.

## Step 3 - Create an Azure AD application
To use this collection in your own developer tenant you will need to create a Azure AD application and give it the appropriate permissions for the requests you would like to call. If you do not have a developer tenant you can sign up for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).

1. Navigate and sign into [portal.azure.com](https://portal.azure.com/) with your developer tenant administration account.
2. Click on **Azure Active Directory** icon under **Azure Services**.
3. Click on **App registrations** in the left hand menu.
4. Click on **New registration** in the horizontal menu.
5. Set the **Application name** to `Postman`.
6. Set the **Redirect URI** to `https://oauth.pstmn.io/v1/browser-callback`
7. Click **Register** button.
8. Click on **API Permissions** in left hand menu.
9. Click on **Add a permission** in the horizontal menu. Then select **Microsoft Graph** and then **Delegated Permissions**.
10. Type in `Mail.` and expand the **Mail** options and check **Mail.Read**
11. Additionally click **Application permissions** and type in `User.` **Application Permissions**.
12. Expand the **User** options and check **User.Read.All**.
13. Click **Add permissions**.
14. Now click **Grant admin consent for** in the horizontal menu. Click **Yes**.
15. Click on the **Overview** option in the left hand menu. From this screen you can obtain the **Application (client) ID** and **Directory (tenant) ID**. You will need these in step 4 below.
16. Click on **Certificates & secrets** option in the left hand menu. 
17. Click on **New client secret** and enter a description and click **Add** button. Hover over the new client secret **Value** and copy this. You will need this also in step 4 below.

The Azure AD application now has permissions to make requests on behalf of a user to call Mail.Read and as an application for User.Read.All.

## Step 4 - Configuring authentication
You will need to set up some environment variables used to retrieve an access token.

1. Click on the eye icon in the top right next to the **No environment** drop down.
2. Click **Add** in the top right of that pop up.
3. Change **New Environment** to **M365 Environment**.
4. Create a new variable called `ClientID` and set the **Current value** to the Application (client) ID value from the step 3.15.
5. Create a new variable called `ClientSecret` and  set the **Current value** to the Client Secret value from the step 3.17.
6. Create a new variable called `TenantID` and  set the **Current value** to the Directory (tenant) ID value from the step 3.15.
7. Select **Save**/**Update**. 
8. Close the **Manage Environments** dialog box. 
9. Double check that **M365 Environment** is selected in the drop down and not **No environment**.

## Step 5 - Obtain a delegated access token
As this is the first time you are running a request as a delegated authentication flow you will need to obtain an access token.

1. Hover over **On behalf of a User** folder and click on the ellipsis and select **Edit**
2. Click on the **Authorization** tab
3. Scroll down on the right hand side and click **Get New Access Token**.
4. Sign in with your developer tenant adminstrator.
5. Once this completes click **Proceed** and then click the **Use Token** button.
6. Then click **Update** button in bottom right of the dialog.

You now have a valid access token to use for delegated requests.

## Step 6 - Run your first delegated request
Inside of the **On Behalf of a User** folder there are requests for various Microsoft Graph workloads you can call.

1. Expand the **On behalf of a User** folder and then expand the **Mail** folder.
2. Double click on **Get my messages** to open the request.
3. Click on **Send** button in top right next to URL.

You have now successfully made a Microsoft Graph call using delegated authentication.

## Step 7 - Obtain a application access token
As this is the first time you are running a request as a application authentication flow you will need to obtain an access token.

1. Hover over **Application** folder and click on the ellipsis and select **Edit**
2. Click on the **Authorization** tab
3. Scroll down on the right hand side and click **Get New Access Token**.
5. Once this completes click **Proceed** and then click the **Use Token** button.
6. Then click **Update** button in bottom right of the dialog.

You now have a valid access token to use for application requests.

## Step 8 - Run your first application request
Inside of the **Application** folder there are requests for various Microsoft Graph workloads you can call.

1. Expand the **Application** folder and then expand the **User** folder.
2. Double click on **Get Users** to open the request.
3. Click on **Send** button in top right next to URL.

You have now successfully made a Microsoft Graph call using application authentication.

You can follow these steps to make other requests to the Microsoft Graph. Remember that you will have to add permissions to your Azure AD application for other requests to work. Otherwise you will get permission denied errors in your responses.

### Contribute to the collection
If you want to contribute your own requests, currently you will require a license of Postman. You can simply make your changes to the forked collection and then hover over the collection top node and select **Create pull request**.

## See also
For details about how to do this, watch the following [YouTube](https://youtu.be/3RTHY3jScmA) video.


