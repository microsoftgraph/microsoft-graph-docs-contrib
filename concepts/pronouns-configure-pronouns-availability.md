---
title: "Manage pronouns settings for an organization using the Microsoft Graph API"
description: "Using the Microsoft Graph API, you can enable, disable, or get settings that manage pronouns in an organization, such as controlling the display within the organization of any pronouns users may have set up for themselves."
author: "aymen-ms"
ms.localizationpriority: high
ms.prod: "people"
ms.custom: scenarios:getting-started
---

# Manage pronouns settings for an organization using the Microsoft Graph API (preview)

<!-- Commenting this original paragraph out per my comments in Github, replacing it with the following 4 paragraphs.
If you are a global administrator, you can turn on or off the display of pronouns in your organization. By default, pronouns are **off**. If you turn pronouns on, users will be able to add and update pronouns in Microsoft 365. -->

> [!IMPORTANT]
>
> This is prerelease documentation. The capabilities for this article are associated with [roadmap IDs 83382 and 115511](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=pronouns), and are not currently available in production environments. For availability information, refer to the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=pronouns).
> 
Using the Microsoft Graph API, you can enable, disable, or get settings that manage pronouns in an organization, such as controlling the display within the organization of any pronouns users may have set up for themselves.

Pronouns, in this context, are words used to replace a person's name in a sentence. Pronouns and their gender-neutral versions exist in many languages. For example, in English, "she", "her, "he", "him", and the gender-neutral "they", and "them" are common pronouns. Correctly using someone’s pronouns shows inclusion and respect. Sharing pronouns helps people avoid guessing or making assumptions based solely on names or initial observations of the person. In a hybrid, multicultural work or school environment, the simple act of using the right pronouns can help build trust and improve communication among one another.

Global administrators can enable or disable pronouns for everyone in the organization, using the Microsoft 365 Admin Center or Microsoft Graph API as described below. By default, pronouns are disabled.

Enabling pronouns in an organization facilitates associating users with their preferred pronouns within the organization. This includes the following end user experiences:
- Once pronouns are enabled, a user can optionally add and manage pronouns in the profile card in Outlook on the web and Teams. 
- Pronouns appear by the user's name on the profile card in Outlook and Teams. 
- Pronouns are displayed only internally within the organization. 
- Anyone that has an account in the organization, including guest accounts, can see pronouns on profile cards. 

The end user experience with pronouns may evolve over time. For current information about the end user experience with pronouns, see [Pronouns in Microsoft 365](https://support.microsoft.com/en-us/topic/232c3bfb-a947-4310-86db-b22d63663d85).

## Confirm your current settings

Use the [get](/graph/api/organizationsettings-list-pronounssettings?view=graph-rest-beta&preserve-view=true) operation to return the current settings for pronouns in your organization.

The following example gets the current display settings, which have pronouns disabled: 

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
 
## Scenarios

A prominent scenario that global administrators can enable is the display of any pronouns that users have set up in their profile cards.

|Scenario | isEnabledInOrganization|
|:---|:---|
|Do not display pronouns in profile cards to anyone within and outside an organization (default). | False|
|Display for everyone within the organization any pronouns that users have set up in their profile cards. | True|

> [!IMPORTANT]
> When you turn pronouns on or off, it can take up to six hours for users to see changes. For example, if you turn pronouns on, users cannot see the option to add pronouns on their profile card for up to six hours. If you turn pronouns off, any previously set pronouns might stay visible in Microsoft 365 (for example, on profile cards) for up to six hours. 
>
> When you turn off pronouns, all pronouns data created by users is deleted. The data deletion process may take up to 30 days to complete. If you turn pronouns back on within that period, any hidden pronouns that have not yet been deleted from Microsoft servers becomes visible in Microsoft 365 experiences, such as profile cards.

## Enabling pronouns in your organization

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

## Disabling pronouns in your organization

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
- [Turn pronouns on or off for your organization in the Microsoft 365 admin center](https://go.microsoft.com/fwlink/?linkid=2224711)
- [Pronouns in Microsoft 365](https://support.microsoft.com/topic/232c3bfb-a947-4310-86db-b22d63663d85)
- [Profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501)
- [Add or delete custom attributes on a profile card using the profile card API](add-properties-profilecard.md)

