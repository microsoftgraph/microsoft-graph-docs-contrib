---
title: "Working with the authentication methods usage report API"
description: "The authentication methods usage report helps you understand how users in your organization are using Microsoft Entra authentication capabilities such as self-service password reset and multifactor authentication (MFA)."
ms.localizationpriority: medium
author: "egreenberg14"
ms.prod: "identity-and-access-reports"
doc_type: "conceptualPageType"
ms.date: 01/18/2024
---

# Working with the authentication methods usage report API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authentication methods usage reports help you understand how users in your organization are using Microsoft Entra authentication capabilities such as multifactor authentication (MFA), Self-Service Password Reset (SSPR), and Passwordless authentication.

These reports provide information such as:

- How many users are registered for each authentication method
- How many users are registered for features such as multifactor authentication (MFA), Self-Service Password Reset (SSPR), and Passwordless authentication.
- The failure rates of each authentication method 

## Licenses

A Microsoft Entra ID P1 or P2 license is required to access usage and insights. Microsoft Entra multifactor authentication and self-service password reset (SSPR) licensing information can be found on the [Microsoft Entra pricing site](https://azure.microsoft.com/pricing/details/active-directory/).

## Common requests

The following table lists some common requests that you can use with this API.

| Operation | Try in Graph Explorer | Description |
| --------- | --- | ----------- |
| [getCredentialUserRegistrationcount](../resources/credentialuserregistrationcount.md) | [GET /credentialuserregistrationcount](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUserRegistrationcount()&version=beta) | Get the number of users registered for self-service password reset and MFA. |
| [getCredentialUsageSummary](../resources/credentialusagesummary.md) | [GET /credentialusagesummary](https://developer.microsoft.com/graph/graph-explorer?request=reports/getCredentialUsageSummary&version=beta) | Get the number of users using self-service password reset. |
| [credentialUserRegistrationDetails (deprecated)](../resources/credentialuserregistrationdetails.md) | [GET /credentialuserregistrationdetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialUserRegistrationDetails&version=beta) | Get the user details for self-service password reset and MFA registration activities. |
| [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) | [GET /usercredentialusagedetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/userCredentialUsageDetails&version=beta) | Get user details for all self-service password reset activities. |
| [usersRegisteredByFeature](../resources/userregistrationfeaturesummary.md) | [GET /authenticationMethods/usersRegisteredByFeature](https://developer.microsoft.com/graph/graph-explorer?request=reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')&version=beta) | Get the number of users capable of multifactor authentication, self-service password reset and passwordless authentication. |
| [usersRegisteredByMethod](../resources/userregistrationmethodsummary.md) | [GET /authenticationMethods/usersRegisteredByMethod](https://developer.microsoft.com/graph/graph-explorer?request=reports/authenticationMethods/usersRegisteredByMethod(includedUserTypes='all',includedUserRoles='all')&version=beta) | Get the number of users registered for each authentication method. |
| [userRegistrationDetails](../resources/userRegistrationDetails.md) | [GET /authenticationMethods/userRegistrationDetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/authenticationMethods/userRegistrationDetails&version=beta) | Get the MFA registration details for all users. |

## Related content

- Learn how to [deploy Microsoft Entra self-service password reset](/azure/active-directory/authentication/howto-sspr-deployment).
- Learn how to deploy [Microsoft Entra multifactor authentication](/azure/active-directory/authentication/howto-mfa-getstarted).
- Learn how to enable [combined security info registration](/azure/active-directory/authentication/howto-registration-mfa-sspr-combined).
