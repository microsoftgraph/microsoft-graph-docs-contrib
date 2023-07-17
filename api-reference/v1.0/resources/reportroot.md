---
title: "reportRoot resource type"
description: "Represents a container for Azure Active Directory (Azure AD) reporting resources."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

Represents a container for Azure Active Directory (Azure AD) reporting resources.

## Methods

| Method                                                                                                | Return type                                                                                       | Description                                                                                                                                       |
| :---------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------ |
| [List userRegistrationDetails](../api/authenticationmethodsroot-list-userregistrationdetails.md)               | [userRegistrationDetails](../resources/userregistrationdetails.md) collection               | Get the state of authentication methods of all users in the tenant. |
| [Get userRegistrationDetails](../api/userregistrationdetails-get.md) | [userRegistrationDetails](../resources/userregistrationdetails.md) collection               | Get the state of authentication methods of a user in the tenant. |

## Properties

None.

## Relationships

| Relationship            | Type                                                                          | Description                                                        |
|:------------------------|:------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| authenticationMethods   | [authenticationMethodsRoot](../resources/authenticationmethodsroot.md)                            | Container for navigation properties for Azure AD authentication methods resources.                                  |
| dailyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of daily print usage summaries, grouped by printer. | 
| dailyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of daily print usage summaries, grouped by user. |
| monthlyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of monthly print usage summaries, grouped by printer. |
| monthlyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of monthly print usage summaries, grouped by user. |
| security | [securityReportsRoot](../resources/securityreportsroot.md) | Represents an abstract type that contains resources for attack simulation and training reports.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.reportRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```
