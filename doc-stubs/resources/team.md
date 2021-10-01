---
title: "team resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# team resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teams](../api/team-list.md)|[team](../resources/team.md) collection|Get a list of the [team](../resources/team.md) objects and their properties.|
|[Create team](../api/team-post-teams.md)|[team](../resources/team.md)|Create a new [team](../resources/team.md) object.|
|[Get team](../api/team-get.md)|[team](../resources/team.md)|Read the properties and relationships of a [team](../resources/team.md) object.|
|[Update team](../api/team-update.md)|[team](../resources/team.md)|Update the properties of a [team](../resources/team.md) object.|
|[Delete team](../api/team-delete.md)|None|Deletes a [team](../resources/team.md) object.|
|[sendActivityNotification](../api/team-sendactivitynotification.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|discoverySettings|[teamDiscoverySettings](../resources/teamdiscoverysettings.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|funSettings|[teamFunSettings](../resources/teamfunsettings.md)|**TODO: Add Description**|
|guestSettings|[teamGuestSettings](../resources/teamguestsettings.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|internalId|String|**TODO: Add Description**|
|isArchived|Boolean|**TODO: Add Description**|
|isMembershipLimitedToOwners|Boolean|**TODO: Add Description**|
|memberSettings|[teamMemberSettings](../resources/teammembersettings.md)|**TODO: Add Description**|
|messagingSettings|[teamMessagingSettings](../resources/teammessagingsettings.md)|**TODO: Add Description**|
|specialization|teamSpecialization|**TODO: Add Description**. The possible values are: `none`, `educationStandard`, `educationClass`, `educationProfessionalLearningCommunity`, `educationStaff`, `healthcareStandard`, `healthcareCareCoordination`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description**|
|visibility|teamVisibilityType|**TODO: Add Description**. The possible values are: `private`, `public`, `hiddenMembership`, `unknownFutureValue`.|
|webUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|allChannels|[channel](../resources/channel.md) collection|**TODO: Add Description**|
|channels|[channel](../resources/channel.md) collection|**TODO: Add Description**|
|group|[group](../resources/group.md)|**TODO: Add Description**|
|incomingChannels|[channel](../resources/channel.md) collection|**TODO: Add Description**|
|installedApps|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|**TODO: Add Description**|
|members|[conversationMember](../resources/conversationmember.md) collection|**TODO: Add Description**|
|operations|[teamsAsyncOperation](../resources/teamsasyncoperation.md) collection|**TODO: Add Description**|
|owners|[user](../resources/user.md) collection|**TODO: Add Description**|
|permissionGrants|[resourceSpecificPermissionGrant](../resources/resourcespecificpermissiongrant.md) collection|**TODO: Add Description**|
|photo|[profilePhoto](../resources/profilephoto.md)|**TODO: Add Description**|
|primaryChannel|[channel](../resources/channel.md)|**TODO: Add Description**|
|schedule|[schedule](../resources/schedule.md)|**TODO: Add Description**|
|tags|[teamworkTag](../resources/teamworktag.md) collection|**TODO: Add Description**|
|template|[teamsTemplate](../resources/teamstemplate.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.team",
  "id": "String (identifier)",
  "classification": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "discoverySettings": {
    "@odata.type": "microsoft.graph.teamDiscoverySettings"
  },
  "displayName": "String",
  "funSettings": {
    "@odata.type": "microsoft.graph.teamFunSettings"
  },
  "guestSettings": {
    "@odata.type": "microsoft.graph.teamGuestSettings"
  },
  "internalId": "String",
  "isArchived": "Boolean",
  "isMembershipLimitedToOwners": "Boolean",
  "memberSettings": {
    "@odata.type": "microsoft.graph.teamMemberSettings"
  },
  "messagingSettings": {
    "@odata.type": "microsoft.graph.teamMessagingSettings"
  },
  "specialization": "String",
  "tenantId": "String",
  "visibility": "String",
  "webUrl": "String"
}
```

