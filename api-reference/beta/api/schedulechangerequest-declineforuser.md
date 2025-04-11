---
title: "scheduleChangeRequest: declineForUser"
description: "Decline a scheduleChangeRequest object for a user."
author: lemikeshifts
ms.date: 03/31/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# scheduleChangeRequest: declineForUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Decline a [scheduleChangeRequest](../resources/schedulechangerequest.md) object for a user. This action only supports application permissions.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|message|String|Custom message sent on decline. Optional.|
|userId|String|ID of the user that declined the request.|

## Response

If successful, this action returns a `204 No Content` response code.