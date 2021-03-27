---
title: "resourcespecificpermissiongrant resource type"
description: "A resource specific permission grant specifies the permission a specific Azure AD app has"
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# resourceSpecificGrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resourceSpecificGrant declares the specific permission that has been granted to a specific AzureAD app for a specific instance of a resource in Microsoft Graph..


## Methods

|  Method       |  Return Type  | Description| 
|:---------------|:--------|:----------|
|[List permission grants in a chat](../api/chat-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that have been granted on a specific chat.|


## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
| id| String| The chat's unique identifier. Read-only.|
| deletedDateTime| dateTimeOffset|  Not used.|
| clientId| string|  ID of the AAD app that has been granted access. Read-only.|
| clientAppId| string| ID of the service principal of the AAD app that has been granted access. Read-only.|
| resourceAppId| string|  ID of the AzureAD app that is hosting the resource. Read-only.|
| permissionType| string|  The type of permission. Possible values are: `Application`,`Delegated`. Read-only.|
| permission| string|  The name of the permission. Read-only.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceSpecificPermissionGrant"
}-->

```json
{
  "id": "string (identifier)",
  "deletedDateTime": "dateTimeOffset",
  "clientId": "string",
  "clientAppId": "string",
  "resourceAppId": "string",
  "permissionType": "string",
  "permission": "string"
}
```


