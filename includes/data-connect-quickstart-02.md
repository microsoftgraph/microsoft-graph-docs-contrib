---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

Before you use Microsoft Graph Data Connect (Data Connect) for the first time, please work with your Microsoft 365 tenant admin to enable the Data Connect service for your tenant. 

For this tutorial, please ensure that you have an account with admin privileges available. You must complete this step to set up your first pipeline. We recommend having at least two users in your Microsoft 365 tenant with the **global administrator** role enabled.

- [Global Administrator built-in role](/entra/identity/role-based-access-control/permissions-reference#global-administrator).
- [Elevate access to gain the Global Administrator role](/azure/role-based-access-control/elevate-access-global-admin).

## Enable Microsoft Graph Data Connect in your Microsoft 365 tenant

Set up your Microsoft 365 tenant to enable the usage of Microsoft Graph Data Connect.

1. Open a browser, go to your [Microsoft 365 admin portal](https://admin.microsoft.com/), and sign in with your **admin** user. 

1. Select **Settings > Org settings**. You might have to choose **Show all** before you're able to view **Settings**.

1. In the **Services** tab (which should be the default selection), select **Microsoft Graph Data Connect**.

1. Select the checkbox to **Turn Microsoft Graph Data Connect on or off for your entire organization** and choose **Save**.
    
    ![A screenshot showing how to enable data connect in the Microsoft 365 admin center.](../concepts/images/data-connect-new-consent-flow-enable-mgdc.png)

1. Congratulations, you just enabled Microsoft Graph Data Connect for your organization!
