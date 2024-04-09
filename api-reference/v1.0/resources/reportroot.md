---
title: "reportRoot resource type"
description: "Represents a container for Microsoft Entra reporting resources."
author: "kvenkit"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

Represents a container for Microsoft Entra reporting resources.

## Methods

None.

## Properties

None.

## Relationships

| Relationship            | Type                                                                          | Description                                                        |
|:------------------------|:------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| authenticationMethods   | [authenticationMethodsRoot](../resources/authenticationmethodsroot.md)                            | Container for navigation properties for Microsoft Entra authentication methods resources.                                  |
| dailyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of daily print usage summaries, grouped by printer. | 
| dailyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of daily print usage summaries, grouped by user. |
| monthlyPrintUsageByPrinter | [printUsageByPrinter](../resources/printusagebyprinter.md) collection | Retrieve a list of monthly print usage summaries, grouped by printer. |
| monthlyPrintUsageByUser | [printUsageByUser](../resources/printusagebyuser.md) collection | Retrieve a list of monthly print usage summaries, grouped by user. |
| security | [securityReportsRoot](../resources/securityreportsroot.md) | Represents an abstract type that contains resources for attack simulation and training reports.  |
| partners | [partners](../resources/partners.md) | Represents billing details for a Microsoft direct partner. |

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
