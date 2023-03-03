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

In the traditional Azure AD B2B collaboration, any invited user from an organization could use their identity to access resources in external organizations. Administrators didn't have control over the user identities in their tenant that are allowed to sign in to external organizations. These limited controls made it difficult to prevent identities from your organization from being used in unauthorized ways.

**Cross-tenant access settings** let you control and manage collaboration between users in your organization and other organizations. The control can be on either **outbound access** (how your users collaborate with other organizations), **inbound access** (how other organizations collaborate with you), or both.

Granular controls let you determine the users, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B collaboration and Azure AD B2B direct connect. These controls are implemented through:

+ **Default cross-tenant access settings** which set the baseline inbound and outbound access settings.
    + In Azure AD B2B collaboration, both access settings are enabled by default. This means all your users can be invited to external organizations, and all your users can invite external users.
    + In Azure AD B2B direct connect, both access settings are disabled by default.
    + The service default settings may be updated.
+ **Partner-specific access settings** which allow you to configure customized settings for individual organizations. For the configured organizations, this configuration takes precedence over the default settings. Therefore, while Azure AD B2B collaboration and Azure AD B2B direct connect might be disabled across your organization by default, you can enable these features for a specific external organization.

> [!IMPORTANT]
> 
> By configuring B2B direct connect outbound settings, you agree to allow external organizations that you have enabled outbound settings with to access limited contact data about your users. Microsoft shares this data with those organizations to help them send a request to connect with your users. Data collected by external organizations, including limited contact data, is subject to the privacy policies and practices of those organizations.

## Default cross-tenant access settings

Default cross-tenant access settings determine your stance for inbound and outbound collaboration with all other Azure AD organizations. Any external collaboration with an organization not listed explicitly in your cross-tenant access settings will inherit these default settings. Default settings are defined using the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) resource type.

By default, Azure AD assigns all Azure AD tenants a service default configuration for cross-tenant access settings. You can override these service defaults with your own configuration to suit your organization. You can confirm whether you're using the service default settings or have modified the default settings by looking at the **isServiceDefault** property returned when you query the default endpoint.

## Partner cross-tenant access settings

Partner-specific cross-tenant access settings determine your stance for inbound and outbound collaboration with a specific Azure AD organization. Any collaboration with this organization will inherit these partner-specific settings. Partner settings are defined using the [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resource type.

Even though you have added a partner to your cross-tenant access settings, some of your default settings will still apply. For example, if you configure only **b2bCollaborationInbound** for a partner in your cross-tenant access settings, all other settings for that partner configuration will be inherited from the default cross-tenant access settings. When querying the partner endpoint, any property on the partner object that is `null` means that for that property, it's inheriting settings from the default policy.

## Inbound trust settings in cross-tenant access settings

Inbound trust settings enable you to trust the MFA external users perform in their home directories. This prevents external users from having to perform MFA both in their home directories and in your directory. With inbound trust settings, you enable a seamless authentication experience for your external users and save on the MFA costs incurred by your organization.  

For example, when you configure your trust settings to trust MFA, your MFA policies are still applied to external users, but users who have already completed MFA in their home tenants won't have to complete MFA again in your tenant.

Inbound trust settings also enable you to trust devices that are compliant, or hybrid Azure AD joined in their home directories. With inbound trust settings in cross-tenant access settings, you can now protect access to your apps and resources by requiring that external users use compliant, or hybrid Azure AD joined devices.

## Collaborate with organizations using Azure Active Directory in different Microsoft clouds

Cross-tenant access settings is used to enable collaboration with Azure AD organizations in separate Microsoft clouds. The `allowedCloudEndpoints` property enables you to specify which Microsoft clouds you'd like to extend your collaboration to. B2B collaboration is supported between the following Microsoft clouds:

+ Microsoft Azure commercial and Microsoft Azure Government
+ Microsoft Azure commercial and Microsoft Azure China

Learn more about [collaborating with organizations from a different Microsoft cloud](/azure/active-directory/external-identities/cross-cloud-settings).

## Interpreting the API response

The cross-tenant access settings API can be used to set up multiple configurations for allowing or blocking access to and from your organization. The following table highlights scenarios, shows an example of the API response, and what the interpretation should be of that response. **b2bSetting** is used as a placeholder for any B2B inbound (**b2bCollaborationInbound** or **b2bDirectConnectInbound**) or outbound (**b2bCollaborationOutbound** or **b2bDirectConnectOutbound**) configuration.

<br/>

<table>
<tr>
<th> Scenario </th> <th> API output </th> <th> Interpretation </th>
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
<td> Allow users in group 'g1' to access any app </td>
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
<td> Users in group 'g1' can access any app. All other users not in group 'g1' are blocked. </td>
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
<td> Allow users in group 'g1' and block access to application 'a1' </td>
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
<td> Block users in group 'g1' from accessing any application </td>
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
<td> Users in group 'g1' can't access any application. Other users not in group 'g1' have access to all applications. </td>
</tr>
<tr>
<td> Block users in group 'g1' and allow access to application 'a1' only </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": "blocked",
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
                "target": "a1",
                "targetType": "application"
            }
        ]
    }
}
```

</td>
<td> Users in group 'g1' can't access any application. Any user not in group 'g1' can only access application 'a1'. </td>
</tr>
<tr>
<td> Allow users in group 'g1' to access to only application 'a1' </td>
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
<td> Users in group 'g1' are only allowed to access application 'a1'. All users, including users in group 'g1', are blocked from accessing any other application. </td>
</tr>
<tr>
<td> Block users in group 'g1' from accessing application 'a1' </td>
<td>

``` json
"b2bSetting": {
    "usersAndGroups": {
        "accessType": "blocked",
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
<td> Users in group 'g1' are blocked from accessing application 'a1' only. All users, including users in group 'g1' are able to access any other application. </td>
</tr>
</table>

## Cross-tenant access settings vs tenant restrictions

Cross-tenant access settings outbound controls are for controlling how **your organization's accounts** are used for accessing resources in other Azure AD organizations. Tenant Restrictions are for controlling how your employees use **other Azure AD organizations' accounts while the employee is on your networks or devices**. Critically, outbound controls work all the time because they're associated with your accounts, while Tenant Restrictions require additional signals to be injected into the authentication requests to be enforced, because Tenant Restrictions are scoped to networks and devices, not accounts. Learn more about [Tenant Restrictions](/azure/active-directory/manage-apps/tenant-restrictions).

## Next steps

+ [Cross-tenant access settings documentation](/azure/active-directory/external-identities/cross-tenant-access-overview)
+ [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) resource type
+ [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resource type
