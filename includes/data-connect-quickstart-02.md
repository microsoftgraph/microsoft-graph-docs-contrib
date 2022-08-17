---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

Prior to using Microsoft Graph Data Connect for the first time, you need to configure your Microsoft 365 tenant. This involves turning on the service and configuring a security group with permissions to approve data extraction requests.

## Configure Microsoft Graph Data Connect consent request approver group

In this step, you will setup your Microsoft 365 tenant to enable usage of Microsoft Graph Data Connect.

1. Open a browser and go to your [Microsoft 365 Admin Portal](https://admin.microsoft.com/).

1. On the sidebar navigation, select **Active teams & groups**.

    ![A screenshot showing the active groups in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-active-groups-new.png)

1. Select the **Add a group** button.

1. Use the following to create the new **Mail-Enabled or Distribution** security group and select the **Add** button.
   - **Type**: Distribution List or Mail-Enabled

    ![A screenshot showing a user selecting the mail-enabled security for a new group in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-sec-distr-new.png)

   - **Name**: Consent Request Approvers
    <!-- //TODO for Gladys: Please make sure the screenshot flow below matches the flow of the new screenshots above-->
    <!-- //TODO for Richa: Update the titles of the button based on the screenshots from Gladys -->
    ![A screenshot showing a user is giving the group a name of "Consent Request Approvers" in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-cons-apprv.png)

   - **Email Prefix**: consentrequestapprovers

    ![A screenshot showing a user creating the email address for the previously created group in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-cons-apprv-pref.png)


1. It may take some time before the newly created group shows up in the list. When the group has been created, please select it.

1. Go to the **Active groups** option again and search for the group you just created.

1. Select the group and in the **Members** tab, select **View all and manage members**.

1. Add the two users that you enabled the **Global administrator** role to this new group. Both users added into this group must have **Global adminstrator** role.

## Enable Microsoft Graph Data Connect in your Microsoft 365 tenant

In this step, you will enable the Microsoft Graph Data Connect service on your Microsoft 365 tenant.

1. While you are still signed in to the Microsoft 365 Admin Portal, select the **Settings > Org settings** menu item.

1. Select the **Microsoft Graph Data Connect** service.

1. Select the checkbox that says **turn Microsoft Graph Data Connect on or off for your entire organization** to enable Data Connect.

    ![A screenshot showing the checkbox you have to tick in order to enable Data Connect for your entire organization.](../data-connect-m365-consent-approver-new.png)

1. Enter **Consent Request Approvers** (or the name of the group you created previously) in the **group of users to make approval decisions** and select **Save**.
