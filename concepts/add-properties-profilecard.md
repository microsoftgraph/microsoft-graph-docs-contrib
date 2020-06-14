---
title: "Customize the profile card using the profile API in Microsoft Graph (preview)"
description: "This article describes how you can customize the profile card by making additional attributes visible, or adding custom attributes."
author: "PollyNincevic"
localization_priority: Priority
ms.prod: "users"
ms.custom: scenarios:getting-started
---

# Add additional properties to the profile card using the profile API in Microsoft Graph (preview)

On the [profile card](https://support.office.com/article/profile-cards-in-office-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501) in Microsoft 365, you can find information about users that is stored and maintained by your organization, for example **Job title** or **Office location**.  

You can show additional properties from your Active Directory on profile cards by doing one of the following:

- Making additional attributes visible

- Adding custom attributes

The additional properties will display in the "Contact" section of the profile card in Microsoft 365.

## Make additional attributes visible

You can make the following attributes from Active Directory or Azure Active Directory (Azure AD) visible on users' profile cards:

- UserPrincipalName
- Fax
- StreetAddress
- PostalCode
- StateOrProvince
- Alias

You can add any of these attributes to the profile card by configuring your tenant settings in Microsoft Graph. Here's how:

```http
        PATCH https://microsoft.com/beta/organization/{tenantid}/settings
        Content-Type: application/json
        
        {
        "directoryPropertyName": "[Alias]"
        }
```
When you make additional attributes visible, you must use the English property names. You don't have to add localized values. The additional properties will automatically be shown in the language settings that the user has specified for Microsoft 365.

> [!IMPORTANT]
> It takes up to 24 hours for the changes to show on profile cards.

## Adding custom attributes 
You can add any of the [15 custom attributes](../api-reference/beta/resources/onpremisesextensionattributes.md) from Active Directory or Azure Active Directory (Azure AD) to users' profile cards by configuring your tenant settings in Microsoft Graph. Here's how:
```http
        PATCH https://microsoft.com/beta/organization/{tenantid}/settings
        Content-Type: application/json

        {
         "directoryPropertyName": "customAttribute{X}",
         "annotations": [
          {
              "displayName": "[Cost center]",
              "localizations": [
                  {
                      "languageTag": "[de-at]",
                      "displayName": "[Cost center]"
                  }
                ]
              }
            ]
          }
```
Enter the language code in the form *ll-cc*, where *ll* is the language code, and cc the country code. For example, for German – Austria, enter the country code de-at.
If a language is not supported, the property name will be shown with the default value.  

It takes up to 24 hours for the changes to show on profile cards.

> [!NOTE]
> Custom properties are not searchable and can't be used to search for people across Microsoft apps and services.

## See also


[Find your Microsoft 365 tenant ID](https://docs.microsoft.com/onedrive/find-your-office-365-tenant-id)

[onPremisesExtensionAttributes resource type](../api-reference/beta/resources/onpremisesextensionattributes.md)

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)