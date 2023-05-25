---
title: "Manage pronouns settings for an organization using the Microsoft Graph API"
description: "Learn how to use Microsoft Graph APIs to enable, disable, or get settings that manage pronouns in an organization."
author: "aymen-ms"
ms.localizationpriority: high
ms.prod: "people"
ms.custom: scenarios:getting-started
---

# Manage pronouns settings for an organization using the Microsoft Graph API (preview)

Using the Microsoft Graph API, you can enable, disable, or get settings that manage pronouns in an organization, such as controlling the display within the organization of any pronouns users might have set up for themselves.

Pronouns, in this context, are words used to replace a person's name in a sentence. Pronouns and their gender-neutral versions exist in many languages. For example, in English, "she", "her, "he", "him", and the gender-neutral "they", and "them" are common pronouns. Correctly using someone’s pronouns shows inclusion and respect. Sharing pronouns helps people avoid guessing or making assumptions based solely on names or initial observations of the person. In a hybrid, multicultural work or school environment, the simple act of using the right pronouns can help build trust and improve communication among one another.

Global administrators can enable or disable pronouns for everyone in the organization, using the Microsoft 365 Admin Center or Microsoft Graph API as described below. By default, pronouns are disabled.

Enabling pronouns in an organization facilitates associating users with their preferred pronouns within the organization. This includes the following end user experiences:

- When pronouns are enabled, a user can optionally add and manage pronouns in the profile card in Outlook on the web and Teams.
- Pronouns appear by the user's name on the profile card in Outlook and Teams.
- Pronouns are displayed only internally within the organization.
- Anyone that has an account in the organization, including guest accounts, can see pronouns on profile cards.

The end user experience with pronouns might evolve over time. For current information about the end user experience with pronouns, see [Pronouns in Microsoft 365](https://support.microsoft.com/en-us/topic/232c3bfb-a947-4310-86db-b22d63663d85).

Global administrators can decide whether to display pronouns that users set up in their profile cards. To enable this scenario, you set the [isEnabledInOrganization](/graph/api/resources/pronounssettings?view=graph-rest-beta&preserve-view=true#properties) property to `true`. When this property is set to `true`, pronouns are displayed for everyone within the organization. When this property is set to `false`, pronouns are not displayed for anyone within or outside the organization. The default setting is `false`.

> [!IMPORTANT]
> When you turn pronouns on or off, it can take up to six hours for users to see changes. For example, if you turn pronouns on, users cannot see the option to add pronouns on their profile card for up to six hours. If you turn pronouns off, any previously set pronouns might stay visible in Microsoft 365 (for example, on profile cards) for up to six hours.
>
> When you turn off pronouns, all pronouns data created by users is deleted. The data deletion process might take up to 30 days to complete. If you turn pronouns back on within that period, any hidden pronouns that have not yet been deleted from Microsoft servers become visible in Microsoft 365 experiences, such as profile cards.

## Configure pronoun settings using PowerShell

You can use the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) to configure pronoun settings in your organization.

### Prerequisites

- **PowerShell module** - Install [module version 1.24.0 or higher](https://www.powershellgallery.com/packages/Microsoft.Graph).
- **.NET Framework** - Install [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework) or a higher version.

> [!NOTE]
> Because pronouns settings commands are only available in beta, switch to the beta profile before running the command.
>
> ```powershell
>    Select-MgProfile beta
> ```

### Confirm your current settings

To get pronoun settings configuration for an organization, use the following command, and replace `$TenantId` with your Azure Active Directory tenant ID. You can retrieve this ID from the overview page of your Azure Active Directory.

```powershell
   Get-MgOrganizationSettingPronoun -OrganizationId $TenantId
```

### Enable pronouns in your organization

By default, pronouns are disabled. You can use the Microsoft Graph PowerShell module to make pronouns available in your organization.

> [!NOTE]
> The update method requires additional `Organization.ReadWrite.All` permissions. To create a Microsoft Graph session with a specific required scope, use the following command and consent to requested permissions.
>
> ```powershell
>    Connect-MgGraph -Scopes "Organization.ReadWrite.All","Organization.Read.All"
> ```

Use the following command, where you replace `$TenantId` with your Azure Active Directory Tenant ID and specify `-IsEnabledInOrganization` as `true`.

```powershell
   Update-MgOrganizationSettingPronoun -OrganizationId $TenantId -IsEnabledInOrganization:$true
```

### Disable pronouns in your organization

Alternatively, you can make pronouns unavailable for your organization using the following command, where you replace `$TenantId` with your Azure Active Directory Tenant ID, and specify `-IsEnabledInOrganization` as `false`.

```powershell
   Update-MgOrganizationSettingPronoun -OrganizationId $TenantId -IsEnabledInOrganization:$false
```

## Configure pronouns settings using the Microsoft Graph REST API

### Confirm your current settings

Use the [get](/graph/api/organizationsettings-list-pronounssettings?view=graph-rest-beta&preserve-view=true) operation to return the current settings for pronouns in your organization.

The following example gets the current display settings, which have pronouns disabled. 

``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
```

If successful, the response returns a `200 OK` response code and a [pronounsSettings](/graph/api/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) resource in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

### Enable pronouns in your organization

Use the [update](/graph/api/pronounssettings-update?view=graph-rest-beta&preserve-view=true) operation to enable pronouns in your organization.

``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

If successful, the response returns a `200 OK` response code and a [pronounsSettings](/graph/api/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) resource in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

### Disable pronouns in your organization

Use the update operation to make pronouns unavailable in your organization.

``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

If successful, the response returns a `200 OK` response code and a [pronounsSettings](/graph/api/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) resource in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

## See also

- [Turn pronouns on or off for your organization in the Microsoft 365 admin center](/microsoft-365/admin/add-users/turn-pronouns-on-or-off)
- [Pronouns in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85)
- [Profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501)
