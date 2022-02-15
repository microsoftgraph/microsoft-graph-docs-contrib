---
title: "resourceSpecificPermission resource type"
description: "Resource-specific permissions can be used to access specific instances of a resource."
author: "phsignor"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# resourceSpecificPermission resource type

Namespace: microsoft.graph

Resource-specific application permissions are permissions used to authorize an appliation for direct access to data for a specific instance of resource, such as a chat or team. For example, the resource-specific permission ChannelMessage.Read.Group allows a Teams app to read the channel messages for a single team. 

Currently, resource-specific permissions are only supported for Teams apps accessing to specific chats and teams using the Microsoft Graph API. See [Resource-specific consent for Teams apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) for more details.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description describing the level of access that the resource-specific permission represents.|
|displayName|String|The display name for the resource-specific permission.|
|id|Guid|The unique identifier for the resource-specific application permission.|
|isEnabled|Boolean|Whether the permission is enabled.|
|value|String|The value for the permission.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceSpecificPermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceSpecificPermission",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "value": "String"
}
```
