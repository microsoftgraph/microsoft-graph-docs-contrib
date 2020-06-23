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

The profileCardProperties action lets you show additional properties from your Active Directory on profile cards by:

- Making additional attributes visible

- Adding custom attributes

Additional properties will display in the **Contact** section of the profile card in Microsoft 365.

## Make additional attributes visible

You can make the following attributes from Active Directory or Azure Active Directory (Azure AD) visible on users' profile cards:

- UserPrincipalName
- Fax
- StreetAddress
- PostalCode
- StateOrProvince
- Alias

> [!NOTE]
> The attribute strings are fixed and you must use the values listed in the **Attribute string** column. The attribute strings are not case sensitive.

|Attribute string|Microsoft Graph user entity property|
|:---------------|:----------|
|UserPrincipalName|userPrincipalName |
|Fax|faxNumber|
|StreetAddress|streetAddress|
|PostalCode|postalCode|
|StateOrProvince|state
|Alias|mailNickname

You can add any of these attributes to the profile card by configuring your tenant settings in Microsoft Graph. When you make additional attributes visible, you must use the English property names. You don't have to add localized values. The additional properties will automatically be shown in the language settings that the user has specified for Microsoft 365.

## Example

An example is to display **Alias** on the profile card:

```http
        POST https://microsoft.com/beta/organization/{tenantid}/settings/ProfilecardProperties
        Content-Type: application/json

        {
        "directoryPropertyName": "Alias"
        }
```

**Response**
If successful, the response returns a 200 OK response code and profileCardProperty objects in the response body. In this example you can assume that **Alias** displays in the **Contact** section of the profile card.  

```http
HTTP/1.1 200 OK
Content-type: application/json

        "value": [
            {
              "directoryPropertyName": "Alias",
              "annotations": []
            }
          ]
        }
```

> [!IMPORTANT]
> It takes up to 24 hours for the changes to show on profile cards.

## Adding custom attributes

You can add any of the [15 custom attributes](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-1.0) from Active Directory or Azure Active Directory (Azure AD) to users' profile cards by configuring your tenant settings in Microsoft Graph.

> [!NOTE]
> The attribute strings are fixed and you must use the values listed in the **Attribute string** column. The attribute strings are not case sensitive.

|Attribute string|Microsoft Graph custom extension attribute property|
|:---------------|:----------|
|customAttribute1| extensionAttribute1 |
|customAttribute2| extensionAttribute2 |
|customAttribute3| extensionAttribute3 |
|customAttribute4| extensionAttribute4 |
|customAttribute5| extensionAttribute5 |
|customAttribute6| extensionAttribute6 |
|customAttribute7| extensionAttribute7 |
|customAttribute8| extensionAttribute8 |
|customAttribute9| extensionAttribute9 |
|customAttribute10| extensionAttribute10 |
|customAttribute11| extensionAttribute11 |
|customAttribute12| extensionAttribute12 |
|customAttribute13| extensionAttribute13 |
|customAttribute14| extensionAttribute14 |
|customAttribute15| extensionAttribute15 |

## Example

The following example adds the first customizable extension attribute to the profile card, using display name **Cost center**. The tenant uses German-Austria language-country code. The translated term is "Kostenstelle".

```http
POST https://microsoft.com/beta/organization/{tenantid}/settings/profileCardProperties
Content-Type: application/json

        {
        "directoryPropertyName": "customAttribute1",
        "annotations": [
          {
                "displayName": "Cost center",
                "localizations": [
                    {
                        "languageTag": "de-at",
                        "displayName": "Kostenstelle"
                    }
                  ]
                }
              ]
            }
  ```

Enter the language code in the form *ll-cc*, where *ll* is the language code, and cc the country code. For example, for German – Austria, enter the country code de-at.
If a language is not supported, the property name will be shown with the default value.  

**Response**

If successful, the response returns a 200 OK response code and a collection of profileCardProperty objects in the response body. In this example you can assume that the profile card displays **Kostenstelle** in the **Contact** section of the profile card:

```http
HTTP/1.1 200 OK
Content-type: application/json

        "value": [
            {
              "directoryPropertyName": "customAttribute1",
              "annotations": [
                {
                  "displayName": "Cost center",
                  "localizations": [
                      {
                          "languageTag": "de-at",
                          "displayName": "Kostenstelle"
                      }
                    ]
                  }
                ]
              }
```

It takes up to 24 hours for the changes to show on profile cards.

> [!NOTE]
> Custom properties are not searchable and can't be used to search for people across Microsoft apps and services.

## See also

[Find your Microsoft 365 tenant ID](https://docs.microsoft.com/onedrive/find-your-office-365-tenant-id)

[onPremisesExtensionAttributes resource type](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-1.0)

[User resource type](/graph/api/resources/user?view=graph-rest-beta)

[Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)

profileCardProperties
