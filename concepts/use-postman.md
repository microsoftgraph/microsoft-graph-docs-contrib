---
title: "Use Postman with the Microsoft Graph API"
description: "Postman is an API platform for building and using APIs. Use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs."
author: "jasonjoh"
ms.localizationpriority: high
---

# Use Postman with the Microsoft Graph API

Postman is an API platform for building and using APIs. Postman simplifies each step of the API lifecycle and streamlines collaboration so that you can create better APIs faster.

You can use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes.

![Image of Postman](images/postman-screenshot.png)

This article explains how to get up and running with Postman and Microsoft Graph. You can also explore Microsoft Graph APIs directly in your web browser by using [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

For details about how to use Postman, follow the steps in this article or watch the [Getting started with Microsoft Graph Postman workspace](https://youtu.be/3RTHY3jScmA) video.

## Step 1: Fork the Microsoft Graph Postman collection

To use the Postman collection, fork it to your own Postman workspace. Do this from the web browser.

1. Go to [Postman](https://www.postman.com/) and sign in.
1. Go to the Postman collection labeled [Microsoft Graph](https://www.postman.com/microsoftgraph/workspace/microsoft-graph/collection/455214-085f7047-1bec-4570-9ed0-3a7253be148c/fork).
1. Fill in a label for your own fork; this can be any text.
1. Under **Workspace**, ensure that **My Workspace** is selected in the dropdown list.
1. Select **Fork Collection**.

You are redirected to a fork of the main Microsoft Graph Postman collection in your own workspace.

## Step 2: Download the Postman Agent (optional - Postman web browser only) 

To use this particular Postman collection in your web browser, download the [Postman Desktop Agent](https://www.postman.com/downloads). You can't use Postman for the web without this due to CORS restrictions in the web browser.

You don't need the agent if you're using the Postman for Windows app. If you open Postman for Windows, you see this forked collection in your workspace.

## Step 3: Create an Azure AD application

To use this collection in your own developer tenant, create an Azure Active Directory (Azure AD) application and give it the appropriate permissions for the requests that you want to call. If you don't have a developer tenant, you can sign up for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).

1. Go to [portal.azure.com](https://portal.azure.com/) and sign in with your developer tenant administrator account.
1. Under **Azure Services**, select **Azure Active Directory**.
1. On the left menu, select **App registrations**.
1. On the horizontal menu, select **New registration**.
1. Set the **Application name** to `Postman`.
1. From the dropdown menu, select **Web**.
1. Set the **Redirect URI** to `https://oauth.pstmn.io/v1/browser-callback`.
1. Select **Register**.
1. On the left menu, select **API Permissions**.
1. On the horizontal menu, select **Add a permission**, select **Microsoft Graph**, and then select **Delegated Permissions**.
1. Type `Mail.`, expand the **Mail** options, and then select `Mail.Read`.
1. Select **Application permissions**, type `User.`, and then select **Application Permissions**.
1. Expand the **User** options, and then select `User.Read.All`.
1. Select **Add permissions**.
1. On the horizontal menu, select **Grant admin consent for**, and then select **Yes**.
1. On the left menu, select **Overview**. From here, you can get the **application (client) ID** and **directory (tenant) ID**. You'll need these in step 4.
1. On the left menu, select **Certificates and secrets**.
1. Select **New client secret**, enter a description, and then select **Add**. Hover over the new client secret **Value** and copy it; you'll need this in step 4.

The application now has two permissions configured. `Mail.Read` is added as a delegated permission, which is a permission that requires a signed-in user. The application can read mail on behalf of the user. `User.Read.All` is added as an application permission, which is a permission that does not require a signed-in user. The application can read users in Azure AD.

## Step 4: Configure authentication

In this step, you set up the environment variables in Postman that you use to retrieve an access token.

1. Go to [Fork environment](https://www.postman.com/microsoftgraph/workspace/microsoft-graph/environment/455214-efbc69b2-69bd-402e-9e72-850b3a49bb21/fork).
1. Add a label for the fork. This can be any text.
1. Under **Workspace**, ensure that **My Workspace** is selected in the dropdown list.
1. Select **Fork Environment**.
1. In `ClientID`, set the **Current value** to the application (client) ID value from step 3.16.
1. In `ClientSecret`, set the **Current value** to the client secret value from step 3.18.
1. In `TenantID`, set the **Current value** to the directory (tenant) ID value from step 3.16.
1. On the top right, select **Save**.
1. Close the **Manage Environments** tab.
1. On the top right, next to the eye icon, verify that **M365 Environment** is selected in the dropdown and not **No environment**.

## Step 5: Get a delegated access token

Because this is the first time that you are running a request as a delegated authentication flow, you need to get an access token.

1. Select the **Delegated** folder.
1. Select the **Authorization** tab.
1. In the **Configure New Token** section, select the **Configuration Options** tab. Make sure the call back URL matches with what you provided when you created the application registration. Leave all the fields as pre-configured, including the **Grant type**, which is set to `Authorization Code`.
1. Scroll down on the right and select **Get New Access Token**.
1. Sign in with your developer tenant administrator account.
1. Select **Proceed**, and then select the **Use Token** button.

You now have a valid access token to use for delegated requests.

## Step 6: Run your first delegated request

Inside the **Delegated** folder are requests for various Microsoft Graph workloads that you can call.

1. Expand the **Delegated** folder, and then expand the **Mail** folder.
1. Double-click **Get my messages** to open the request.
1. On the top right, select **Send**.

You have now successfully made a Microsoft Graph call using delegated authentication.

## Step 7: Get an application access token

Because this is the first time that you are running a request as an application authentication flow, you need to get an access token.

1. Select the **Application** folder.
1. Select the **Authorization** tab.
1. In the **Configure New Token** section, select the **Configuration Options** tab. Leave all the fields as pre-configured, including the **Grant type**, which is set to `Client Credentials`.
1. Scroll down on the right and select **Get New Access Token**.
1. Select **Proceed**, and then select the **Use Token** button.

You now have a valid access token to use for application requests.

## Step 8: Run your first application request

Inside the **Application** folder are requests for various Microsoft Graph workloads that you can call.

1. Expand the **Application** folder, and then expand the **User** folder.
1. Double-click **Get Users** to open the request.
1. On the top right, select **Send**.

You have now successfully made a Microsoft Graph call using application authentication.

You can follow these steps to make other requests to Microsoft Graph. Remember that you have to add permissions to your Azure AD application for other requests to work; otherwise, you get permission denied errors in your responses.

### Contribute to the collection

If you want to contribute your own requests, you need a Postman license. You can make your changes to the forked collection, and then hover over the collection top node and select **Create pull request**.

## Known issues

### Authentication fails with "You can't get there from here"

Certain [conditional access policies](/azure/active-directory/conditional-access/overview) configured by your organization's administrators can block the authentication flow from Postman. To explore alternatives, contact your administrators.

## See also

- [Use Postman with the Microsoft Graph connectors API](connecting-external-content-connectors-api-postman.md)
