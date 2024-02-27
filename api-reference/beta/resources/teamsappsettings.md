---
title: "teamsAppSettings resource type"
description: "Represents tenant-wide settings for all Microsoft Teams apps in a tenant."
author: "subray2014"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings for all [Microsoft Teams apps](teamsapp.md) in a tenant.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get teamsAppSettings](../api/teamsappsettings-get.md)|[teamsAppSettings](../resources/teamsappsettings.md)|Get the tenant-wide settings for all Teams apps in the tenant.|
|[Update teamsAppSettings](../api/teamsappsettings-update.md)|[teamsAppSettings](../resources/teamsappsettings.md)|Update the tenant-wide settings for all Teams apps in the tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowUserRequestsForAppAccess|Boolean|Indicates whether users are allowed to request access to the unavailable Teams apps.|
|id|String|Unique identifier for the **teamsAppSettings** object. Inherited from [entity](../resources/entity.md).|
|isChatResourceSpecificConsentEnabled|Boolean|Indicates whether resource-specific consent for chats/meetings has been enabled for the tenant. `True` indicates that Teams apps that are allowed in the tenant and require resource-specific permissions can be installed inside chats and meetings. `False` blocks the installation of any Teams app that requires resource-specific permissions in a chat or a meeting.|
|isUserPersonalScopeResourceSpecificConsentEnabled|Boolean|Indicates whether resource-specific consent for personal scope in Teams apps has been enabled for the tenant. `True` indicates that Teams apps that are allowed in the tenant and require resource-specific permissions can be installed in the personal scope. `False` blocks the installation of any Teams app that requires resource-specific permissions in the personal scope.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAppSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppSettings",
  "allowUserRequestsForAppAccess": "Boolean",
  "id": "String (identifier)",
  "isChatResourceSpecificConsentEnabled": "Boolean",
  "isUserPersonalScopeResourceSpecificConsentEnabled": "Boolean"
}
```

## Related content

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
