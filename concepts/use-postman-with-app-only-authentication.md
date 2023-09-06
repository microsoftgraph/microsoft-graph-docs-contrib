---
title: "Use Postman for Microsoft Graph with App-only Authentication"
description: "Postman is an API platform for building and using APIs. Use the Microsoft Graph Postman collection to run an application request."
author: "jasonjoh"
ms.localizationpriority: high
---

# Use Postman for Microsoft Graph with App-only Authentication

In the last article, you made a [Microsoft Graph call using delegated authentication](use-postman-with-delegated-permissions.md). In this article, you'll learn to make a Microsoft Graph call using application authentication.

If you haven't completed the setup instructions detailed in this article: [Use Postman with the Microsoft Graph API](use-postman.md), complete those steps before returning to this article.

## Step 1: Get an application access token

The first time you run a request as an application authentication flow, you need to get an access token. To do so:

1. Select the **Application** folder.
1. Select the **Authorization** tab.
1. In the **Configure New Token** section, leave all the fields as preconfigured, including the **Grant type**, which is set to `Client Credentials`.
1. Scroll down on the right and select **Get New Access Token**.
1. Select **Proceed**, and then select the **Use Token** button.

You now have a valid access token to use for application requests.

## Step 2: Run your first application request

Inside the **Application** folder are requests for various Microsoft Graph workloads that you can call.

1. Expand the **Application** folder, and then expand the **User** folder.
1. Double-click **Get Users** to open the request.
1. On the top right, select **Send**Access to OData is disabled.

You have now successfully made a Microsoft Graph call using application authentication.

You can follow these steps to make other requests to Microsoft Graph. Remember that you have to add [permissions](permissions-reference.md) to your Azure AD application for other requests to work; otherwise, you get permission denied errors in your responses. To find the right permissions, check the Permissions section of the relevant API, and look for Application permission type.

### Contribute to the collection

If you want to contribute your own requests, you need a Postman license. You can make your changes to the forked collection, and then hover over the collection top node and select **Create pull request**.

## Known issues

### Authentication fails with "You can't get there from here"

Certain [conditional access policies](/azure/active-directory/conditional-access/overview) configured by your organization's administrators can block the authentication flow from Postman. To explore alternatives, contact your administrators.

### "Access to OData is disabled."

See [403 Forbidden "Access to OData is disabled."](resolve-auth-errors.md#403-forbidden-access-to-odata-is-disabled).

## See also

- [Use Postman with the Microsoft Graph connectors API](connecting-external-content-connectors-api-postman.md)
