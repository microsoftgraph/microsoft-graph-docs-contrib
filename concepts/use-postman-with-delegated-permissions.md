---
title: " Use Postman for Microsoft Graph with Delegated Permissions"
description: "Postman is an API platform for building and using APIs. Use the Microsoft Graph Postman collection to run a delegated request."
author: "jasonjoh"
ms.localizationpriority: high
---

# Use Postman for Microsoft Graph with Delegated Permissions

In the last article, you set up the environment to [Use Postman with the Microsoft API](use-postman.md). In this article, you'll learn to make a Microsoft Graph call using delegated authentication.

If you would like to make a Microsoft Graph call using application authentication, proceed to the next article: [Use Postman with App-only authentication](use-postman-with-app-only-authentication.md).

## Step 1: Get a delegated access token

The first time you run a request as a delegated authentication flow, you need to get an access token.

1. Select the **Delegated** folder.
1. Select the **Authorization** tab.
1. In the **Configure New Token** section, make sure the callback URL matches with what you provided when you created the application registration (URL listed in [Use Postman with the Microsoft Graph API](https://learn.microsoft.com/en-us/graph/use-postman#step-3-create-an-azure-ad-application) step 3.7). Leave all the fields as preconfigured, including the **Grant type**, which is set to `Authorization Code`.
1. Scroll down on the right and select **Get New Access Token**.
1. Sign in with your developer tenant administrator account.
1. Select **Proceed**, and then select the **Use Token** button.

You now have a valid access token to use for delegated requests.

## Step 2: Run your first delegated request

Inside the **Delegated** folder are requests for various Microsoft Graph workloads that you can call.

1. Expand the **Delegated** folder, and then expand the **Mail** folder.
1. Double-click **Get my messages** to open the request.
1. On the top right, select **Send**.

You have now successfully made a Microsoft Graph call using delegated authentication.

## Next steps

Now that you have successfully made a Microsoft Graph call using delegated authentication, proceed to the next article to run your first application request.

- [Use Postman with App-only Authentication](use-postman-with-app-only-authentication.md)

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
