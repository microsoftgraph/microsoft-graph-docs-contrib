---
title: "Manage namepronounciation settings for an organization using the Microsoft Graph API"
description: "Learn how to use Microsoft Graph APIs to enable, disable, or get settings that manage name pronunciation in an organization."
author: "fondieki"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 12/11/2024
---

# Manage pronunciation settings for an organization using the Microsoft Graph API

Name Pronunciation allows a user to record an audio file of how their name is pronounced. With the Microsoft Graph Name Pronunciation API, you can enable, disable, or get settings that manage name pronunciation in an organization. For example, you can control the display within the organization of any pronunciation users might have set up for themselves. 

Correctly pronouncing someone's name shows inclusion and respect as it's a vital part of one's identity. By sharing how one's name is pronounced, we can avoid making assumptions about how to address them, especially during a first interaction. In a hybrid, multicultural work or school environment, the simple act of pronouncing names correctly can help build trust and improve communication. 

Global administrators can enable or disable name pronunciation for everyone in the organization using the Microsoft Graph API. By default, name pronunciation is disabled. 

Enabling name pronunciation in an organization facilitates correct pronunciation of others' names within the organization. This includes the following end user experiences: 

- When name pronunciation is enabled, a user can optionally add and manage pronunciation in the profile card in Teams and Outlook web and desktop. 
- Name Pronunciation appears by the user's name on the profile card in Teams. 
- Name Pronunciation is displayed only internally within the organization. In multi-tentant organizations, users in all tenants can access the pronunciations provided by users in any other tenant. 
- Anyone who has an account in the organization, including guest accounts, can see name pronunciation on profile cards. 

Name Pronunciation data is stored in the user's mailbox. For more information see [Data Residency for Exchange Online](https://learn.microsoft.com/en-us/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide#how-can-i-determine-customer-data-location) - Microsoft 365 Enterprise | Microsoft Learn 

The end user experience with this feature might evolve over time. For current information about the end user experience, see Record and display your name pronunciation on your profile card 

Global administrators can decide whether to display pronunciation that users set up in their profile cards. To enable this scenario, you set the isEnabledInOrganization property to `true`. When this property is set to true, pronunciation is displayed for everyone within the organization. When this property is set to false, pronunciation not displayed for anyone within or outside the organization. The default setting is false.

> [!IMPORTANT]
> When you turn name pronunciation on or off, it can take up to seven hours for users to see changes. For example, if you turn pronunciation on, users can't see the option to add recordings on their profile card for up to seven hours. If you turn pronunciation off, any previously set recording might stay visible in Microsoft 365 (for example, on profile cards) for up to seven hours. 
>
> When an admin toggles name pronunciation off, the process of deletion is triggered, and all pronunciation data created by users starts getting deleted. The data deletion process might take up to 30 days to complete. If you turn pronunciation back on within that period, any recordings that existed prior to the delete signal that haven't yet been deleted from Microsoft servers will be resurfaced and become visible in Microsoft 365 experiences on the profile cards.

## Configure name pronunciation settings using PowerShell

You can use the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to configure name pronunciation settings in your organization.

### Prerequisites

- **PowerShell module** - Install [module version 2.3.0 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
- **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

> [!NOTE]
> The PowerShell commands for name pronunciation settings are only available in beta. Switch to the beta experience before you run the following commands.
>
> ```powershell
>    Install-Module -Name Microsoft.Graph.Beta -MinimumVersion 2.3.0
> ```

### Confirm your current settings

To get pronoun settings configuration for an organization, use the following command:

> [!NOTE]
> The get method requires `PeopleSettings.Read.All` permissions. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.Read.All"
>

```powershell
  Get-MgBetaAdminPeopleNamePronunciation 
```

### Enable name pronunciation in your organization

By default, name pronunciations are disabled. You can use the Microsoft Graph PowerShell module to make name pronunciation available in your organization.

> [!NOTE]
> The update method requires additional `PeopleSettings.ReadWrite.All` permissions. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
> ```

Use the following command, specify `-IsEnabledInOrganization` as `true`.

```powershell
  Update-MgBetaAdminPeopleNamePronunciation -IsEnabledInOrganization:$true
```

### Disable name pronunciation in your organization

Alternatively, you can make name pronunciation unavailable for your organization using the following command, where you specify `-IsEnabledInOrganization` as `false`.

```powershell
  Get-MgBetaAdminPeopleNamePronunciation -IsEnabledInOrganization:$false
```

## Configure name pronunciation settings using the Microsoft Graph REST API

You can use the [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) API to configure name pronunciation settings in your organization.

### Confirm your current settings

Use the [get](/graph/api/namepronunciationsettings-get?view=graph-rest-beta&preserve-view=true) operation to return the current settings for name pronunciation in your organization.

The following example gets the current display settings that have name pronunciation disabled.

``` http
GET https://graph.microsoft.com/v1.0/admin/people/namePronunciation
```

If successful, the response returns a `200 OK` response code and a [namePronunciationSettings](/graph/api/namepronunciationsettings-get?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

### Enable name pronunciation in your organization

Use the [update](/graph/api/namepronunciationsettings-update?view=graph-rest-beta&preserve-view=true) operation to enable name pronunciation in your organization.

``` http
PATCH https://graph.microsoft.com/v1.0/admin/people/namePronunciation
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

If successful, the response returns a `200 OK` response code and a [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

### Disable name pronunciation in your organization

Use the update operation to make name pronunciation unavailable in your organization.

``` http
PATCH https://graph.microsoft.com/v1.0/admin/people/namePronunciation
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

If successful, the response returns a `200 OK` response code and a [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

## Related content

- [Turn name pronunciation on or off for your organization in the Microsoft 365 admin center](/microsoft-365/admin/add-users/turn-pronouns-on-or-off)
- [Pronouns in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85)
- [Profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501)
