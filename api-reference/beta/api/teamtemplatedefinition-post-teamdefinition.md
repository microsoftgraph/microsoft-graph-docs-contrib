---
title: "Create team"
description: "Create a new team object."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "Teamwork"
doc_type: apiPageType
---

# Create team
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new team object.

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
POST /teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}/teamDefinition
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [team](../resources/team.md) object.

You can specify the following properties when creating a **team**.

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|internalId|String|**TODO: Add Description** Optional.|
|classification|String|**TODO: Add Description** Optional.|
|specialization|teamSpecialization|**TODO: Add Description**. The possible values are: `none`, `educationStandard`, `educationClass`, `educationProfessionalLearningCommunity`, `educationStaff`, `healthcareStandard`, `healthcareCareCoordination`, `unknownFutureValue`. Optional.|
|visibility|teamVisibilityType|**TODO: Add Description**. The possible values are: `private`, `public`, `hiddenMembership`, `unknownFutureValue`. Optional.|
|webUrl|String|**TODO: Add Description** Optional.|
|memberSettings|[teamMemberSettings](../resources/teammembersettings.md)|**TODO: Add Description** Optional.|
|guestSettings|[teamGuestSettings](../resources/teamguestsettings.md)|**TODO: Add Description** Optional.|
|messagingSettings|[teamMessagingSettings](../resources/teammessagingsettings.md)|**TODO: Add Description** Optional.|
|funSettings|[teamFunSettings](../resources/teamfunsettings.md)|**TODO: Add Description** Optional.|
|discoverySettings|[teamDiscoverySettings](../resources/teamdiscoverysettings.md)|**TODO: Add Description** Optional.|
|isArchived|Boolean|**TODO: Add Description** Optional.|
|summary|[teamSummary](../resources/teamsummary.md)|**TODO: Add Description** Optional.|
|tenantId|String|**TODO: Add Description** Optional.|
|isMembershipLimitedToOwners|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [team](../resources/team.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_team_from_teams"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}/teamDefinition
Content-Type: application/json
Content-length: 845

{
  "@odata.type": "#microsoft.graph.team",
  "displayName": "String",
  "description": "String",
  "internalId": "String",
  "classification": "String",
  "specialization": "String",
  "visibility": "String",
  "webUrl": "String",
  "memberSettings": {
    "@odata.type": "microsoft.graph.teamMemberSettings"
  },
  "guestSettings": {
    "@odata.type": "microsoft.graph.teamGuestSettings"
  },
  "messagingSettings": {
    "@odata.type": "microsoft.graph.teamMessagingSettings"
  },
  "funSettings": {
    "@odata.type": "microsoft.graph.teamFunSettings"
  },
  "discoverySettings": {
    "@odata.type": "microsoft.graph.teamDiscoverySettings"
  },
  "isArchived": "Boolean",
  "summary": {
    "@odata.type": "microsoft.graph.teamSummary"
  },
  "tenantId": "String",
  "isMembershipLimitedToOwners": "Boolean"
}
```


### Response
The following is an example of the response
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
  "id": "097fc3aa-a113-6c36-da4e-11ba9a9c600c",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "internalId": "String",
  "classification": "String",
  "specialization": "String",
  "visibility": "String",
  "webUrl": "String",
  "memberSettings": {
    "@odata.type": "microsoft.graph.teamMemberSettings"
  },
  "guestSettings": {
    "@odata.type": "microsoft.graph.teamGuestSettings"
  },
  "messagingSettings": {
    "@odata.type": "microsoft.graph.teamMessagingSettings"
  },
  "funSettings": {
    "@odata.type": "microsoft.graph.teamFunSettings"
  },
  "discoverySettings": {
    "@odata.type": "microsoft.graph.teamDiscoverySettings"
  },
  "isArchived": "Boolean",
  "summary": {
    "@odata.type": "microsoft.graph.teamSummary"
  },
  "tenantId": "String",
  "isMembershipLimitedToOwners": "Boolean"
}
```

