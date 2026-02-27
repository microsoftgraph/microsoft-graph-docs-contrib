---
title: "auditActivityInitiator resource type"
description: "Identifies the resource object that initiates the activity. The initiator can be a user, an app, or a system (which is considered as an app)."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# auditActivityInitiator resource type

Namespace: microsoft.graph

Identity the resource object that initiates the activity. The initiator can be a user, an app, or a system (which is considered an app). For more information, see [Linkable identifiers in Microsoft Entra](/entra/identity/authentication/how-to-authentication-track-linkable-identifiers).

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|app|[appIdentity](appidentity.md)|If the resource initiating the activity is an app, this property indicates all the app related information like **appId** and name.|
|user|[userIdentity](useridentity.md)|If the resource initiating the activity is a user, this property Indicates all the user related information like user ID and **userPrincipalName**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.auditActivityInitiator"
}-->

```json
{
  "app": {"@odata.type": "microsoft.graph.appIdentity"},
  "user": {"@odata.type": "microsoft.graph.userIdentity"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "auditActivityInitiator resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

