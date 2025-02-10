---
title: "Call settings resource type"
description: "Contains information about a call settings resource."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 02/01/2025
---

# callSettings resource type

Namespace: microsoft.graph.callSettings

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the available call settings.

## Methods

| Operation                                          |  Return Type                                                 |  Description                              |
|--------------------------                          |--------------------------------------------------------------|-------------------------------------------|
| [List All Delegates](../api/calldelegate-list.md)  |  [delegate](../resources/delegationsettings.md) collection   | Retrieve all delegates for a user         |
| [Get Delegate by ID](../api/calldelegate-get.md)   |  [delegate](../resources/delegationsettings.md)              | Fetch details of a specific delegate      |
| [List All Delegators](../api/calldelegator-list.md)|  [delegator](../resources/delegationsettings.md) collection  | Retrieve all delegators for a user        |
| [Get Delegator by ID](../api/calldelegator-get.md) |  [delegator](../resources/delegationsettings.md)             | Fetch details of a specific delegator     |

