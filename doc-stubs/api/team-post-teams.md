---
title: "Create team"
description: "Create a new team object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create team
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [team](../resources/team.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [team](../resources/team.md) object.

The following table shows the properties that are required when you create the [team](../resources/team.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|classification|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|discoverySettings|[teamDiscoverySettings](../resources/teamdiscoverysettings.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|funSettings|[teamFunSettings](../resources/teamfunsettings.md)|**TODO: Add Description**|
|guestSettings|[teamGuestSettings](../resources/teamguestsettings.md)|**TODO: Add Description**|
|internalId|String|**TODO: Add Description**|
|isArchived|Boolean|**TODO: Add Description**|
|isMembershipLimitedToOwners|Boolean|**TODO: Add Description**|
|memberSettings|[teamMemberSettings](../resources/teammembersettings.md)|**TODO: Add Description**|
|messagingSettings|[teamMessagingSettings](../resources/teammessagingsettings.md)|**TODO: Add Description**|
|specialization|teamSpecialization|**TODO: Add Description**. The possible values are: `none`, `educationStandard`, `educationClass`, `educationProfessionalLearningCommunity`, `educationStaff`, `healthcareStandard`, `healthcareCareCoordination`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description**|
|visibility|teamVisibilityType|**TODO: Add Description**. The possible values are: `private`, `public`, `hiddenMembership`, `unknownFutureValue`.|
|webUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [team](../resources/team.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_team_from_teams"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams
Content-Type: application/json
Content-length: 773

{
  "@odata.type": "#microsoft.graph.team",
  "classification": "String",
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


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.team",
  "id": "f1842e19-2e19-f184-192e-84f1192e84f1",
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

