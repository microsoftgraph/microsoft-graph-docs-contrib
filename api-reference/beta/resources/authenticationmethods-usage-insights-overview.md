---
title: "Working with the authentication methods usage report API"
description: "The authentication methods usage report helps an organization understand how their end users are using Azure Active Directory capabilities such as self-service password reset and multi-factor authentication (MFA)."
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
---

# Working with the authentication methods usage report API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authentication methods usage reports help you understand how the Azure Active Directory capabilities are used, such as self-service password reset and multi-factor authentication (MFA). You can use the reports to gain insights using the various authentication methods provided by Azure Active Directory. For example, you can use these reports to gather feedback when you are rolling out these capabilities within your organization.

These reports provide information such as:

- Which authentication methods are more successful for your organization. 
- What kind of errors end users are running into.
- What kind of campaign you need to run to help your end users adopt these capabilities.

The following APIs are used to get the reports:

- Authentication Method Registration Summary and Details - [Self-service password reset registration](https://aka.ms/ssprsetup) and [Combined security info registration](https://aka.ms/mysecurityinfo)
- Authentication Method Usage Summary and Details - [Self-service password reset usage](https://aka.ms/sspr)

## API actions

Here are popular requests for working with this API:

| Operation | Try in Graph Explorer | Description |
| --------- | --- | ----------- |
| [GET Credentials registration count](/graph/api/resources/credentialUserRegistrationCount?view=graph-rest-beta) | [GET /credentialuserregistrationcount](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialuserregistrationcount&version=beta) | Get the number of users registered for self-service password reset and MFA. |
| [GET Credentials usage count](/graph/api/resources/credentialUsagesSummary?view=graph-rest-beta) | [GET /credentialusagesummary](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialusagesummary&version=beta) | Get the number of users using self-service password reset. |
| [GET Credentials registration details](/graph/api/resources/credentialUserRegistrationDetails?view=graph-rest-beta) | [GET /credentialuserregistrationdetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/credentialuserregistrationdetails&version=beta) | Get the user details for self-service password reset and MFA registration activities. |
| [GET Credentials usage details](/graph/api/resources/userCredentialUsageDetails?view=graph-rest-beta) | [GET /usercredentialusagedetails](https://developer.microsoft.com/graph/graph-explorer?request=reports/usercredentialusagedetails&version=beta) | Get user details for all self-service password reset activities. |

## Licenses

Usage reports are available for licensed features that leverage self-service password reset and MFA in your tenant.

## Next Steps

- To learn how to [deploy Azure Active Directory self-service password reset](https://docs.microsoft.com/azure/active-directory/authentication/howto-sspr-deployment).
- To learn how to deploy [Azure Active Directory MFA](https://docs.microsoft.com/azure/active-directory/authentication/howto-mfa-getstarted).
- To learn how to enable [combined security info registration](https://docs.microsoft.com/azure/active-directory/authentication/howto-registration-mfa-sspr-combined).



