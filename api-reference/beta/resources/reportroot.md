---
title: "reportRoot resource type"
description: "Represents a container for Microsoft Entra ID reporting resources."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for Microsoft Entra ID reporting resources.

## Methods

None.

## Properties
None.

## Relationships
| Relationship                      | Type                                                                                              | Description                                                                                                         |
| :-------------------------------- | :------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------ |
| appCredentialSignInActivities     | [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) collection             | Represents a collection of sign-in activities of application credentials.                                             |
| applicationSignInDetailedSummary  | [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) collection   | Represents a detailed summary of an application sign-in.                                                            |
| authenticationMethods             | [authenticationMethodsRoot](../resources/authenticationmethodsroot.md)                            | Container for navigation properties for Microsoft Entra authentication methods resources.                                  |
| credentialUserRegistrationDetails | [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) collection | Details of the usage of self-service password reset and multifactor authentication (MFA) for all registered users. |
| dailyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of daily print usage summaries, grouped by printer. | 
| dailyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of daily print usage summaries, grouped by user. |
| monthlyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of monthly print usage summaries, grouped by printer. |
| monthlyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of monthly print usage summaries, grouped by user. |
| partners | [partners](../resources/partners.md) | Represents billing details for a Microsoft direct partner. |
| security                          | [securityReportsRoot](../resources/securityreportsroot.md)                                        | Provides the ability to launch a simulated phishing attack that organizations can learn from.             |
| servicePrincipalSignInActivities  | [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) collection       | Represents a collection of sign-in activities of service principals.                                                   |
| serviceActivity                               | [serviceActivity](../resources/serviceactivity.md)                            | Reports that relate to tenant-level authentication activities in Microsoft Entra.                                                            |
| sla                               | [serviceLevelAgreementRoot](../resources/servicelevelagreementroot.md)                            | Reports that relate to tenant-level Microsoft Entra SLA attainment.                                                            |
| userCredentialUsageDetails        | [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) collection               | Represents the self-service password reset (SSPR) usage for a given tenant.                                         |
|userInsights|[userInsightsRoot](../resources/userinsightsroot.md)|Represents a collection of user activities on applications in a tenant that is configured for Microsoft Entra External ID for customers.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```
