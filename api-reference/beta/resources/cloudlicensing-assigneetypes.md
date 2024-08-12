---
title: "assigneeTypes enum type"
description: "Flag enum representing the possible values of Assignee Types for Microsoft Cloud Licensing."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# assigneeTypes enum type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A set of flags identifying the types of directory objects that a service can be assigned to.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No flags are enabled; this service cannot be assigned.|
|user|1|If enabled, this service can be assigned directly to users.|
|group|2|If enabled, this service can be assigned to groups.|
|device|4|If enabled, this service can be assigned directly to devices.|
|unknownFutureValue|8|A placeholder value for future states.|
