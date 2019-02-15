---
title: "verdictdetails Resource"
description: "Details for verdictdetails Resource Type”
author: "degoh"
localization_priority: Normal
ms.prod: "microsoft-teams"
---
### verdictDetails enum

| Property	   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 |  User is not allowed to override the message. User is not allowed to report a message as false positive if policyTip is not provided. In all other scenarios, user can report a message as false positive.|
| AllowFalsePositiveOverride | 1 |  User is not allowed to explicitly override the block unless this is combined with ```AllowOverrideWithoutJustification``` or ```AllowOverrideWithJustification``` flags. Reporting a false positive on the violation automatically overrides the block and sends the message. |
| AllowOverrideWithoutJustification | 2 | User is allowed to override the block and send the message. Justification text is not required. Exclusive to ```AllowOverrideWithJustification```. |
| AllowOverrideWithJustification | 4 |  User is allowed to override the block and send the message. Justification text is required. Exclusive to ```AllowOverrideWithoutJustification```. |
