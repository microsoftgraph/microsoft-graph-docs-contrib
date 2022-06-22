---
title: "preAuthorizedApplication resource type"
description: "Lists the pre-authorized client applications"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "applications"
author: "psignoret"
---

# preAuthorizedApplication resource type

Namespace: microsoft.graph

Lists the client applications that are pre-authorized with the specified permissions to access this application's APIs. Users are not required to consent to any pre-authorized application (for the permissions specified). However, any additional permissions not listed in preAuthorizedApplications (requested through incremental consent for example) will require user consent.

In some rare cases, an identifier listed in the `delegatedPermissionIds` property may actually identify an [app role](approle.md) (from the service principal's `appRoles` property), indicating that the client application identified by the `appId` property has been pre-authorized for that app role.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|appId|String| The unique identifier for the application. |
|delegatedPermissionIds|String collection| The unique identifier for the [oauth2PermissionScopes](permissionscope.md) the application requires. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.preAuthorizedApplication"
}-->

```json
{
  "appId": "String",
  "delegatedPermissionIds": ["String"]
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "preAuthorizedApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

