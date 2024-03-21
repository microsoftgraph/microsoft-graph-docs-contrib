---
title: "Use delegated authentication with Postman for Microsoft Graph"
description: "Learn how to use delegated authentication with Postman for Microsoft Graph to run requests on behalf of the signed-in user."
author: "jasonjoh"
ms.localizationpriority: high
---

# Use delegated authentication with Postman for Microsoft Graph

This article describes how you can use delegated authentication with Postman for Microsoft Graph to run requests on behalf of the signed-in user.

## Prerequisite

Complete the setup instructions in the [Use Postman with the Microsoft Graph API](use-postman.md) article, before you can continue with this tutorial.

## Step 1: Get a delegated access token

The first time you run a request as a delegated authentication flow, you need to get an access token:

1. Select the **Delegated** folder.
1. Select the **Authorization** tab.
1. In the **Configure New Token** section, make sure the callback URL matches with what you provided when you created the application registration, for example, `https://oauth.pstmn.io/v1/browser-callback`. Leave all the fields as preconfigured, including the **Grant type** that is set to `Authorization Code`.
1. Scroll down on the right and select **Get New Access Token**.
1. Sign in with your developer tenant administrator account.
1. Select **Proceed**, and then select the **Use Token** button.

You have now a valid access token to use for delegated requests.

## Step 2: Run your first delegated request

The **Delegated** folder contains many requests for Microsoft Graph workloads that you can consume:

1. Expand the **Delegated** folder, and then expand the **Mail** folder.
1. Double-click **Get my messages** to open the request.
1. On the top right, select **Send**.

You have now successfully run a Microsoft Graph request using delegated authentication.

You can repeat these steps to run other requests to Microsoft Graph. Note that you have to add [permissions](permissions-reference.md) to your Microsoft Entra application for other requests to work; otherwise, you get permission denied errors in your responses. To find the right permissions, check the **Permissions** section of the relevant API and look for the delegated permission type.

## Next steps

Now that you have successfully made a Microsoft Graph call using delegated authentication, proceed to the next article to run your first application request.

- [Use app-only authentication with Postman for Microsoft Graph](use-postman-with-app-only-authentication.md)

### Contributing to the collection

If you want to contribute your own requests to the Microsoft Graph Postman collection, you need a Postman license. You can make your changes to the forked collection, and then hover over the collection top node and select **Create pull request**.

## Known issues

### Authentication fails with "You can't get there from here"

Certain [conditional access policies](/azure/active-directory/conditional-access/overview) configured by your organization's administrators can block the authentication flow from Postman. To explore alternatives, contact your administrators.

### "Access to OData is disabled."

See [403 Forbidden "Access to OData is disabled."](resolve-auth-errors.md#403-forbidden-access-to-odata-is-disabled).

## Related content

- [Use Postman with the Microsoft Graph API](use-postman.md)
- [Use app-only authentication with Postman for Microsoft Graph](use-postman-with-app-only-authentication.md)
- [Use Postman with the Microsoft Graph connectors API](connecting-external-content-connectors-api-postman.md)
