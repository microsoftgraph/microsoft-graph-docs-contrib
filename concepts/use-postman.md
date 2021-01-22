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

For details about how to do this, follow the steps in this article, or watch the following video.

> [!VIDEO https://youtu.be/3RTHY3jScmA]


## Step 1 - Forking the Microsoft Graph Postman collection
To use the Postman collection, you will need to fork it to your own Postman workspace.

1. Go to https://www.postman.com/microsoftgraph/workspace/microsoft-graph/overview in your browser.
2. Hover over the **Microsoft Graph** collection on the left side, click the parathensis, and select **Create a fork**.
3. Type a label for your fork (this can be any name).
4. On the Workspace dropdown, select **My Workspace**,
5. Click the **Create fork** button.

You will be redirected to a fork of the main Microsoft Graph Postman collection.

## Step 2 - Download the Postman Agent
To use this particular Postman collection in your web browser, you will need to download the [Postman Desktop Agent](https://www.postman.com/downloads). YOu will not be able to use Postman for the web without this due to CORS restrictions in the browser.

Alternatively, now that you have forked the collection, you can open your **My workspace** in the [Postman App](https://www.postman.com/downloads).

## Step 3 - Create an Azure AD application
To use this collection in your own developer tenant, you will need to create an Azure AD application and give it the appropriate permissions for the requests you would like to call. If you do not have a developer tenant, you can sign up for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program).

1. Go to [portal.azure.com](https://portal.azure.com/) and sign in with your developer tenant administration account.
2. Under **Azure Services**, click **Azure Active Directory**.
3. On the left menu, click **App registrations**.
4. In the horizontal menu, click **New registration**.
5. Set the **Application name** to `Postman`.
6. Set the **Redirect URI** to `https://app.getpostman.com/oauth2/callback`.
7. Click **Register**.
8. In the left menu, click **API Permissions**.
9. In the horizontal menu, click **Add a permission**. Select **Microsoft Graph**, and then select **Delegated Permissions**.
10. Type in `Mail.`, expand the **Mail** options, and check **Mail.Read**
11. Click **Application permissions** and type `User.` **Application Permissions**.
12. Expand the **User** options and check **User.Read.All**.
13. Click **Add permissions**.
14. In the horizontal menu, click **Grant admin consent for**, and click **Yes**.
15. In the left menu, click the **Overview** option. From this screen, you can get the **Application (client) ID** and **Directory (tenant) ID**. You will need these in step 4.
16. In the left menu, click **Certificates & secrets**. 
17. Click **New client secret**, enter a description, and click **Add**. Hover over the new client secret **Value** and copy it. You will need this in step 4.

The Azure AD application now has permissions to make requests on behalf of a user to call Mail.Read and as an application for User.Read.All.

## Step 4 - Configuring authentication
After you have the **Microsoft Graph** collection fork in your own workspace, you will need to set up some environment variables used to retrieve an access token.

1. In the top right corner, choose the **No environment** dropdown.
2. Select **Microsoft Graph environment**.
3. Choose the **eye** icon to the right and then choose **Edit**.
4. Enter your Microsoft Identity Application in the **current value** (not **initial value**) variables: **ClientID**, **ClientSecret** and **TenantID**. 
5. Select **Update**. Close the **Manage Environments** dialog box. 

## Step 5 - Obtain a delegated access token
Because this is the first time you are running a request as a delegated authentication flow, you will need to get an access token.

1. Hover over **On behalf of a User** folder, click the parentheses, and select **Edit**.
2. Click the **Authorization** tab.
3. Scroll down on the right side and click **Get New Access Token**.
4. Sign in with your developer tenant adminstrator account.
5. Click **Proceed**, and then click **Use Token**.
6. Click **Update** button on the bottom right of the dialog.

You now have a valid access token to use for delegated requests.

## Step 6 - Run your first delegated request
Inside the **On Behalf of a User** folder are requests for various Microsoft Graph workloads you can call.

1. Expand the **On behalf of a User** folder and then expand the **Mail** folder.
2. Double-click **Get my messages** to open the request.
3. Click **Send** in top right next to the URL.

You have now successfully made a Microsoft Graph call using delegated authentication.

## Step 5 - Obtain a application access token
As this is the first time you are running a request as a application authentication flow you will need to obtain an access token.

1. Hover over **Application** folder and click on the parenthesis and select **Edit**
2. Click on the **Authorization** tab
3. Scroll down on the right hand side and click **Get New Access Token**.
5. Once this completes click **Proceed** and then click the **Use Token** button.
6. Then click **Update** button in bottom right of the dialog.

You now have a valid access token to use for application requests.

## Step 8 - Run your first application request
Inside the **Application** folder are requests for various Microsoft Graph workloads you can call.

1. Expand the **Application** folder and then expand the **User** folder.
2. Double-click **Get Users** to open the request.
3. Click **Send** in top right next to the URL.

You have now successfully made a Microsoft Graph call using application authentication.

You can follow these steps to make other requests to Microsoft Graph. Remember that you will have to add permissions to your Azure AD application for other requests to work. Otherwise, you will get permission denied errors in your responses.

## Contribute to the collection
If you want to contribute your own requests, you can make your changes to the collection, and then hover over the collection and select **Create pull request**.

For details about how to do this, watch the following video.

> [!VIDEO https://youtu.be/3RTHY3jScmA]
