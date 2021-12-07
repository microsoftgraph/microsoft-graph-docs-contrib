---
title: "Cross-tenant access settings API overview"
description: "Cross-tenant access settings let you manage both B2B collaboration and B2B direct connect for your organization."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# Cross-tenant access settings API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cross-tenant access settings let you control and manage collaboration between users in your organization and other organizations. This collaboration is mainly through the Azure Active Directory (Azure AD) B2B and Azure AD B2B Direct Connect (future) features. The control can be on either **outbound access** (how your users collaborate with other organizations), **inbound access** (how other organizations collaborate with you), or both.

Granular controls let you determine the people, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B and Azure AD B2B Direct Connect collaboration. These controls are implemented through:

+ **Default cross-tenant access settings** which set the baseline inbound and outbound access settings.
    + In Azure AD B2B collaboration, both access settings are enabled by default. This means all your users can be invited to external organizations, and all your users can invite external users.
    + In Azure AD B2B Direct Connect, both access settings are disabled by default.
+ **Partner-specific access settings** which allow you to configure customized settings for individual organizations. For the configured organizations, this configuration takes precedence over the default settings. Therefore, while Azure AD B2B and Azure AD B2B Direct Connect might be disabled across your organization by default, you can enable these features for a specific external organization.

> **Note:** By configuring B2B direct connect outbound settings, you agree to allow external organizations that you have enabled outbound settings with to access limited contact data about your users. Microsoft shares this data with those organizations to help them send a request to connect with your users. Data collected by external organizations, including limited contact data, is subject to the privacy policies and practices of those organizations.

## Default cross-tenant access settings

Default cross-tenant access settings determine your stance for inbound and outbound collaboration with all other Azure AD organizations. Any external collaboration with an organization not listed explicitly in your cross-tenant access settings will inherit these default settings. Default settings are defined using the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) resource type.

By default, all Azure AD organizations have a default configuration for cross-tenant access settings. These service defaults can be overridden with your own configuration to end up with a default stance that suits your organization. You can confirm whether you are using the service default settings or have modified the default settings by looking at the `isServiceDefault` property returned when you query the default endpoint.

## Partner cross-tenant access settings

Partner specific cross-tenant access settings determine your stance for inbound and outbound collaboration with a specific Azure AD organization. Any collaboration with this organization will inherit these partner specific settings. Partner settigns are defined using the [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resource type.

Even though you have added a partner to your cross-tenant access settings, some of your default settings will still apply. For example, if you only configure `b2bCollaborationInbound` for a partner in your cross-tenant access settings, all other settings for that partner configuration will be inherited from the default settings that you have specified. When querying the partner endpoint, any property on the partner object that is `null` means that for that property, it is inheriting settings from the default policy.

## Interpreting the API response

The cross-tenant access settings API can be used to set up multiple configurations for allowing or blocking access to and from your organization. The following table highlights scenarios, shows an example of the API response, and what the interpretation should be of that response. `b2bSetting` will be used as a catch-all example for any B2B inbound or outbound configuration you could make.

<table>
<tr>
<td> Scenario </td> <td> API output </td> <td> Interpretation </td>
</tr>
<tr>
<td> Block all users and block all applications </td>
<td>

``` json
"b2bsetting": {
    "usersAndGroups": {
        "accessType": "blocked",
        "targets": [
            {
                "target": "AllUsers",
                "targetType": "user"
            }
        ]
    },
    "applications": {
        "accessType": "blocked",
        "targets": [
            {
                "target": "AllApplications",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> - </td>
</tr>
<tr>
<td> Allow all users and allow all applications </td>
<td>

``` json
"b2bsetting": {
    "usersAndGroups": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "AllUsers",
                "targetType": "user"
            }
        ]
    },
    "applications": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "AllApplications",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> - </td>
</tr>
<tr>
<td> Allow users of group 'g1' to access any app </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": " allowed",
        "targets": [
            {
                "target": "g1",
                "targetType": "group"
            }
        ]
    },
    "applications": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "AllApplications",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> Users of group 'g1' can access any app. All other users not in group 'g1' are blocked. </td>
</tr>
<tr>
<td> Allow access to only application 'a1' </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "AllUsers",
                "targetType": "user"
            }
        ]
    },
    "applications": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "a1",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> All users are only allowed to access application 'a1' </td>
</tr>
<tr>
<td> Allow users of group 'g1' and block access to application 'a1' </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": "allowed",
        "targets": [
            {
                "target": "g1",
                "targetType": "group"
            }
        ]
    },
    "applications": {
        "accessType": "blocked",
        "targets": [
            {
                "target": "a1",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> All users in group 'g1' are allowed to access any application <b>except</b> application 'a1'. </td>
</tr>
<tr>
<td> Allow users of group 'g1' and block access to application 'a1' </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": " blocked",
        "targets": [
            {
                "target": "g1",
                "targetType": "group"
            }
        ]
    },
    "applications": {
        "accessType": "blocked",
        "targets": [
            {
                "target": "AllApplications",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> Users of group 'g1' cannot access any application. Other users not in group 'g1' have access to all applications. </td>
</tr>
</table>

## Next steps

+ [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) resource type
+ [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resource type
