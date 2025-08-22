---
title: Create a Microsoft Graph JSON Batch Custom Connector for Power Automate
description: In this tutorial, you build a custom connector in Power Automate that uses Microsoft Entra ID for authentication and Microsoft Graph to create groups.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Create a Microsoft Graph JSON Batch Custom Connector for Power Automate

<!-- cSpell:ignore Giphy -->

This tutorial teaches you how to create a custom Power Automate connector that calls Microsoft Graph.

> [!NOTE]
> This tutorial assumes you have read the [custom connector overview](/connectors/custom-connectors/) to understand custom connectors.

## Prerequisites

- Administrator access to a Microsoft 365 tenant. If you don't have a Microsoft 365 tenant, you might qualify for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program); for details, see the [FAQ](/office/developer-program/microsoft-365-developer-program-faq#who-qualifies-for-a-microsoft-365-e5-developer-subscription-). Alternatively, you can [sign up for a one-month free trial or purchase a Microsoft 365 plan](https://www.microsoft.com/microsoft-365/try).
- Access to [Microsoft Power Automate](https://powerautomate.microsoft.com/) with a Premium license. See [Power Automate licensing FAQ](/power-platform/admin/power-automate-licensing/faqs) for details. If you don't have a Premium license, you can sign up for a 90-day trial.

## Register an app in the Microsoft Entra admin center

1. Open a browser and navigate to the [Microsoft Entra admin center](https://entra.microsoft.com) and sign in using a Global administrator account.

1. Select **Microsoft Entra ID** in the left-hand navigation, expand **Identity**, expand **Applications**, then select **App registrations**.

    :::image type="content" source="images/entra-portal-app-registrations.png" alt-text="A screenshot of the App registrations":::

1. Choose the **New registration**. Enter `MS Graph Batch App` in the **Name** field. In the **Supported account types** section, select **Accounts in any organizational directory**. Leave the **Redirect URI** section blank and choose **Register**.

1. On the **MS Graph Batch App** page, copy the **Application (client) ID**. You need this value to configure your connector.

    :::image type="content" source="images/power-automate/app-id.png" alt-text="A screen shot of the registered application page":::

1. Choose **API permissions** under **Manage**. Choose **Add a permission** under **API permissions**.

1. In the **Request API permissions** page, choose the **Microsoft Graph**, then choose **Delegated permissions**. Search for `group`, then select the **Group.ReadWrite.All** delegated permission. Choose **Add permissions** at the bottom of the page.

1. Choose the **Certificates and secrets** entry in the **Manage** section of the **MS Graph Batch App** page, then choose **New client secret**. Enter a description, choose a duration, and select **Add**.

1. Copy the value for the new secret. You need this value to configure your connector.

    > [!IMPORTANT]
    > This step is critical as the secret isn't accessible once you leave this page.

To enable management of other services accessible via the Microsoft Graph, including Teams properties, you would need to select the appropriate scopes to enable managing specific services. For example, to extend our solution to enable creating OneNote Notebooks or Planner plans, buckets and tasks you would need to add the required permission scopes for the relevant APIs.

## Create the connector

1. Open a browser and navigate to [Microsoft Power Automate](https://make.powerautomate.com/). Sign in with your Microsoft 365 tenant administrator account. Choose **Custom connectors** on the left-hand side menu. If **Custom connectors** isn't present in the menu, select **More**, then **Discover all**.

1. On the **Custom Connectors** page, choose the **New custom connector** link in the top right, then select the **Create from blank** item in the drop-down menu.

1. Enter `MS Graph Batch Connector` in the **Connector name** text box. Choose **Continue**.

1. On the connector configuration **General** page, fill in the fields as follows, then select the **Security** button to continue.

    - **Scheme**: HTTPS
    - **Host**: `graph.microsoft.com`
    - **Base URL**: `/`

1. On the **Security** page, fill in the fields as follows, then select the **Definition** button to continue.

    - **Choose what authentication is implemented by your API**: `OAuth 2.0`
    - **Identity Provider**: `Microsoft Entra ID`
    - **Client id**: the application ID from your app registration
    - **Client secret**: the client secret from your app registration
    - **Login url**: `https://login.microsoftonline.com`
    - **Tenant ID**: `common`
    - **Resource URL**: `https://graph.microsoft.com` (no trailing /)
    - **Scope**: Leave blank

1. On the **Definition** page, select **New Action** and fill in the fields as follows.

    - **Summary**: `Batch`
    - **Description**: `Make batch request with delegated permissions`
    - **Operation ID**: `Batch`
    - **Visibility**: `important`

1. Select **Import from sample** under **Request** and fill in the fields as follows. Select **Import** to continue.

    - **Verb**: `POST`
    - **URL**: `https://graph.microsoft.com/v1.0/$batch`
    - **Headers**: Leave blank
    - **Body**: `{}`

1. Select **Create connector** on the top-right.

1. After the connector is created, copy the generated **Redirect URL** from the **Security** tab.

1. Update your app registration in the Microsoft Entra admin center. Select **Authentication** on the left-hand side menu. Select **Add a platform**, then select **Web**. Enter the redirect URL copied from the previous step in the **Redirect URIs**, then select **Configure**.

    :::image type="content" source="images/power-automate/update-app-reg.png" alt-text="A screen shot of the Redirect URIs blade in the Entra admin center":::

## Authorize the connector

The final configuration step to ensure the connector is ready for use is to authorize and test the custom connector to create a cached connection.

> [!IMPORTANT]
> The following steps require that you're logged in with administrator privileges.

1. In [Microsoft Power Automate](https://make.powerautomate.com), choose **Connections** on the left-hand side menu. If **Connections** isn't present in the menu, select **More**. Select the **New connection** link.

1. Find your custom connector and complete the connection by selecting it, then choosing **Create**. Sign in with your Microsoft 365 tenant administrator's account.

    :::image type="content" source="images/power-automate/connection-sign-in.png" alt-text="A screen shot of the connections list":::

1. When prompted for the requested permissions, check **Consent on behalf of your organization** and then choose **Accept** to authorize permissions.

After you authorize the permissions, a connection is created in Power Automate. The custom connector is now configured and enabled. There might be a delay in permissions being applied and available, but the connector is now configured.

## Create a flow

1. In Microsoft Power Automate, choose **My flows** in the left-hand navigation. Choose **New flow**, then **Instant cloud flow**. Enter `Create Team` for **Flow name**, then select **Manually trigger a flow** under **Choose how to trigger this flow**. Select **Create**.

1. Choose **+** under the **Manually trigger a flow** item. Under **By connector**, select **Custom**. Type `Batch` in the search box, then select **Batch** under **MS Graph Batch Connector**.

1. In the properties window, change the name from **Batch** to `Batch POST-groups`.

1. In the **Advanced parameters** dropdown, select **body**. Add the following code into the **Body** text box of the action.

    ```json
    {
      "requests": [
        {
          "url": "/groups",
          "method": "POST",
          "id": 1,
          "headers": { "Content-Type": "application/json" },
          "body": {
            "description": "REPLACE",
            "displayName": "REPLACE",
            "groupTypes": ["Unified"],
            "mailEnabled": true,
            "mailNickname": "REPLACE",
            "securityEnabled": false
          }
        }
      ]
    }
    ```

1. Replace each `REPLACE` placeholder by selecting the `Name` value from the manual trigger from the **Add dynamic content** menu.

    :::image type="content" source="images/power-automate/dynamic-content.png" alt-text="A screen shot of the dynamic content input":::

1. Choose **+** under the **Batch POST-groups** item. Search for `delay` and add a **Delay** action and configure for 1 minute.

1. Choose **+** under the **Delay** item, and add the **Batch** action from the custom connector.

1. In the properties window, change the name from **Batch** to `Batch PUT-team`.

1. In the **Advanced parameters** dropdown, select **body**. Add the following code into the **Body** text box of the action.

    ```json
    {
      "requests": [
        {
          "id": 1,
          "url": "/groups/REPLACE/team",
          "method": "PUT",
          "headers": {
            "Content-Type": "application/json"
          },
          "body": {
            "memberSettings": {
              "allowCreateUpdateChannels": true
            },
            "messagingSettings": {
              "allowUserEditMessages": true,
              "allowUserDeleteMessages": true
            },
            "funSettings": {
              "allowGiphy": true,
              "giphyContentRating": "strict"
            }
          }
        }
      ]
    }
    ```

1. Select the `REPLACE` placeholder, then select **Expression** in the dynamic content pane. Add the following formula into the **Expression**, then select **Add**.

    ```javascript
    body('Batch_POST-groups').responses[0].body.id
    ```

    :::image type="content" source="images/power-automate/flow-formula.png" alt-text="A screen shot of the expression in the dynamic content pane":::

    This formula specifies that we want to use the group ID from the result of the first action.

1. Choose **Save**, then choose **Test** to execute the flow.

    > [!TIP]
    > If you receive an error like `The template validation failed: 'The action(s) 'Batch_POST-groups' referenced by 'inputs' in action 'Batch_2' are not defined in the template'`, the expression is incorrect and likely references a flow action it can't find. Ensure that the action name you're referencing matches exactly.

1. Choose the **Manually** action radio button and choose **Test**. Provide a name without spaces, and choose **Run flow** to create a Team.

1. Finally, choose **Done** to see the activity log. Once the flow completes, your Microsoft 365 Group and Team are configured. Select the Batch action items to view the results of the JSON Batch calls. The `outputs` of the `Batch PUT-team` action should have a status code of 201 for a successful Team association.

## Make multiple API calls in a single batch

The Flow you created in the previous section uses the `$batch` API to make two individual requests to the Microsoft Graph. Calling the `$batch` endpoint this way provides some benefit and flexibility, but the true power of the `$batch` endpoint comes when executing multiple requests to Microsoft Graph in a single `$batch` call. Extend the example of creating a Unified Group and associating a Team to include creating multiple default channels for the Team in a single `$batch` request.

1. In Power Automate, select your **Create Team** flow, and choose **Edit**.

1. Choose **+** under the **Batch PUT-team** item, and add the **Batch** action from the custom connector.

1. In the properties window, change the name from **Batch** to `Batch PUT-team`.

1. In the **Advanced parameters** dropdown, select **body**. Add the following code into the **Body** text box of the action.

    ```json
    {
      "requests": [
        {
          "id": 1,
          "url": "/teams/REPLACE/channels",
          "headers": {
            "Content-Type": "application/json"
          },
          "method": "POST",
          "body": {
            "displayName": "Marketing Collateral",
            "description": "Marketing collateral and documentation."
          }
        },
        {
          "id": 2,
          "dependsOn": [
            "1"
          ],
          "url": "/teams/REPLACE/channels",
          "headers": {
            "Content-Type": "application/json"
          },
          "method": "POST",
          "body": {
            "displayName": "Vendor Contracts",
            "description": "Vendor documents, contracts, agreements and schedules."
          }
        },
        {
          "id": 3,
          "dependsOn": [
            "2"
          ],
          "url": "/teams/REPLACE/channels",
          "headers": {
            "Content-Type": "application/json"
          },
          "method": "POST",
          "body": {
            "displayName": "General Client Agreements",
            "description": "General Client documents and agreements."
          }
        }
      ]
    }
    ```

    Notice the three requests use the [dependsOn](/graph/json-batching#sequencing-requests-with-the-dependson-property) property to specify a sequence order, and each performs a POST request to create a new channel in the new Team.

1. Select each instance of the `REPLACE` placeholder, then select **Expression** in the dynamic content pane. Add the following formula into the **Expression**.

    ```javascript
    body('Batch_PUT-team').responses[0].body.id
    ```

1. **Save** and **Test** the updated flow. Wait for the flow to complete, then verify that the **Batch POST-channels** action has a 201 HTTP status code.

1. Browse to [Microsoft Teams](https://teams.microsoft.com) and sign in with your Microsoft 365 tenant administrator account. Verify that the team you just created appears and includes the three channels created by the `$batch` request.

While the `Batch POST-channels` action was implemented in this tutorial as a separate action, the calls to create the channels could be added as extra calls in the `Batch PUT-team` action. This would create the Team and all Channels in a single batch call. Give that a try on your own.

Finally, remember that [JSON Batching](/graph/json-batching) calls return an HTTP status code for each request. In a production process, you might want to combine post processing of the results with an [`Apply to each`](/power-automate/apply-to-each) action and validate each individual response has a 201 status code or compensate for any other status codes received.

## Related content

- [Power Platform custom connectors overview](/connectors/custom-connectors)
- [Combine multiple HTTP requests using JSON batching](/graph/json-batching)
