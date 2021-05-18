---
##title: "Register the app in the portal"
description: "Register the app in the portal"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---

<!--- # Register the app in the portal--->

Once all the prerequisites are in place, you will be able to register an application in the Azure AD admin center. The registration is necessary in order to authenticate the application and use it to make calls to the Microsoft Graph indexing API.

1. Go to the [Azure Active Directory admin center](https://aad.portal.azure.com/) and sign in with an administrator account.
2. Select **Azure Active Directory** in the left-hand pane, then select **App registrations** under Manage.
3. Select **New registration**.

:::image type="content" source="images/connectors-images/build2.png" alt-text="Contoso app registrations":::

4. Complete the **Register an application** form with the following values, then select **Register**.
  a. **Name** : Parts Inventory Connector
  b. **Supported account types** : Accounts in this organizational directory only (Microsoft only - Single tenant)
  c. **Redirect URI** : Leave blank

:::image type="content" source="images/connectors-images/build3-contoso-register-app.png" alt-text="Register an application":::

5. On the Parts Inventory Connector overview page, copy the values of **Application (client) ID and Directory (tenant) ID**. You will need both in the following section.

:::image type="content" source="images/connectors-images/build3-contoso-partsinv.png" alt-text="Parts inventory connector":::

6. Select **API Permissions** under **Manage**.
7. Select **Add a permission** , then select **Microsoft Graph**.
8. Select **Application permissions** , then select the **ExternalItem.ReadWrite.All** permission. Select **Add permissions**.

:::image type="content" source="images/connectors-images/build4.png" alt-text="Request API permissions":::

9. Select **Grant admin consent for {TENANT},** then select **Yes** when prompted.

:::image type="content" source="images/connectors-images/build5.png" alt-text="Parts inventory connector api permissions":::

10. Select **Certificates &amp; secrets** under **Manage** , then select **New client secret**.
11. Enter a description and choose an expiration time for the secret, then select **Add**.

:::image type="content" source="images/connectors-images/build6.png" alt-text="Parts inventory connector certs and secrets":::

12. Copy and save the new secret, you will need it in the following section.
