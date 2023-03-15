---
title: "learning course activity progress status"
description: "status is new enum introdcued for tracking the course progress status in course activity entity"
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: enumPageType
---

# courseStatus enum type

Namespace: microsoft.graph

Represents status of a course activity. Values are (notStarted/inProgress/completed).

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **courseStatus** resource specifies the course progress of a course activity.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notStarted|0|status of the course activity when user not started consumption.|
|inProgress|1|status of the course activity when user started consuming the course.|
|completed|2|status of the course activity when user completed consuming the course.|