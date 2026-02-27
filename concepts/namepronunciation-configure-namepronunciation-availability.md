---
title: "Manage name pronunciation settings for an organization by using the Microsoft Graph API"
description: "Learn how to use Microsoft Graph APIs to enable, disable, or get settings that manage name pronunciation in an organization."
author: "fondieki"
ms.localizationpriority: high
ms.subservice: "people"
ms.custom: scenarios:getting-started
ms.date: 01/05/2025
ms.topic: how-to
---

# Manage pronunciation settings for an organization

The name pronunciation feature in Microsoft 365 allows a user to record an audio file of how their name is pronounced. With the Microsoft Graph name pronunciation API, you can enable, disable, or get settings that manage name pronunciation in an organization. For example, you can control the display within the organization of pronunciations that users create for themselves. 

Correctly pronouncing someone's name shows inclusion and respect because names are a vital part of one's identity. By sharing how their name is pronounced, users can help others avoid making assumptions about how to address them, especially during a first interaction. In a hybrid, multicultural work or school environment, the simple act of pronouncing names correctly can help build trust and improve communication. 

Administrators can enable or disable name pronunciation for everyone in the organization by using the Microsoft Graph API. By default, name pronunciation is disabled. 

When name pronunciation is enabled in an organization:

- Users can optionally add and manage pronunciations in the profile card in Teams and Outlook, both in desktop and on the web. 
- Name pronunciations appear by users' names on the profile card in Teams. 
- Pronunciations are only displayed internally within the organization. In multi-tenant organizations, users in all tenants can access the pronunciations provided by users in any other tenant. 
- Pronunciations are visible on profile cards to anyone who has an account in the organization, including guest accounts.

Name pronunciation data is stored in the user's mailbox. For more information, see [Data Residency for Exchange Online](/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide#how-can-i-determine-customer-data-location&preserve-view=true).

Administrators can decide whether to display pronunciations that users set up in their profile cards. To enable the display of user-created name pronunciations, set the **isEnabledInOrganization** property of the [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) object to `true`. When this property is set to `true`, pronunciation is displayed for everyone within the organization. When this property is set to `false`, pronunciation is not displayed for anyone within or outside the organization. The default setting is `false`.

> [!IMPORTANT]
> When you turn name pronunciation on or off, it can take up to seven hours for users to see changes. For example, if you turn pronunciation on, users might not see the option to add recordings on their profile card for up to seven hours. If you turn pronunciation off, any previously set recording might stay visible in Microsoft 365 (for example, on profile cards) for up to seven hours. 
>
> When an admin toggles name pronunciation off, the process of deletion is triggered, and all pronunciation data created by users starts to be deleted. Deleting name pronunciation data can take up to 30 days. If you turn pronunciation back on within that period, any recordings that existed prior to the delete signal that haven't yet been deleted from Microsoft servers will be resurfaced and become visible in Microsoft 365 experiences on the profile cards.

## Configure name pronunciation settings by using the Microsoft Graph REST API

You can use the [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) resource and its associated methods to configure name pronunciation settings in your organization.

### Confirm your current name pronunciation settings

The [Get namePronunciationSettings](/graph/api/namepronunciationsettings-get?view=graph-rest-beta&preserve-view=true) API returns the current settings for name pronunciation in your organization.

Use the following HTTP request to retrieve all current settings, including those with name pronunciation disabled.

```http
GET https://graph.microsoft.com/beta/admin/people/namePronunciation
```

If successful, a `200 OK` response code is returned with a [namePronunciationSettings](/graph/api/namepronunciationsettings-get?view=graph-rest-beta&preserve-view=true) object in the response body, as shown in the following example response.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

### Enable name pronunciation in your organization

Setting the **isEnabledInOrganization** property of the **namePronunciationSettings** object to `true` enables name pronunciation in your organization.

Use the [Update namePronunciationSettings](/graph/api/namepronunciationsettings-update?view=graph-rest-beta&preserve-view=true) method to enable name pronunciation, as shown in the following example:

```http
PATCH https://graph.microsoft.com/beta/admin/people/namePronunciation
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

If successful, a `200 OK` response code is returned with a [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) object in the response body, as shown in the following example response.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

### Disable name pronunciation in your organization

Setting the **isEnabledInOrganization** property of the **namePronunciationSettings** resource to `false` makes name pronunciation unavailable in your organization.

Use the [Update namePronunciationSettings](/graph/api/namepronunciationsettings-update?view=graph-rest-beta&preserve-view=true) method to disable name pronunciation, as shown in the following example.

```http
PATCH https://graph.microsoft.com/beta/admin/people/namePronunciation
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

If successful, a `200 OK` response code is returned with a [namePronunciationSettings](/graph/api/resources/namepronunciationsettings?view=graph-rest-beta&preserve-view=true) object in the response body, as shown in the following example response.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```
## Configure name pronunciation settings by using the Microsoft Graph PowerShell SDK

You can use the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to configure name pronunciation settings in your organization.

### Prerequisites

- **PowerShell module** - Install [module version 2.3.0 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
- **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

> [!NOTE]
> The PowerShell commands for name pronunciation settings are only available in beta. Switch to the beta experience before you run the commands.

```powershell
Install-Module -Name Microsoft.Graph.Beta -MinimumVersion 2.3.0
```

### Confirm your current settings

To get the name pronunciation settings configuration for an organization, use the following command. Note that the `get` method requires PeopleSettings.Read.All permissions, and to create a Microsoft Graph session with the specifically required scope, use the following command and consent to the requested permissions.

 ```powershell
Connect-MgGraph -Scopes "PeopleSettings.Read.All"
Get-MgBetaAdminPeopleNamePronunciation
```

### Enable name pronunciation in your organization

By default, name pronunciation is disabled in an organization, but you can use the Microsoft Graph PowerShell module to make it available. The `update` method requires additional PeopleSettings.ReadWrite.All permissions, and to create a Microsoft Graph session with the specifically required scope, use the following command and consent to the requested permissions.

```powershell
Connect-MgGraph -Scopes "PeopleSettings.ReadWrite.All","PeopleSettings.Read.All"
```

Use the following command, specify `-IsEnabledInOrganization` as `true`.

```powershell
Update-MgBetaAdminPeopleNamePronunciation -IsEnabledInOrganization:$true
```

### Disable name pronunciation in your organization

Alternatively, you can make name pronunciation unavailable for your organization using the following command, where you specify `-IsEnabledInOrganization` as `false`.

```powershell
Update-MgBetaAdminPeopleNamePronunciation -IsEnabledInOrganization:$false
```
