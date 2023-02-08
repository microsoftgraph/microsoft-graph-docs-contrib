---
title: "Use the Azure AD recommendations API to implement Azure AD best practices for your tenant"
description: "Azure Active Directory (Azure AD) recommendations are personalized and actionable insights for you to implement Azure AD best practices in your tenant."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
ms.date: 02/10/2023
---

# Use the Azure AD recommendations API to implement Azure AD best practices for your tenant

Azure Active Directory (Azure AD) recommendations are personalized and actionable insights for you to implement Azure AD best practices in your tenant. The Azure AD recommendation service runs daily to check your tenant against predefined conditions for every recommendation. If the service detects that a recommendation applies to your tenant, the corresponding recommendation object is generated and its status is set to active.

Use the recommendations API in Microsoft Graph to identify and track the insights, assess and apply the guidance provided for implementing the best practices, and keep your tenant healthy, secure and optimized.

## Manage recommendations

Azure AD recommendations are made up of two building blocks: **recommendations** and **the Azure AD resources they apply to**.

A single recommendation can apply to one or more Azure AD resource instances. For example, a recommendation relating to expiring application credentials will reference all apps in your tenant that have expiring application credentials.

For each recommendation, you have the following data:

- The type of recommendation. Eight types are currently supported. For more information about types of recommendations, see [Types of recommendations](#types-of-recommendations).
- The Azure AD resources to which the recommendation applies. These include users, groups, and applications.
- The recommended action plan to address the recommendation.
- Where applicable, when Azure AD recommends the recommendation to have been completed before it impacts the associated service.
- The impact of the recommendation, which can be tenant-wide or resource-specific.
- A Microsoft-assigned priority ranking for the recommendation.
- The status of the recommendation such as whether it’s still active or has been completed, dismissed, or postponed to a future date.

### Types of recommendations

Eight types of recommendations are currently available in Azure AD recommendations. These recommendations are identified in a **recommendationType** property that’s part of the **recommendation** object in Microsoft Graph.

The following table lists the recommendation types that are available, and maps the Microsoft Graph values to the user-friendly names that are used on the Azure portal.

| recommendationType          | Friendly name in the Azure portal                                                                              | Comments                                                                                                                                                                        |
|-----------------------------|----------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| adfsAppsMigration           | Migrate your eligible applications from AD FS to Azure AD for more security, productivity and automation       | For more information, see [Migrate apps from ADFS to Azure AD](/azure/active-directory/reports-monitoring/recommendation-migrate-apps-from-adfs-to-azure-ad)                    |
| switchFromPerUserMFA        | Convert per-user MFA to Conditional Access MFA                                                                 | For more information, see [Convert per-user MFA to Conditional Access MFA](/azure/active-directory/reports-monitoring/recommendation-turn-off-per-user-mfa)                     |
| tenantMFA                   | Minimize MFA prompts for your users signing in from known devices                                              | For more information, see [Minimize MFA prompts from known devices](/azure/active-directory/reports-monitoring/recommendation-mfa-from-known-devices)                           |
| useAuthenticatorApp         | Migrate eligible users from SMS and voice call to Microsoft Authenticator App for a better MFA user experience | For more information, see [Migrate to Microsoft authenticator](/azure/active-directory/reports-monitoring/recommendation-migrate-to-authenticator)                              |
| staleApps                   | Remove unused applications                                                                                     | For more information, see [Remove unused applications](/azure/active-directory/reports-monitoring/recommendation-remove-unused-apps)                                            |
| staleAppCreds               | Remove unused credentials from applications                                                                    | For more information, see [Remove unused credentials from apps](/azure/active-directory/reports-monitoring/recommendation-remove-unused-credential-from-apps)                   |
| applicationCredentialExpiry | Renew expiring application credentials                                                                         | For more information, see [Renew expiring application credentials](/azure/active-directory/reports-monitoring/recommendation-remove-unused-credential-from-apps)                |
| servicePrincipalKeyExpiry   | Renew expiring serivce principal credentials                                                                   | For more information, see [Renew expiring service principal credentials](/azure/active-directory/reports-monitoring/recommendation-renew-expiring-service-principal-credential) |

## API scenarios

You manage recommendations through the [recommendation resource type](recommendation.md) and its associated methods. This resource type exposes the **impactedResources** relationship that you use to query the Azure AD resource to which the recommendations apply.

The following are some of the most popular requests for working with the Microsoft Graph recommendations API:

| Scenarios | API |
|---|---|
| Retrieve all recommendations and their associated data, including the impacted resources. | [List recommendations](../api/directory-list-recommendation.md) |
| Retrieve a recommendation and its associated data, including the impacted resources. | [Get recommendation](../api/recommendation-get.md) |
| Act on a recommendation | [Dismiss](../api/recommendation-dismiss.md) <br/> [Postpone](../api/recommendation-postpone.md)  <br/> [Complete](../api/recommendation-complete.md)  <br/> [Reactivate](../api/recommendation-reactivate.md) |
| Retrieve details of all impacted resources for a recommendation. | [List impactedResources](../api/recommendation-list-impactedresources.md) |
| Retrieve details of an impacted resource for a recommendation. | [Get impactedResource](../api/impactedresource-get.md) |
| Act on a recommendation for an impacted resource | [Dismiss](../api/impactedresource-dismiss.md)  <br/> [Postpone](../api/impactedresource-postpone.md)  <br/> [Complete](../api/impactedresource-complete.md)  <br/> [Reactivate](../api/impactedresource-reactivate.md) |

## License requirements

The various recommendations have different license requirements. For more information about licenses for each type of recommendation, see [Azure AD recommendations: Roles and licenses](/azure/active-directory/reports-monitoring/overview-recommendations#roles-and-licenses).

## See also

- [What is Azure Active Directory recommendations (preview)]( /azure/active-directory/reports-monitoring/overview-recommendations)
