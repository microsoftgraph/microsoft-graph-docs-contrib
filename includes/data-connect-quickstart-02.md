---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->


Prior to using Microsoft Graph Data Connect (Data Connect) for the first time, you will need to configure your Microsoft 365 tenant. This involves turning on the service to approve data extraction requests.

The first tab goes over our new and updated consent flow. We highly recommend new and current customers to use this new consent flow for a smoother and secure onboarding process. The later tab follows our previous guidance on our soon to be deprecated consent process involving Priviledged Access Management (PAM).

## [Enable Microsoft Graph Data Connect in your Microsoft 365 tenant](#tab/NewConsentFlow)

This step describes how you enable the Data Connect service on your Microsoft 365 tenant.

1. Open a browser, go to your [Microsoft 365 admin center](https://admin.microsoft.com/), and sign in with your "admin" user.

2. On the left navigation pane, select **Settings > Org settings**. You might have to choose **Show all** before you can view **Settings**.

3. In the **Services** tab (which should be the default selection), select the **Microsoft Graph Data Connect** service.

4. Select the checkbox that says **Turn Microsoft Graph Data Connect on or off for your entire organization.** and choose **Save**.

    ![A screenshot that shows the checkbox you have to tick to enable Microsoft Graph Data Connect for your entire organization.](../concepts/images/data-connect-m365-consent-approver-new.png)  

5. Congratulations! You've just enabled Microsoft Graph Data Connect for your organization.

## [Enable Microsoft Graph Data Connect in your Microsoft 365 tenant](#tab/PAMConsentFlow)
This page goes over the steps for our former consent flow involving the Priviledged Access Management (PAM). We recommend new and current customers to refer to our newer consent flow on the previous tab.

Before using Microsoft Graph Data Connect for the first time, you will need to configure your Microsoft 365 tenant. This involves turning on the service and configuring a security group with permissions to approve data extraction requests.

## Grant Azure AD users the global administrator role

 Ensure that two users in your Microsoft 365 tenant have the **global administrator** role enabled.

- [Global Administrator built-in role](/azure/active-directory/roles/permissions-reference#global-administrator).
- [Elevate access to gain the Global Administrator role](/azure/role-based-access-control/elevate-access-global-admin).

## Configure Microsoft Graph Data Connect consent request approver group

Set up your Microsoft 365 tenant to enable the usage of Microsoft Graph Data Connect.

1. Open a browser and go to your [Microsoft 365 Admin Portal](https://admin.microsoft.com/).

1. On the sidebar navigation, click **Active teams & Groups**.

    ![A screenshot showing the active groups in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-act-grp.png)

1. Select **Add a group**.

1. Use the following page to create the new **mail-enabled** security group.
   - **Type**: Select Mail-enabled security.

    ![A screenshot showing a user selecting the mail-enabled security for a new group in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-mail-sec.png)

   - **Name**: Enter consent request approvers.

    ![A screenshot showing a user is giving the group a name of "Consent Request Approvers" in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-cons-apprv.png)

   - **Owners**: Select **Owners** in the left pane and add at least one owner for the group.
   - **Members**: Select **Members** and add the two users who have been given the **global administrator** role to this group.
   - **Group email address**: Enter *consentrequestapprovers*.

    ![A screenshot showing a user creating the email address for the previously created group in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-cons-apprv-pref.png)

1. Click **Finish**. It can take up to an hour before the newly created group shows up in the list. 


## Enable Microsoft Graph Data Connect in your Microsoft 365 tenant

Enable the Microsoft Graph Data Connect service on your Microsoft 365 tenant.

1. While you are still signed in to the Microsoft 365 Admin Portal, go to **Settings > Org settings**. You may have to click on **Show all** to see the **Settings** option.

1. Select the **Microsoft Graph Data Connect** service.

    ![A screenshot showing the "Services" in the "Org settings" blade. A user is toggling on the Microsoft Graph Data Connect service in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-mgdc-toggle.png)

1. Select **turn Microsoft Graph Data Connect on or off for your entire organization** to enable Data Connect.

    ![A screenshot showing the checkbox you have to tick in order to enable Data Connect for your entire organization.](../concepts/images/data-connect-m365-enable-mgdc-for-org.png)

1. Enter **Consent Request Approvers** (or the name of the group you created previously) in the **group of users to make approval decisions** and click **Save**.