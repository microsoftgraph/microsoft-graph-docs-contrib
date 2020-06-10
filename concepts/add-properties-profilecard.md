---
title: "How to add additional properties to the profile card"
description: "This article describes how you can customize the profile card by making additional attributes visible, or adding custom attributes."
author: "PollyNincevic"
localization_priority: Priority
ms.prod: "users"
ms.custom: scenarios:getting-started
---

# How to add additional properties to the profile card

On the [profile card](https://support.office.com/article/profile-cards-in-office-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501), you can find information about users that is stored and maintained by your organization, for example Job title or Office location.  

You can show additional properties from your Active Directory on profile cards by:

- Making additional attributes visible, or

- Adding custom attributes

The additional properties will display in the "Contact" section of the profile card in Microsoft 365.

## Make additional attributes visible

You can make the following attributes from AD or AAD visible on users' profile cards:

- UserPrincipalName
- Fax
- StreetAddress
- PostalCode
- StateOrProvince
- Alias

You can add any of the above listed attributes to the profile card by configuring your tenant settings in Microsoft Graph.<sup id="a1">[1](#f1) </sup>Here's how:

1. Go to [https://developer.microsoft.com/en-us/graph/graph-explorer](https://developer.microsoft.com/en-us/graph/graph-explorer)
2. Sign in with your Admin username and password
3. Make sure the Preview toggle is set to **Off**
4. In the Query URL, select **PATCH** and enter:
    <div style="display: inline">https://microsoft.com/beta/organization/[TenantID]/settings</div>

5. In **Request Body** enter:

        {
        "directoryPropertyName": "[Attribute name, e.g. Alias]"
        }

6. Click **Run Query**

> [!NOTE]
> When you make additional attributes visible, you must use the English property names. You don't have to add localized values. The additional properties will automatically be shown in the language settings that the user has specified for Office 365.

> [!IMPORTANT]
> It takes up to 24 hours for the changes to show on profile cards.

## Adding custom attributes 
You can add any of the [15 custom attributes](https://go.microsoft.com/fwlink/?linkid=2131208) from AD or AAD to users' profile cards by configuring your tenant settings in Microsoft Graph.<sup id="a1">[1](#f1)</sup> Here's how:
1. Go to [https://developer.microsoft.com/en-us/graph/graph-explorer](https://developer.microsoft.com/en-us/graph/graph-explorer)
2. Sign in with your Admin username and password
3. Make sure the Preview toggle is set to **Off**
4. In the Query URL, select **PATCH** and enter:
    <div style="display: inline">https://microsoft.com/beta/organization/[TenantID]/settings</div>
5. In **Request Body** enter the following:

        {
         "directoryPropertyName": "customAttribute[X]",
         "annotations": [
          {
              "displayName": "[Property name, e.g. Cost center]",
              "displayNameLocalizations": [
                  {
                      "languageTag": "[Language code, e.g. de-at]",
                      "displayName": "[Localized property name, e.g. Cost center]"
                  }
                ]
              }
            ]
          }

6. Click **Run Query**

> [!NOTE]
> Enter the language code in the form *ll-cc*, where *ll* is the language code, and cc the country code. For example, for German – Austria, enter the country code de-at.
If a language is not supported, the property name will be shown with the default value.  

> [!IMPORTANT]
> It takes up to 24 hours for the changes to show on profile cards.

> [!NOTE]
> Custom properties are not searchable and can't be used to search for people across Microsoft apps and services.

### Related articles

[Find your Microsoft 365 tenant ID](https://docs.microsoft.com/onedrive/find-your-office-365-tenant-id)
#### Footnote

<b id="f1">1.</b> The Microsoft Graph is in Beta. [↩](#a1)