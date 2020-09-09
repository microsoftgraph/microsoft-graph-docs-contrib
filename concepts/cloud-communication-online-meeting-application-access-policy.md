---
title: "Allow application to access online meetings on behalf of a user "
description: "<TODO>"
author: "frpeng"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Allow application to access online meetings on behalf of a user

TODO: some background?

Administrators who want to allow an application to access online meeting resources on behalf of a user can use **New-CsApplicationAccessPolicy** and **Grant-CsApplicationAccessPolicy** PowerShell cmdlets to configure access control. This article covers the basic steps to configure an application access policy.

These steps are specific to Online Meetings resources and do not apply to other Microsoft Graph workloads.

## Configure ApplicationAccessPolicy

To configure an application access policy and allow applications to access online meetings with application permissions:

1. Identify the app’s applcation (client) ID and user id of the users on behalf of which the app will be authorized to access online meeting.

    - Identify the app’s application (client) ID in the [Azure app registration portal](https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    - Identify the user's user (object) ID in the [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade)

2. Connect to Skype for Business PowerShell with adminitrator account. For details, see [Manage Skype for Business Online with PowerShell](https://docs.microsoft.com/en-us/microsoft-365/enterprise/manage-skype-for-business-online-with-microsoft-365-powershell).

3. Create an application access policy containing a list of app IDs.

    Run the following cmdlet, replacing the **Identity**, **AppIds**, and **Description**(optional) arguments.

    ```sh
    New-CsApplicationAccessPolicy -Identity Test-policy -AppIds "ddb80e06-92f3-4978-bc22-a0eee85e6a9e","ccb80e06-92f3-4978-bc22-a0eee85e6a9e","bbb80e06-92f3-4978-bc22-a0eee85e6a9e" -Description "description here"
    ```

4. Grant the policy to user to allow the app IDs contained in the policy to access online meeting on behalf of the granted user
   Run the following cmdlet, replacing the **PolicyName**, and **Identity** arguments.

   ```powershell
   Grant-CsApplicationAccessPolicy -PolicyName Test-policy -Identity "ddb80e06-92f3-4978-bc22-a0eee85e6a9e"
   ```

> **Note** 
> 
> - _Identity_ refers to the policy name when creating the policy, but user ID when granting the policy
> - Changes to application access policies can take up to 30 minutes to take effect in Microsoft Graph REST API calls.

## Supported permissions and additional resources

Administrators can use ApplicationAccessPolicy cmdlets to control mailbox access of an app that has been granted any of the following application permissions:

- OnlineMeetings.Read.All
- OnlineMeetings.ReadWrite.All

For more information about configuring application access policy, see the [PowerShell cmdlet reference for New-ApplicationAccessPolicy](TODO powershell doc). 

## Possible Graph API errors

You might encounter the following error when an API call is denied access due to an app trying to access online meeting without application access policy configured. 

```json
{
    "error": {
        "code": "Unauthorized",
        "message": "App <app_ID_redacted> is not authorized to Create meeting on behalf of user <user_ID_redacted>",
        "innerError": {
            "date": "<date_redacted>",
            "request-id": "599d9cb0-56ac-4dc5-b6f8-1456a1414609"
        }
    }
}
```

Follow the steps above to create and/or grant an application access policy that contains the app ID to the user ID.

## See also

- [Permissions reference](permissions-reference.md)
- [New-ApplicationAccessPolicy](https://docs.microsoft.com/powershell/module/skype/new-csapplicationaccesspolicy)
- [Grant-ApplicationAccessPolicy](https://docs.microsoft.com/powershell/module/skype/grant-csapplicationaccesspolicy)
- [Get-ApplicationAccessPolicy](https://docs.microsoft.com/powershell/module/skype/get-csapplicationaccesspolicy)
- [Set-ApplicationAccessPolicy](https://docs.microsoft.com/powershell/module/skype/set-csapplicationaccesspolicy)
- [Remove-ApplicationAccessPolicy](https://docs.microsoft.com/powershell/module/skype/remove-csapplicationaccesspolicy)
