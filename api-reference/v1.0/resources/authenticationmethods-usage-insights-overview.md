---
title: "Working with the authentication methods usage report API"
description: "Authentication methods activity reports provides information on the registration and usage of authentication methods in your tenant."
ms.localizationpriority: medium
ms.subservice: entra-monitoring-health
author: faithombongi
ms.author: ombongifaith
ms.reviewer: egreenberg
doc_type: "conceptualPageType"
ms.date: 12/30/2024
---

# Working with the authentication methods usage report API

Namespace: microsoft.graph

Authentication methods activity reports provides information on the registration and usage of [authentication methods](../resources/authenticationmethods-overview.md) in your tenant.

These reports provide information such as:

- How many users are registered for each authentication method
- How many users are registered for features such as multifactor authentication (MFA), Self-Service Password Reset (SSPR), and passwordless authentication.
- The failure rates of each authentication method

These reports are available on the Microsoft Entra portal through **Protection** tab group > **Authentication methods** tab > **Activity** tab under the *Monitoring* tab group.

## Licenses

A Microsoft Entra ID P1 or P2 license is required to access authentication methods usage and insights reports. Microsoft Entra multifactor authentication and self-service password reset (SSPR) licensing information can be found on the [Microsoft Entra pricing site](https://www.microsoft.com/security/business/microsoft-entra-pricing).

## Available reports

The following reports are available through Microsoft Graph:

- Per-user report of the status of their authentication methods including the default methods, whether registered for MFA, SSPR, and a passwordless authentication method, and so on. For more information, see the [userRegistrationDetails resource type](../resources/userRegistrationDetails.md).
- Count of users registered, enabled, and capable of using MFA, SSPR, and passwordless authentication. For more information, see the [usersRegisteredByFeature resource type](../resources/userregistrationfeaturesummary.md).
- Raw count of users registered for email, password, and phone authentication methods. For more information, see the [usersRegisteredByMethod resource type](../resources/userregistrationmethodsummary.md).

The following reports are available on the `beta` endpoint only:

- Users registered and capable of self-service password reset (SSPR) and Azure multifactor authentication (MFA). For more information, see the [credentialUserRegistrationCount resource type](/graph/api/resources/credentialuserregistrationcount).
- SSPR usage activity. For more information, see the [userCredentialUsageDetails resource type](/graph/api/resources/usercredentialusagedetails).
- Tenant-level summary of user SSPR activity, including failure and successes. For more information, see the [credentialUsageSummary resource type](/graph/api/resources/credentialusagesummary.md).


## Related content

- [Microsoft Entra authentication methods activity](/entra/identity/authentication/howto-authentication-methods-activity)