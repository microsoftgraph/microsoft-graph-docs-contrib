---
title: "Manage the display of pronouns using the Microsoft Graph API"
description: "Configure the display of pronouns by using the REST API pronounsSettings resource."
author: "aymen-ms"
ms.localizationpriority: high
ms.prod: "people"
ms.custom: scenarios:getting-started
---

# Manage the display of pronouns using the Microsoft Graph API (preview)

<!-- Commenting this original paragraph out per my comments in Github, replacing it with the following 4 paragraphs.
If you are a global administrator, you can turn on or off the display of pronouns in your organization. By default, pronouns are **off**. If you turn pronouns on, users will be able to add and update pronouns in Microsoft 365. -->

Using the Microsoft Graph API, you can enable, disable, or get settings that control the display within the organization of any pronouns users have set up in their profile cards.

In linguistics, pronouns are words that refer to someone in a sentence without using their names, such as "she", "her, "he", "him", "they", and "them". Microsoft 365 supports pronouns to give users more ways to express themselves, and communicate with or about others with respect. Use of correct pronouns can be especially important to LGBTQI+ community members, and sharing pronouns helps people avoid guessing or making assumptions about gender identity based solely on names or initial observations of the person.

Global administrators can enable and turn on the display of pronouns for an organization, allowing users to optionally add and manage pronouns on their profile cards in Outlook on the web. They can also disable and turn off the display of pronouns for everyone in the organization. By default, pronouns are disabled.

Once pronouns are enabled, a user can add pronouns to the profile card. Pronouns appear by the user's name on the card in Outlook and Teams. Pronouns are displayed only internally within the organization. Anyone that has an account in the organization, including guest accounts, can see pronouns on profile cards.

## Confirm your current settings

Use the [get](/graph/api/organizationsettings-list-pronounssettings?view=graph-rest-beta&preserve-view=true) operation to return the current display settings for pronouns in your organization.

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

You can control the display of any pronouns that users have set up in their profile cards.

|Scenario | isEnabledInOrganization|
|:---|:---|
|Do not display pronouns in profile cards to anyone within and outside an organization (default). | False|
|Display for everyone within the organization any pronouns that users have set up in their profile cards. | True|

> [!IMPORTANT]
> When you turn pronouns on or off, it can take up to six hours for users to see changes. For example, if you turn pronouns on, users cannot see the option to add pronouns on their profile for up to six hours. If you turn pronouns off, any previously set pronouns might stay visible in Microsoft 365 (for example, on profile cards) for up to six hours. 
>
> When you turn off pronouns, all pronouns data created by users is deleted. The data deletion process may take up to 30 days to complete. If you turn pronouns back on within that period, any hidden pronouns that have not yet been deleted from Microsoft servers becomes visible in Microsoft 365 experiences, such as profile cards.

## Enabling pronouns in your organization

Use the [update](/graph/api/pronounssettings-update?view=graph-rest-beta&preserve-view=true) operation to enable display of pronouns in your organization.

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
- [Profile cards in Microsoft 365](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501)
- [Add or delete custom attributes on a profile card using the profile card API](add-properties-profilecard.md)

