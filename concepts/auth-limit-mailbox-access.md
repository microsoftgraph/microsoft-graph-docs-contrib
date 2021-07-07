---
title: "Limiting application permissions to specific Exchange Online mailboxes"
description: "To scope an app's application permissions to specific Exchange Online mailboxes, you will need to create application access policies."
author: "abheek-das"
localization_priority: Priority
ms.prod: "applications"
---

# Limiting application permissions to specific Exchange Online mailboxes 

Administrators who want to limit app access to specific mailboxes can create an application access policy by using the **New-ApplicationAccessPolicy** PowerShell cmdlet. This article covers the basic steps to configure access control. These steps are specific to Exchange Online resources and do not apply to other Microsoft Graph workloads. 

## Background
Some apps call Microsoft Graph using their own identity and not on behalf of a user. These are usually background services or daemon apps that run on a server without the presence of a signed-in user. These apps make use of [OAuth 2.0 client credentials grant flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) to authenticate and are configured with application permissions, which by default enable such apps to access _all_ mailboxes in a organization on Exchange Online. For example, the Mail.Read application permission allows apps to read mail in all mailboxes without a signed-in user. 

There are scenarios where administrators may want to limit an app from accessing _all_ mailboxes in the organization. By creating an application access policy for the organization, administrators can limit third-party app access to only a specific set Exchange Online mailboxes. 

> [!NOTE]
> Once an application access policy is configured for an organization, it applies to any app that uses Microsoft Graph API or Exchange Web Services to access Exchange Online mailboxes.

As further described in the [Supported permissions and additional resources](#supported-permissions-and-additional-resources) section below, application access policy restricts mailbox access for apps that have been granted any of the listed Microsoft Graph or Exchange Web Services permission scopes.

## Configure ApplicationAccessPolicy

To configure an application access policy and limit the scope of application permissions:
1.	Connect to Exchange Online PowerShell. For details, see [Connect to Exchange Online PowerShell](/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell?view=exchange-ps).

2.	Identify the app’s client ID and a mail-enabled security group to restrict the app’s access to.

    - Identify the app’s application (client) ID in the [Azure app registration portal](https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    - Create a new mail-enabled security group or use an existing one and identify the email address for the group. 

3.	Create an application access policy. 

    Run the following command, replacing the **AppId**, **PolicyScopeGroupId**, and **Description** arguments.
    ```sh 
    New-ApplicationAccessPolicy -AppId e7e4dbfc-046f-4074-9b3b-2ae8f144f59b -PolicyScopeGroupId EvenUsers@contoso.com -AccessRight RestrictAccess -Description "Restrict this app to members of distribution group EvenUsers."
    ```
4.	Test the newly created application access policy.

    Run the following command, replacing the **AppId** and **Identity** arguments.
    ```sh
    Test-ApplicationAccessPolicy -Identity user1@contoso.com -AppId e7e4dbfc-046-4074-9b3b-2ae8f144f59b 
    ```
    The output of this command will indicate whether the app has access to User1’s mailbox.

>**Note: Changes to application access policies can take up to 30 minutes to take effect in Microsoft Graph REST API calls.**

## Supported permissions and additional resources
Administrators can use ApplicationAccessPolicy cmdlets to control mailbox access of an app that has been granted any of the following application permissions for Microsoft Graph API: 
- `Mail.Read`
- `Mail.ReadBasic`
- `Mail.ReadBasic.All`
- `Mail.ReadWrite`
- `Mail.Send`
- `MailboxSettings.Read`
- `MailboxSettings.ReadWrite`
- `Calendars.Read`
- `Calendars.ReadWrite`
- `Contacts.Read`
- `Contacts.ReadWrite`

The same control applies to an app that has been granted the Exchange Web Services permission scope `full_access_as_app`.

For more information about configuring application access policy, see the [PowerShell cmdlet reference for New-ApplicationAccessPolicy](/powershell/module/exchange/new-applicationaccesspolicy?view=exchange-ps). 

## Handling API errors
You might encounter the following error when an API call is denied access due to a configured application access policy. 
```json
{
    "error": {
        "code": "ErrorAccessDenied",
        "message": "Access to OData is disabled.",
        "innerError": {
            "request-id": "2f038156-cf40-403d-8e46-831fe42a8229",
            "date": "2019-05-24T10:16:21"
        }
    }
}
```
If Microsoft Graph API calls from your app return this error, work with the Exchange Online administrator for the organization to ensure that your app has permission to access the mailbox resource.



## See also

- [Permissions reference](permissions-reference.md)
- [New-ApplicationAccessPolicy](/powershell/module/exchange/organization/new-applicationaccesspolicy)
- [Get-ApplicationAccessPolicy](/powershell/module/exchange/organization/get-applicationaccesspolicy)
- [Remove-ApplicationAccessPolicy](/powershell/module/exchange/organization/remove-applicationaccesspolicy)
- [Set-ApplicationAccessPolicy](/powershell/module/exchange/organization/set-applicationaccesspolicy)
- [Test-ApplicationAccessPolicy](/powershell/module/exchange/organization/test-applicationaccesspolicy)
- [Application Access Policy Support in EWS](https://techcommunity.microsoft.com/t5/exchange-team-blog/application-access-policy-support-in-ews/ba-p/2110361)
