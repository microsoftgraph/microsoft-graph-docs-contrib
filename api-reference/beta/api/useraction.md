---
title: "useraction Resource"
description: "Details for useraction Resource Type”
author: "degoh"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

### userAction enum
| Property	   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 | Default value. This is the value on a message when the user has not taken an action on the message blocked by DLP. |
| Override | 1 | Sender has overridden the message verdict and sent the message anyway.|
| ReportFalsePositive | 2 | Sender has reported the message verdict to the admins as a false positive.|

>**Note:** When the **verdictDetails** enum has `AllowFalsePositiveOverride` as one of the flags and the user reports the message as a false positive, the user action will be set to `Override, ReportFalsePositive`.
