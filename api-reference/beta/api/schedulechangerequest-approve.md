---
title: "scheduleChangeRequest: approve"
description: "Approve an scheduleChangeRequest object for a user."
author: lemikeshifts
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# scheduleChangeRequest: approve

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Approve a [scheduleChangeRequest](../resources/schedulechangerequest.md) object.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|message|String|Custom message sent on approval. Optional.|

## Response

If successful, this action returns a `204 No Content` response code.
